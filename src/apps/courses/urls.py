# -*- coding: utf-8 -*-
from django.conf.urls import url

from .views import (AddCommentsView, CommentsView, CourseDetailView,
                    CourseInfoView, CourseListView, VideoPlayView)

urlpatterns = [
    # 课程列表页
    url(r'^list/$', CourseListView.as_view(), name='course_list'),

    # 课程详情页
    url(r'^detail/(?P<course_id>\d+)/$',
        CourseDetailView.as_view(),
        name='course_detail'),

    # 课程章节信息页
    url(r'^info/(?P<course_id>\d+)/$',
        CourseInfoView.as_view(),
        name='course_info'),

    # 课程评论
    url(r'^comment/(?P<course_id>\d+)/$',
        CommentsView.as_view(),
        name='course_comments'),

    # 添加课程评论
    url(r'^add_comment/$', AddCommentsView.as_view(), name='add_comment'),

    # 课程视频播放页
    url(r'^video/(?P<video_id>\d+)/$',
        VideoPlayView.as_view(),
        name='video_play'),
]
