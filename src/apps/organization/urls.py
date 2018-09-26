# -*- coding: utf-8 -*-
from django.conf.urls import url
from .views import OrgView


urlpatterns = [
    url(r'^list/$', OrgView.as_view(), name='org_list'),
]
