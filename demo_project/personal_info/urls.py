from django.urls import path
from . import views

urlpatterns = [
    path('show/', views.show, name="show"),
    path('edit/', views.edit, name="edit"),
    path('money/', views.add_money, name="money"),
]