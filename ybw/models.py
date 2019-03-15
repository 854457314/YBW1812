from django.db import models

# Create your models here.

# 轮播模型
class Swiper(models.Model):
    img = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    trackid = models.CharField(max_length=10)

    class Meta:
        db_table = 'swiper'


class Swiper1(models.Model):
    img = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    trackid = models.CharField(max_length=10)

    class Meta:
        db_table = 'swiper1'

