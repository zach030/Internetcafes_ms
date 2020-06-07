from django.shortcuts import render
from notice.models import notice_info
from django.views.decorators.csrf import csrf_exempt
# Create your views here.

@csrf_exempt
def notice(request):
    keyword = request.GET.get('keyword')
    if keyword is None or keyword is '':
        res = notice_info.objects.filter()
    else:
        res = notice_info.objects.filter(info__icontains=keyword)
    return render(request, "Netbar_notice.html", {'res': res})

