# _*_ encoding:utf-8 _*_
import xadmin

from .models import CityDict, CourseOrg, Teacher


class CityDictAdmin(object):
    list_display = ['name', 'desc', 'add_time']
    search_fields = ['name', 'desc']
    list_filter = ['name', 'desc', 'add_time']
    model_icon = 'fa fa-building-o'


class CourseOrgAdmin(object):
    list_display = ['name', 'desc', 'category', 'click_nums', 'fav_nums',
                    'add_time']
    search_fields = ['name', 'desc', 'category', 'click_nums', 'fav_nums']
    list_filter = ['name', 'desc', 'category', 'click_nums', 'fav_nums',
                   'city__name', 'address', 'add_time']
    relfield_style = 'fk-ajax'
    style_fields = {"desc": "ueditor"}
    model_icon = 'fa fa-university'


class TeacherAdmin(object):
    list_display = ['name', 'org', 'work_years', 'work_company', 'add_time']
    search_fields = ['org', 'name', 'work_years', 'work_company']
    list_filter = ['org__name', 'name', 'work_years', 'work_company',
                   'click_nums', 'fav_nums', 'add_time']
    model_icon = 'fa fa-user-md'


xadmin.site.register(CityDict, CityDictAdmin)
xadmin.site.register(CourseOrg, CourseOrgAdmin)
xadmin.site.register(Teacher, TeacherAdmin)
