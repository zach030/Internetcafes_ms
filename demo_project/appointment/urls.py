from django.urls import path
from . import views
from .views import QueryView

urlpatterns = [
    # path('', views.appointment_view, name="appointment"),
    path('', views.detailview, name='home'),   # 主页url
    path('order/', views.orderview, name='order'),  # 预订url
    path('query/', QueryView.as_view(), name='query'), # 查询取消订单url

]