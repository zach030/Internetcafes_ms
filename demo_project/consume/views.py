from django.shortcuts import render
from consume.models import consume_info
# Create your views here.

def consume(request):
    info = consume_info.objects.filter()
    return render(request, "consume_info.html", {'info': info})

