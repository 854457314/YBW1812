# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2019-03-15 03:00
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ybw', '0008_remove_detail_name'),
    ]

    operations = [
        migrations.AddField(
            model_name='detail',
            name='img',
            field=models.CharField(default=1, max_length=100),
            preserve_default=False,
        ),
    ]
