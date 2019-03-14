from django.shortcuts import render

# Create your views here.

def index(request):
    return render(request,'index.html')


def land(request):
    return render(request,'land.html')


def register(request):
    return render(request,'register.html')


def Shop(requesrt):
    return render(requesrt,'Shop.html')


def SHOP_Cart(requesrt):
    return render(requesrt,'SHOP_Cart.html')