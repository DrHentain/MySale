<!DOCTYPE html>
<html>
<head>
    <title>MySale</title>
</head>
<body>
<h1>MySale</h1><hr>
<h3>Панель админа/h3>
<table>
    <tr>
        <th>Email</th>
        <th>Номер телефона</th>
        <th>Активность</th>
        <th>Роли</th>
        <th>Бан</th>
        <th>Подробная информация</th>
    </tr>
    <#list user as user>
     <tr>
            <th>${user.email}</th>
            <th>Номер телефона</th>
            <th>Активность</th>
            <th>Роли</th>
            <th>Бан</th>
            <th>Подробная информация</th>
        </tr>
        <#else>
        <h3>Пользователей нет</h3>
    </#list>
</table>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list>
<#if user.email??>
<hr>
    <h3>Создать новый товар</h3>
    <form action="/product/create" method="post" enctype = "multipart/form-data">
        Название объявления: <input type="text" name ="title"/><br><br>
        Описание объявления: <input type="text" name ="description"/><br<br>
        Цена: <input type="number" name = "price"/><br><br>
        Город: <input type="text" name ="city"/><br><br>
        Первая фотография: <input type = "file" name = "file1"/><br><br>
        Вторая фотография: <input type = "file" name = "file2"/><br><br>
        Третья фотография: <input type = "file" name = "file3"/><br><br>
        <input type = "hidden" name ="${_csrf.parameterName}" value="${_csrf.token}">
        <input type="submit" value ="Добавить товар"/>
    </form>
</#if>
</body>
</html>