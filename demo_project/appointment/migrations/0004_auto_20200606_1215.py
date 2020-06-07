# Generated by Django 3.0.3 on 2020-06-06 12:15

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('appointment', '0003_auto_20200606_1130'),
    ]

    operations = [
        migrations.AddField(
            model_name='tickets',
            name='CPU',
            field=models.CharField(default='Inter i5', max_length=10),
        ),
        migrations.AddField(
            model_name='tickets',
            name='Disk',
            field=models.CharField(default='256G SSD', max_length=10),
        ),
        migrations.AddField(
            model_name='tickets',
            name='Graphics',
            field=models.CharField(default='GTX1660', max_length=10),
        ),
        migrations.AddField(
            model_name='tickets',
            name='Memory',
            field=models.CharField(default='8G', max_length=10),
        ),
        migrations.AlterField(
            model_name='person',
            name='ticket_time',
            field=models.DateTimeField(default=datetime.datetime(2020, 6, 6, 12, 15, 27, 999765), verbose_name='购买车票时间'),
        ),
        migrations.AlterField(
            model_name='tickets',
            name='name',
            field=models.CharField(max_length=30, verbose_name='电脑名称'),
        ),
    ]