from django.db import models

# Create your models here.

# 消费信息表
class consume_info(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=20)
    detail = models.CharField(max_length=50)
    money = models.IntegerField()
