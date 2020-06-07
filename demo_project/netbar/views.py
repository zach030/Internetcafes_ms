from django.shortcuts import render
from netbar import models

# Create your views here.
from django.http import HttpResponse


def index(request):
    return render(request, 'index.html')


def login(request):
    return render(request, 'login.html')

def comment(request):
    return render(request, 'MsgSingleWeb.html')
