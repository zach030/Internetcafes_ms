from django.shortcuts import render
from datetime import datetime
# Create your views here.
from django.views.decorators.csrf import csrf_exempt
from django.contrib import messages
from commentboard import models
from commentboard.models import comment_info
from django.http.response import HttpResponse, HttpResponseRedirect

@csrf_exempt
def submit_info(request):
    if request.method == "GET":
        return render(request, 'comment_note.html')
    else:
        nickname = request.POST.get('nickname')
        info = request.POST.get('info')
        date = request.POST.get('date')
        comment_info.objects.create(nickname=nickname, info=info, date=date)
        messages.success(request, "提交成功")
        return HttpResponseRedirect('/comment/submit/')


@csrf_exempt
def view_info(request):
    keyword = request.GET.get("keyword")
    if keyword is None or keyword is '':
        res = comment_info.objects.filter()
    else:
        res = comment_info.objects.filter(info__icontains=keyword)
    return render(request, "comment_note.html", {'res': res})
