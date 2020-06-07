from django.db import models

# Create your models here.

class comment_info(models.Model):
    id = models.AutoField(primary_key=True)
    info = models.CharField(max_length=200)
    date = models.DateField()
    nickname = models.CharField(max_length=50, default='user')

