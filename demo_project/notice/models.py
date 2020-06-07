from django.db import models

# Create your models here.

class notice_info(models.Model):
    id = models.AutoField(primary_key=True)
    time = models.DateField()
    info = models.CharField(max_length=500)