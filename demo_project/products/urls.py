from django.urls import path
from . import views

urlpatterns = [
    path('', views.products, name="products"),
    path('add_cart/', views.add_cart, name="add_cart"),
    path('my_cart/', views.my_cart, name="my_cart"),
    path('remove_cart/', views.remove_cart, name="remove_cart"),
    path('pay_order/', views.pay_order, name="pay_order"),
    path('submit_order/', views.submit_order, name="submit_order"),
    path('submit_success/', views.submit_success, name="submit_success"),
]