"""
订票系统-数据库类型定义部分
使用数据库 mysql
--------------------------------
定义数据类型：1、订票类型 2、会员类型
"""

from django.utils import timezone
from django.db import models
from datetime import datetime


class Tickets(models.Model):
    name = models.CharField(max_length=30, verbose_name=u"电脑名称")
    num = models.CharField(default='K100', max_length=10, verbose_name=u"电脑编号")
    time = models.DateTimeField(verbose_name=u"预定时间", default=timezone.now())
    brief = models.TextField(max_length=300, verbose_name=u"预定信息")
    seats = models.IntegerField(default=0, verbose_name=u"剩余座位")
    CPU = models.CharField(max_length=10, default="Inter i5")
    Graphics = models.CharField(max_length=10, default="GTX1660")
    Memory = models.CharField(max_length=10, default="8G")
    Disk = models.CharField(max_length=10, default="256G SSD")
    money = models.IntegerField(default=10)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = "预定信息"
        verbose_name_plural = verbose_name


class Person(models.Model):
    name = models.CharField(max_length=10, verbose_name=u"用户名称")
    phone_number = models.CharField(max_length=11, verbose_name=u"电话号码")
    ticket_name = models.CharField(default=' ', max_length=30, verbose_name=u"预定名称")
    ticket_time = models.DateTimeField(default=timezone.now(), verbose_name=u"预定时间")
    ticket_money = models.IntegerField(default=10)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = "乘客信息"
        verbose_name_plural = verbose_name

