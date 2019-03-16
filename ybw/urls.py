from django.conf.urls import url

from ybw import views

urlpatterns = [
    url(r'^$',views.index,name='index'),
    url(r'^detail/(\d+)/$',views.detail,name='detail'),
    url(r'^Shop/$',views.Shop,name='Shop'),
    url(r'^SHOP_Cart/$',views.SHOP_Cart,name='SHOP_Cart'),
    url(r'^land/$',views.land,name='land'),
    url(r'^register/$',views.register,name='register'),
    url(r'^logout/$',views.logout,name='logout'),
    url(r'^cart/$',views.cart,name='cart'),
    ]