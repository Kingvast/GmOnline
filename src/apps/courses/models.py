# _*_ encoding:utf-8 _*_
from __future__ import unicode_literals
from datetime import datetime

from django.db import models
from organization.models import CourseOrg, Teacher
from DjangoUeditor.models import UEditorField


# Create your models here.
class Course(models.Model):
    """
    课程信息表
    """

    course_org = models.ForeignKey(CourseOrg, on_delete=models.CASCADE,
                                   verbose_name=u'课程机构', null=True,
                                   blank=True)
    name = models.CharField(max_length=50, verbose_name=u'课程名')
    desc = models.CharField(max_length=300, verbose_name=u'课程描述')
    detail = UEditorField(verbose_name=u'课程详情', width=600, height=300,
                          imagePath='courses/ueditor/',
                          filePath='courses/ueditor/', default='')
    is_banner = models.BooleanField(default=False, verbose_name=u'是否轮播')
    teacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, verbose_name=u'讲师', null=True,
                                blank=True)
    degree = models.CharField(
        verbose_name=u'难度',
        choices=(('cj', '初级'), ('zj', '中级'), ('gj', '高级')),
        max_length=2)
    learn_times = models.IntegerField(default=0, verbose_name=u'学习时长(分钟数)')
    students = models.IntegerField(default=0, verbose_name=u'学习人数')
    fav_nums = models.IntegerField(default=0, verbose_name=u'收藏人数')
    image = models.ImageField(
        upload_to='courses/%Y/%m', verbose_name=u'封面图', max_length=100)
    click_nums = models.IntegerField(default=0, verbose_name=u'点击数')
    category = models.CharField(default=u'前端开发', max_length=20,
                                verbose_name=u'课程类别')
    tag = models.CharField(default='', verbose_name=u'课程标签', max_length=10)
    you_need_know = models.CharField(default='', max_length=300,
                                     verbose_name=u'课程须知')
    teacher_tell = models.CharField(default='', max_length=300,
                                    verbose_name=u'老师告诉你')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'课程'
        verbose_name_plural = verbose_name

    def get_zj_nums(self):
        # 获取课程章节数
        return self.lesson_set.all().count()

    get_zj_nums.short_description = '章节数'

    def go_to(self):
        from django.utils.safestring import mark_safe
        # 如果不mark_safe。会对其进行转义
        return mark_safe("<a href='http://localhost:8000'>跳转</>")

    go_to.short_description = '跳转'

    def get_learn_users(self):
        return self.usercourse_set.all()[:5]

    def get_course_lesson(self):
        # 获取课程所有章节
        return self.lesson_set.all()

    def __str__(self):
        return self.name


class BannerCourse(Course):
    class Meta:
        verbose_name = '轮播课程'
        verbose_name_plural = verbose_name
        proxy = True


class Lesson(models.Model):
    """
    章节
    """

    # 因为一个课程对应很多章节。所以在章节表中将课程设置为外键
    # 作为一个字段来让我们可以知道这个章节对应那个课程
    course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name=u'课程')
    name = models.CharField(max_length=100, verbose_name=u'章节名')
    learn_times = models.IntegerField(default=0, verbose_name=u'学习时长(分钟数)')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'章节'
        verbose_name_plural = verbose_name

    def __str__(self):
        return '《{0}》课程的章节 >> {1}'.format(self.course, self.name)

    def get_lesson_video(self):
        # 获取章节视频
        return self.video_set.all()


class Video(models.Model):
    """
    每章视频
    """

    # 因为一个章节对应很多视频。所以在视频表中将章节设置为外键。
    # 作为一个字段来存储让我们可以知道这个视频对应哪个章节.
    lesson = models.ForeignKey(Lesson, on_delete=models.CASCADE, verbose_name=u'章节')
    name = models.CharField(max_length=100, verbose_name=u'视频名')
    learn_times = models.IntegerField(default=0, verbose_name=u'学习时长(分钟数)')
    url = models.CharField(max_length=200, default='', verbose_name=u'访问地址')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'视频'
        verbose_name_plural = verbose_name

    def __str__(self):
        return '{0}章节的视频 >> {1}'.format(self.lesson, self.name)


class CourseResource(models.Model):
    """
    课程资源
    """

    # 因为一个课程对应很多资源。所以在课程资源表中将课程设置为外键。
    # 作为一个字段来让我们可以知道这个资源对应那个课程
    course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name=u'课程')
    name = models.CharField(max_length=100, verbose_name=u'名称')
    download = models.FileField(
        upload_to='course/resource/%Y/%m',
        verbose_name=u'资源文件',
        max_length=100)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'课程资源'
        verbose_name_plural = verbose_name

    def __str__(self):
        return '《{0}》课程的资源: {1}'.format(self.course, self.name)
