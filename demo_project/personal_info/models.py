from django.db import models

# Create your models here.

# 个人信息以及充值表
class personal_info(models.Model):
    id = models.AutoField(primary_key=True)
    nickname = models.CharField(max_length=30)
    age = models.IntegerField()
    sex = models.CharField(max_length=10, default='male')
    money = models.IntegerField()
