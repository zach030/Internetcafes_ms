# Generated by Django 3.0.3 on 2020-06-06 21:01

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('appointment', '0007_auto_20200606_2059'),
    ]

    operations = [
        migrations.AlterField(
            model_name='person',
            name='ticket_time',
            field=models.DateTimeField(default=datetime.datetime(2020, 6, 6, 21, 1, 7, 201403), verbose_name='预定时间'),
        ),
    ]