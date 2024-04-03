<!DOCTYPE html>
<html>
<head>
    <title>MySale</title>
</head>
<body>
<h1>MySale!</h1>
<h4>Подробная информация о товаре</h4>
<#list images as img>
    <img src="/images/${img.id}" height = "60px"/><br><br>
</#list>
<b>Название товара:</b>${products.title}<br>
<b>Описание товара:</b>${products.description}<br>
<b>Цена:</b>${products.price}<br>
<b>Город:</b>${products.city}<br>
<b>Автор:</b>${products.user.name}<br>
<b>Номер телефона: </b>${products.user.phoneNumber}<br>
</body>
</html>