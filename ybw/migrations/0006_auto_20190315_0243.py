# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2019-03-15 02:43
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('ybw', '0005_shop'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Shop',
            new_name='Detail',
        ),
        migrations.AlterModelTable(
            name='detail',
            table='detail',
        ),
    ]