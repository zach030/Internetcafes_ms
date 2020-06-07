from django.db import models

# 商品信息表
class Product(models.Model):
    name = models.CharField(max_length=100)
    price = models.FloatField()
    stock = models.IntegerField()
    image_url = models.CharField(max_length=2083)
    goods_num = models.IntegerField(default=0)
    total_money = models.CharField(max_length=100, default=0)

# 购物车信息表
# 订单信息模型
class OrderInfo(models.Model):
    order_id = models.CharField(max_length=100, default=0)
    name = models.CharField(max_length=100)
    price = models.FloatField()
    phone = models.CharField(max_length=15, default=0)
    extra = models.CharField(max_length=300, default=0)
    count = models.IntegerField(default=0)

# 订单商品模型
class OrderGoods(models.Model):
    goods_info = models.ForeignKey('Product', on_delete=models.CASCADE)
    goods_num = models.IntegerField()
    goods_order = models.ForeignKey('OrderInfo', on_delete=models.CASCADE)
