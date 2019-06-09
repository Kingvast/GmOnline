# _*_ encoding:utf-8 _*_
from __future__ import unicode_literals

from datetime import datetime

from courses.models import Course
from django.db import models
from users.models import UserProfile


# Create your models here.
class UserAsk(models.Model):
    """
    用户我要学习
    """
    name = models.CharField(max_length=20, verbose_name=u'姓名')
    mobile = models.CharField(max_length=11, verbose_name=u'手机')
    course_name = models.CharField(max_length=50, verbose_name=u'课程名')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'用户咨询'
        verbose_name_plural = verbose_name

    def __str__(self):
        return '用户: {0} 手机号: {1}'.format(self.name, self.mobile)


class CourseComments(models.Model):
    """
    课程评论
    """
    user = models.ForeignKey(
        UserProfile, on_delete=models.CASCADE, verbose_name=u'用户')
    course = models.ForeignKey(
        Course, on_delete=models.CASCADE, verbose_name=u'课程')
    comments = models.CharField(max_length=200, verbose_name=u'评论')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'课程评论'
        verbose_name_plural = verbose_name

    def __str__(self):
        return '用户({0})对于《{1}》 评论 :'.format(self.user, self.course)


class UserFavorite(models.Model):
    """
    用户收藏（课程，机构，讲师）
    """
    user = models.ForeignKey(
        UserProfile, on_delete=models.CASCADE, verbose_name=u'用户')
    fav_id = models.IntegerField(default=0, verbose_name=u'数据id')
    fav_type = models.IntegerField(
        choices=((1, '课程'), (2, '课程机构'), (3, '讲师')),
        default=1,
        verbose_name=u'收藏类型')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'用户收藏'
        verbose_name_plural = verbose_name

    def __str__(self):
        return '用户({0})收藏了{1} '.format(self.user, self.fav_type)


class UserMessage(models.Model):
    """
    用户消息
    """
    user = models.IntegerField(default=0, verbose_name=u'接收用户')
    message = models.CharField(max_length=500, verbose_name=u'消息内容')
    has_read = models.BooleanField(default=False, verbose_name=u'是否已读')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'用户消息'
        verbose_name_plural = verbose_name

    def __str__(self):
        return '用户({0})接收了{1} '.format(self.user, self.message)


class UserCourse(models.Model):
    """
    用户课程
    """
    user = models.ForeignKey(
        UserProfile, on_delete=models.CASCADE, verbose_name=u'用户')
    course = models.ForeignKey(
        Course, on_delete=models.CASCADE, verbose_name=u'课程')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'用户课程'
        verbose_name_plural = verbose_name

    def __str__(self):
        return '用户({0})学习了{1} '.format(self.user, self.course)
