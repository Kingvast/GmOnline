# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2018-10-05 22:13
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0007_auto_20181005_0042'),
    ]

    operations = [
        migrations.RenameField(
            model_name='course',
            old_name='youneed_know',
            new_name='you_need_know',
        ),
    ]
