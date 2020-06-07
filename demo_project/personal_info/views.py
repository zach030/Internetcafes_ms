from django.shortcuts import render
from personal_info.models import personal_info
from consume.models import consume_info
from django.http.response import HttpResponse, HttpResponseRedirect
from django.views.decorators.csrf import csrf_exempt
# Create your views here.

@csrf_exempt
def edit(request):
    if request.method == "POST":
        id = request.POST.get('id')
        nickname = request.POST.get('nickname')
        age = request.POST.get('age')
        sex = request.POST.get('sex')
        personal_info.objects.filter(id=id).update(id=id, nickname=nickname, age=age, sex=sex)
        return HttpResponseRedirect('/personal_info/show/')
    else:
        id = request.GET.get('id')
        info = personal_info.objects.get(id=id)
        return render(request, "edit_info.html", {'info': info})

@csrf_exempt
def show(request):
    info = personal_info.objects.filter()
    return render(request, "show_info.html", {'info': info})

@csrf_exempt
def add_money(request):
    demo_row = personal_info.objects.get(id=1)
    old_money = demo_row.money
    nickname = demo_row.nickname
    if request.method == "POST":
        id = request.POST.get('id')
        money = request.POST.get('money')
        personal_info.objects.filter(id=id).update(id=id, money=old_money+int(money))
        consume_info.objects.create(name=nickname, detail="充值账户", money=money)
        return HttpResponseRedirect('/personal_info/show/')
    else:
        id = request.GET.get('id')
        info = personal_info.objects.get(id=id)
        return render(request, "add_money.html", {'info': info})

