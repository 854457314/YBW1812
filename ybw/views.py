from django.shortcuts import render

# Create your views here.
from ybw.models import Swiper, Swiper1


def index(request):
    # 获取轮播数据
    swripers = Swiper.objects.all()
    # 获取导航图片
    swripers1 = Swiper1.objects.all()

    response_str ={
        'swipers':swripers,
        'swipers1':swripers1,
    }
    return render(request,'index.html',context=response_str)


def land(request):
    return render(request,'land.html')


def register(request):
    return render(request,'register.html')


def Shop(requesrt):
    return render(requesrt,'Shop.html')


def SHOP_Cart(requesrt):
    return render(requesrt,'SHOP_Cart.html')


def detail(request):
    return None