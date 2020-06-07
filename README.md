# Django NetBar Manage System

基于`python3.7`和`Django3.0`的网吧管理系统。

## 主要功能：

- 主要实现一个网吧管理系统基本的功能
- 用户可以查看网吧公告，管理员可在后台数据库添加公告
- 支持网吧机器预约，多类型机器可供选择，自主选择预约时间，也可取消预约订单。
- 支持用户的购买商品需求，现有购物车功能，可累加至购物车，并支持删除购物车中商品功能。
- 在消费信息表中可以查看当前用户的全部消费金额以及详情。
- 设置留言板功能，可发布留言，也可浏览所有留言，并可完成筛选查询。
- 个人资料栏可以修改用户信息，并可在此完成充值操作。

## 安装

本项目使用的依赖库放在`requirements.txt`

使用pip安装： `pip install -r requirements.txt`

### 配置

本项目的配置都是在 `setting.py` 中

部分配置文件，例如静态文件的位置和项目app的配置应适当变动

## 数据库配置

修改demo_project/setting.py` 修改数据库配置，如下所示：

```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'project',
        'USER': 'root',
        'PASSWORD': '991030',
        'HOST': '127.0.0.1',
        'PORT': '3306',
    }
}
```

### 创建数据库

本项目使用Django自带的orm框架，在app的`models.py`中建立数据表

然后终端下执行:

```
python manage.py makemigrations
python manage.py migrate
```

**注意：** 在使用 `python manage.py` 之前需要确定你系统中的 `python` 命令是指向 `python 3.6` 及以上版本的。如果不是如此，请使用以下两种方式中的一种：

- 修改 `manage.py` 第一行 `#!/usr/bin/env python` 为 `#!/usr/bin/env python3`
- 直接使用 `python3 manage.py makemigrations`

### 创建超级用户

终端下执行:

```
python manage.py createsuperuser
```

## 开始运行

执行： `python manage.py runserver`

浏览器打开: http://127.0.0.1:8000/ 就可以看到效果了。

## 界面设计

### 登陆界面

https://s1.ax1x.com/2020/06/07/tgW15d.md.png

### 管理系统首页

https://s1.ax1x.com/2020/06/07/tgWG8I.md.png

https://s1.ax1x.com/2020/06/07/tgWuDO.md.png

### 网吧公告

可输入查询关键词进行模糊查询

https://s1.ax1x.com/2020/06/07/tgWnKK.md.png

### 消费信息

展示当前用户的全部消费细节

https://s1.ax1x.com/2020/06/07/tgWev6.md.png

### 预定座位

可以选择座位，显示订单，可取消订单

https://s1.ax1x.com/2020/06/07/tgWlUH.md.png

https://s1.ax1x.com/2020/06/07/tgWQVe.md.png

### 个人信息

个人资料栏，可进行信息编辑和充值

https://s1.ax1x.com/2020/06/07/tgWKbD.md.png

### 购买商品

展示商品信息，购物车功能可对商品进行剔除，最后付款

https://s1.ax1x.com/2020/06/07/tgW8PA.md.png

### 留言板

提交留言和查询留言，支持模糊查询功能

https://s1.ax1x.com/2020/06/07/tgWJ2t.md.png

## 帮助

这次作业的完成参考了一些优秀的作品

### B站视频

1. 适合新手大体了解Django框架 https://www.bilibili.com/video/BV1Wt411K7QH
2. 有最全面的从0开始的教程，不过时间较长，可挑选部分观看 https://space.bilibili.com/252028233/channel/detail?cid=28138
3. 关于Mysql建表，增删改查功能实现，可参考这个系列视频 https://space.bilibili.com/502890914?spm_id_from=333.788.b_765f7570696e666f.1
4. 实现商品购买，购物车功能的系列教程，讲解很详细 https://www.bilibili.com/video/BV1uz411i7KK?p=1

### CSDN等博客

1. 实现火车票预订系统，可适用于一些预定预约功能  https://blog.csdn.net/IAMoldpan/article/details/78820740
2. 关于Django中css,js文件的位置问题  https://blog.csdn.net/dong_W_/article/details/78767573
3. Django与mysql数据库连接  https://chief.blog.csdn.net/article/details/103978909

### YouTube

使用bootstrap特效完成商城界面的搭建 https://www.youtube.com/watch?v=_uQrJ0TkZlc&t=20165s

### 网页素材

站长素材 http://sc.chinaz.com/

模板王 http://www.mobanwang.com/

HTML素材网 http://www.htmlsucai.com/