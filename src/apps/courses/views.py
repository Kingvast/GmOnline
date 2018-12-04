# -*- coding: utf-8 -*-
from django.db.models import Q
from django.http import HttpResponse
from django.shortcuts import render
from django.views.generic import View
from operation.models import CourseComments, UserCourse, UserFavorite
from pure_pagination import EmptyPage, PageNotAnInteger, Paginator
from utils.mixin_utils import LoginRequiredMixin

from .models import Course, CourseResource, Video


# Create your views here.
class CourseListView(View):
    """
    课程列表页面
    """

    def get(self, request):
        # 以时间排序实现最新。-号代表降序排列
        all_courses = Course.objects.all().order_by('-add_time')

        # 热门课程推荐
        hot_courses = Course.objects.all().order_by('-click_nums')[:3]

        # 课程搜索
        search_keywords = request.GET.get('keywords', '')
        if search_keywords:
            all_courses = all_courses.filter(
                Q(name__icontains=search_keywords)
                | Q(desc__icontains=search_keywords)
                | Q(detail__icontains=search_keywords))

        # 课程排序
        sort = request.GET.get('sort', '')
        if sort:
            if sort == 'students':
                all_courses = all_courses.order_by('-students')
            elif sort == 'hot':
                all_courses = all_courses.order_by('-click_nums')

        # 对课程进行分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(all_courses, 12, request=request)

        courses = p.page(page)

        return render(
            request, 'course-list.html', {
                'all_courses': courses,
                'sort': sort,
                'hot_courses': hot_courses,
                'search_keywords': search_keywords
            })


class CourseDetailView(View):
    """
    课程详情页
    """

    def get(self, request, course_id):
        course = Course.objects.get(id=int(course_id))

        # 增加课程点击数
        course.click_nums += 1
        course.save()

        # 是否收藏课程
        has_fav_course = False
        # 是否收藏机构
        has_fav_org = False

        # 必须是用户已登录我们才需要判断
        if request.user.is_authenticated:
            if UserFavorite.objects.filter(
                    user=request.user, fav_id=course.id, fav_type=1):
                has_fav_course = True

            if UserFavorite.objects.filter(
                    user=request.user, fav_id=course.course_org.id,
                    fav_type=2):
                has_fav_org = True
        # 增加课程点击数
        course.click_nums += 1
        course.save()

        tag = course.tag
        if tag:
            # 需要从1开始不然会推荐自己
            relate_course = Course.objects.filter(tag=tag)[1:2]
        else:
            relate_course = []
        return render(
            request, 'course-detail.html', {
                'course': course,
                'relate_course': relate_course,
                'has_fav_course': has_fav_course,
                'has_fav_org': has_fav_org
            })


class CourseInfoView(LoginRequiredMixin, View):
    """
    课程章节信息页
    """

    def get(self, request, course_id):
        course = Course.objects.get(id=int(course_id))
        # 查询用户是否已经关联了该课程
        user_courses = UserCourse.objects.filter(
            user=request.user, course=course)
        if not user_courses:
            user_course = UserCourse(user=request.user, course=course)
            course.students += 1
            course.save()
            user_course.save()

        user_courses = UserCourse.objects.filter(course=course)
        user_ids = [user_course.user.id for user_course in user_courses]
        all_user_courses = UserCourse.objects.filter(user_id__in=user_ids)
        # 取出所有课程id
        course_ids = [
            user_course.course.id for user_course in all_user_courses
        ]
        # 获取学过该用户学过其他的所有课程
        relate_courses = Course.objects.filter(
            id__in=course_ids).order_by('-click_nums').exclude(
                id=course.id)[:5]
        all_resources = CourseResource.objects.filter(course=course)
        return render(
            request, 'course-video.html', {
                'course': course,
                'all_resources': all_resources,
                'relate_courses': relate_courses
            })


class CommentsView(LoginRequiredMixin, View):
    def get(self, request, course_id):
        course = Course.objects.get(id=int(course_id))
        all_resources = CourseResource.objects.filter(course=course)
        all_comments = CourseComments.objects.filter(
            course=course).order_by('-add_time')
        # 选出学了这门课的学生关系
        user_courses = UserCourse.objects.filter(course=course)
        # 从关系中取出user_id
        user_ids = [user_course.user_id for user_course in user_courses]
        # 这些用户学了的课程,外键会自动有id，取到字段
        all_user_courses = UserCourse.objects.filter(user_id__in=user_ids)
        # 取出所有课程id
        course_ids = [
            user_course.course_id for user_course in all_user_courses
        ]
        # 获取学过该课程用户学过的其他课程
        relate_courses = Course.objects.filter(
            id__in=course_ids).order_by('-click_nums').exclude(
                id=course.id)[:5]

        return render(
            request, 'course-comment.html', {
                'course': course,
                'all_resources': all_resources,
                'all_comments': all_comments,
                'relate_courses': relate_courses
            })


class AddCommentsView(View):
    """
    用户添加课程评论
    """

    def post(self, request):
        if not request.user.is_authenticated:
            # 判断用户登录状态
            return HttpResponse(
                '{"status":"fail", "msg":"用户未登录"}',
                content_type='application/json')

        course_id = request.POST.get('course_id', 0)
        comments = request.POST.get('comments', '')
        if int(course_id) > 0 and comments:
            course_comments = CourseComments()
            course = Course.objects.get(id=int(course_id))
            course_comments.course = course
            course_comments.comments = comments
            course_comments.user = request.user
            course_comments.save()
            return HttpResponse(
                '{"status":"success", "msg":"评论成功"}',
                content_type='application/json')
        else:
            return HttpResponse(
                '{"status":"fail", "msg":"评论失败"}',
                content_type='application/json')


class VideoPlayView(LoginRequiredMixin, View):
    """
    播放视频的view
    """

    def get(self, request, video_id):
        # 此处的id为表默认为我们添加的值。
        video = Video.objects.get(id=int(video_id))
        # 找到对应的course
        course = video.lesson.course
        # 查询用户是否开始学习了该课，如果还未学习则，加入用户课程表
        user_courses = UserCourse.objects.filter(
            user=request.user, course=course)
        if not user_courses:
            user_course = UserCourse(user=request.user, course=course)
            user_course.save()
        # 查询课程资源
        all_resources = CourseResource.objects.filter(course=course)
        # 选出学了这门课的学生关系
        user_courses = UserCourse.objects.filter(course=course)
        # 从关系中取出user_id
        user_ids = [user_course.user_id for user_course in user_courses]
        # 这些用户学了的课程,外键会自动有id，取到字段
        all_user_courses = UserCourse.objects.filter(user_id__in=user_ids)
        # 取出所有课程id
        course_ids = [
            user_course.course_id for user_course in all_user_courses
        ]
        # 获取学过该课程用户学过的其他课程
        relate_courses = Course.objects.filter(
            id__in=course_ids).order_by('-click_nums').exclude(
                id=course.id)[:4]
        # 是否收藏课程
        return render(
            request, 'course-play.html', {
                'course': course,
                'all_resources': all_resources,
                'relate_courses': relate_courses,
                'video': video,
            })
