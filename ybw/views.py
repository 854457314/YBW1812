import hashlib
import random

import time

from django.core.cache import cache
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, redirect

# Create your views here.
from ybw.models import Swiper, Swiper1, Detail, User, SShop, MShop, CShop, Cart, Goods, Order


def index(request):
    # 获取session
    # username = request.session.get('username')
    # 获取token
    token = request.session.get('token')
    userid = cache.get(token)
    # 获取轮播数据
    swripers = Swiper.objects.all()
    # 获取导航图片
    swripers1 = Swiper1.objects.all()
    # 女装商品图片
    shops = SShop.objects.all()
    # 男装商品图片
    mshops = MShop.objects.all()
    # 童装商品图片
    cshops = CShop.objects.all()
    response_str = {
    'swipers': swripers,
    'swipers1': swripers1,
    'shops': shops,
    'mshops': mshops,
    'cshops': cshops,
    'user': None,
        }
    if userid:
        user = User.objects.get(pk=userid)
        response_str['user'] = user
    return render(request, 'index.html', context=response_str)

def SHOP_Cart(requesrt):
    return render(requesrt,'SHOP_Cart.html')


def detail(request, shopid):
    details = Detail.objects.get(id=shopid)
    carts = []

    try:
        token = request.session.get('token')

        if token:
            user = User.objects.get(token=token)
            carts = Cart.objects.filter(user=user)

        data = {
            'details': details,
            'user':user,
            'carts': carts
        }

        return render(request, 'Shop.html', data)

    except:
        data = {
            'details': details,
            'user': None,

        }

    return render(request, 'Shop.html', data)


def generate_password(param):
    md5 = hashlib.md5()
    md5.update(param.encode('utf-8'))
    return  md5.hexdigest()


def generate_token():
    temp = str(time.time()) + str(random.random)
    md5 = hashlib.md5()
    md5.update(temp.encode('utf-8'))
    return md5.hexdigest()

def  register(request):
    if request.method == 'GET':
        return render(request, 'register.html')
    elif request.method == 'POST':
        # 获取数据库
        username = request.POST.get('username')
        password = generate_password(request.POST.get('password'))
        code = request.POST.get('code')
        # 存入数据库
        user = User()
        user.username = username
        user.password = password
        user.code = code

        # 状态保持
        token = generate_token()
        user.save()


        request.session['token'] = token

        cache.set(token, user.id)

    return render(request,'index.html',context={'username':username})

# 登录
def land(request):
    if request.method == 'GET':
        return render(request, 'land.html')

    elif request.method == 'POST':

        username = request.POST.get('username')
        password = request.POST.get('password')

        # //重定向位置
        back = request.COOKIES.get('back')
        print(back)

        users = User.objects.filter(username=username)
        if users.exists():
            user = users.first()
            if user.password == generate_password(password):
                # 状态保持
                token = generate_token()
                cache.set(token, user.id, 60 * 60 * 24)
                # 传递给客户端
                request.session['token'] = token
                # 根据back
                if back == 'Shop':
                    return redirect('ybw:index')
                else:
                    return redirect('ybw:Shop')
        else:  # 密码错误
            return redirect('ybw:index')





def logout(request):
    request.session.flush()
    return redirect('ybw:index')


def Shop(request):
    goodlists = SShop.objects.all()
    goodlistt = MShop.objects.all()

    try:
        token = request.session.get('token')

        if token:
            user = User.objects.get(token=token)

            data = {
                'goodlists': goodlists,
                'user': user,
                'goodlistt':goodlistt,
            }

        return render(request, 'Shop.html', data)

    except:
        data = {
            'goodlists': goodlists,
            'user': None,
            'goodlistt': goodlistt,
        }

        return render(request, 'Shop.html', data)


def addcart(request):
    # 获取token
    token = request.session.get('token')
    response_date = {

    }
    # 缓存
    userid = cache.get(token)

    if token:
        userid = cache.get('token')
        if userid:
            user = User.objects.get(pk=userid)
            goodsid = request.GET.get('goodsid')
            goods = Goods.objects.get(pk=goodsid)

            # 判断商品是否存在
            carts = Cart.objects.filter(user=user).filter(goods=goods)
            if carts.exists():  # 存在，修改numbner
                cart = carts.first()
                cart.number = cart.number + 1
                cart.save()
            else:  # 添加一条新的记录
                cart = Cart()
                cart.user = user
                cart.goods = goods
                cart.number = 1
                cart.save()

            return JsonResponse(
                {'msg': '{}-添加购物车成功!'.format(goods.productlongname), 'status': 1, 'number': cart.number})

        else:
            response_date['status'] = -1
        response_date['msg'] = '请登录后操作'

        return JsonResponse(response_date)


def generate_identifier():
    temp = str(time.time())+str(random.randrange(10000,100000))
    return temp

def generateorder(request):
    print('生成订单')
    token = request.session.get('token')
    userid = cache.get('token')
    user = User.objects.get(pk=userid)


    # 订单
    order = Order()
    order.user = user
    order.identifier = generate_identifier()
    order.save()

    # 订单商品(购物车选中)
    carts = user.cart_set.filter(isselect=True)
    # for  cart in carts:
    #     orderGoods = OrderGoods()
    #     orderGoods.or

    # response_data={
    #     'msg':'全选/取消全选/ 成功'
    #     'status': 1
    # }
    return None