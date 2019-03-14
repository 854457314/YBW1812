$(function () {
    $('img').each(function () {
        var  img_path = $(this).attr('src')
    //    src="img/imgs/linke_14647471632394.jpg"
        img_path = "{% static '" + img_path + "' %}"
        $(this).attr('src',img_path)
    })
    console.log($('body')).html()
})