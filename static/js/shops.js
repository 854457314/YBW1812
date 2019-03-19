$(function () {
    // $('.orderdetail').width(innerWidth)

    $('.shop_num>a').click(function () {
        console.log('123')
        data = {
            'back':'Shop',
        }
        $.get('/ybw/addcard/', data, function (response) {
            console.log(response)
            if (response.status == -1){
                $cookie(back,'Shop',{expires:3,path:'/'})

                window.open('/ybw/land/','_self')  //未登录
            }
        })
    })

    // 下单操作
    $('#order').click(function () {
        console.log('下单')
        $.get('ybw/generateorder/',function (response) {
            console.log(response)

        })
    })

})