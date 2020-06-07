from django.urls import path
from . import views

urlpatterns = [
    path('submit/', views.submit_info),
    path('read/', views.view_info),
]
