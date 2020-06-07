from django.shortcuts import render, redirect
from django.views.decorators.csrf import csrf_exempt
from consume.models import consume_info
from personal_info.models import personal_info
from .models import Product
from django.http.response import HttpResponse, HttpResponseRedirect
from .models import OrderInfo, OrderGoods
import time

@csrf_exempt
def products(request):
    '''添加到购物车，获取商品id，存到cookie里
        商品id:数量
    '''
    products = Product.objects.all()
    cart_goods_list = []
    cart_goods_count = 0
    for goods_id, goods_num in request.COOKIES.items():
        # 判断商品id都是数字
        if not goods_id.isdigit():
            continue
        # 获取当前遍历到的商品对象
        cart_goods = Product.objects.get(id=goods_id)
        cart_goods.goods_num = goods_num
        # 存到列表里
        cart_goods_list.append(cart_goods)
        cart_goods_count += int(goods_num)
    return render(request, 'products_info.html', {'cart_goods_list': cart_goods_list,
                                                  'cart_goods_count': cart_goods_count,
                                                  'products': products})


def add_cart(request):
    # 获取物品id
    goods_id = request.GET.get('id', '')
    if goods_id:
        prev_url = request.META['HTTP_REFERER']
        response = redirect(prev_url)
        goods_count = request.COOKIES.get(goods_id)
        if goods_count:
            goods_count = int(goods_count) + 1
        else:
            goods_count = 1
        # 将id存入cookie
        response.set_cookie(goods_id, goods_count)
    return response


def my_cart(request):
    cart_goods_list = []
    cart_goods_count = 0
    cart_goods_money = 0
    # 从cookies获取数据
    for goods_id, goods_num in request.COOKIES.items():
        # 判断商品id都是数字
        if not goods_id.isdigit():
            continue
        # 获取当前遍历到的商品对象
        cart_goods = Product.objects.get(id=goods_id)
        cart_goods.goods_num = goods_num
        # 当前商品价格总和
        cart_goods.total_money = int(goods_num)*cart_goods.price
        # 存到列表里
        cart_goods_list.append(cart_goods)
        cart_goods_count += int(goods_num)
        cart_goods_money += cart_goods.total_money
    return render(request, 'cart.html', {'cart_goods_list': cart_goods_list,
                                         'cart_goods_count': cart_goods_count,
                                         'cart_goods_money': cart_goods_money})


def remove_cart(request):
    # 获取删除的商品的id
    goods_id = request.GET.get('id', '')
    if goods_id:
        prev_url = request.META['HTTP_REFERER']
        response = redirect(prev_url)
        goods_count = request.COOKIES.get(goods_id, '')
        if goods_count:
            response.delete_cookie(goods_id)
    return response

@csrf_exempt
def pay_order(request):
    cart_goods_list = []
    cart_goods_count = 0
    cart_goods_money = 0
    for goods_id, goods_num in request.COOKIES.items():
        if not goods_id.isdigit():
            continue
        cart_goods = Product.objects.get(id=goods_id)
        cart_goods.goods_num = goods_num
        cart_goods.total_money = int(goods_num) * cart_goods.price
        cart_goods_list.append(cart_goods)
        cart_goods_count += int(goods_num)
        cart_goods_money += cart_goods.total_money
    return render(request, 'pay_cart.html', {'cart_goods_list': cart_goods_list,
                                             'cart_goods_money': cart_goods_money,
                                             'cart_goods_count': cart_goods_count})

@csrf_exempt
def submit_order(request):
    order_name = request.POST.get('name', '')
    order_phone = request.POST.get('phone', '')
    order_extra = request.POST.get('extra', '')
    # 实例化
    order_info = OrderInfo()
    order_info.name = order_name
    order_info.phone = order_phone
    order_info.extra = order_extra
    # 生成订单编号
    order_info.order_id = str(time.time() * 1000) + str(time.clock() * 1000000)
    # 保存到数据库
    order_info.save()
    response = redirect('/products/submit_success/?id=%s' % order_info.order_id)
    # 遍历购物车数据，生成order_goods对象
    for goods_id, goods_num in request.COOKIES.items():
        if not goods_id.isdigit():
            continue
        cart_goods = Product.objects.get(id=goods_id)
        order_goods = OrderGoods()
        order_goods.goods_info = cart_goods
        order_goods.goods_num = goods_num
        order_goods.goods_order = order_info
        order_goods.save()
        # 需要减少相应的库存量，1、获取当前商品
        cart_goods = Product.objects.get(id=goods_id)
        # 2、计算购买之前的库存
        old_stock = cart_goods.stock
        # 3、更新库存
        cart_goods.stock = int(old_stock) - int(goods_num)
        cart_goods.save()
        # 需要更新消费信息1、获取当前消费者信息
        # 2、新建消费信息
        consume_info.objects.create(name=order_name, detail="购买商品",
                                    money=cart_goods.price)
        # 将cookie中文件删除
        response.delete_cookie(goods_id)
    return response

def submit_success(request):
    # 获取传来的订单号
    order_id = request.GET.get('id')
    order_info = OrderInfo.objects.get(order_id=order_id)
    order_goods_list = OrderGoods.objects.filter(goods_order=order_info)
    total_money = 0
    total_num = 0
    for goods in order_goods_list:
        # 商品价格小计
        goods.total_money = goods.goods_info.price * goods.goods_num
        total_money += goods.total_money
        total_num += goods.goods_num
    # 需要更改个人余额信息
    personal_new = personal_info.objects.get(id=1)
    personal_new.money = personal_new.money - total_money
    personal_new.save()
    return render(request, 'success.html', {'orderinfo': order_info,
                                            'order_goods_list': order_goods_list,
                                            'total_money': total_money,
                                            'total_num': total_num})
