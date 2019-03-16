# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2019-03-15 06:45
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ybw', '0011_auto_20190315_0330'),
    ]

    operations = [
        migrations.CreateModel(
            name='Shop',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('img', models.CharField(max_length=100)),
                ('shop', models.CharField(max_length=40)),
                ('price', models.CharField(max_length=40)),
                ('old_price', models.CharField(max_length=40)),
                ('discount', models.CharField(max_length=20)),
                ('cart', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'Shop',
            },
        ),
    ]
