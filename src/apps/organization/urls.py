# -*- coding: utf-8 -*-
from django.conf.urls import url
from .views import OrgView, AddUserAskView, OrgHomeView, OrgCourseView, \
    OrgDescView, OrgTeacherView, AddFavView, TeacherListView, TeacherDetailView

urlpatterns = [
    # 课程机构列表
    url(r'^list/$', OrgView.as_view(), name='org_list'),
    # 添加我要学习
    url(r'^add_ask/$', AddUserAskView.as_view(), name='add_ask'),
    # home页面，取纯数字
    url(r'^home/(?P<org_id>\d+)/$', OrgHomeView.as_view(), name="org_home"),
    # 课程
    url(r'^course/(?P<org_id>\d+)/$',
        OrgCourseView.as_view(),
        name='org_course'),
    # 机构描述
    url(r'^desc/(?P<org_id>\d+)/$', OrgDescView.as_view(), name='org_desc'),
    # 机构讲师
    url(r'^org_teacher/(?P<org_id>\d+)/$',
        OrgTeacherView.as_view(),
        name='org_teacher'),

    # 机构收藏
    url(r'^add_fav/$', AddFavView.as_view(), name='add_fav'),

    # 讲师列表
    url(r'^teacher/list/$', TeacherListView.as_view(), name='teacher_list'),

    # 讲师详情
    url(r'^teacher/detail/(?P<teacher_id>\d+)/$',
        TeacherDetailView.as_view(),
        name='teacher_detail'),
]
