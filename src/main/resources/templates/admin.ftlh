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
        <th>Редактирование</th>
        <th>Подробная информация</th>
    </tr>
    <#list user as user>
     <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th>${user.active}</th>
            <th><#list user.roles as role>${role}<#sep>, </#list></th>
            <th><form action="/admin/user/ban/${user.id}">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type = "submit" value ="БАН!">
                </form>
             </th>
             <th><a href="/admin/user/edit/${user.id}>Редактирование</a></th>
            <th> <a href = "/user/${user.id}"></a>Подробная информация</a></th>
        </tr>
        <#else>
        <h3>Пользователей нет</h3>
    </#list>
</table>
</body>
</html>