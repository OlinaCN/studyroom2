<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h1>管理员界面</h1>
    <p>欢迎管理员! 在这你可以管理用户、自习室还有订单</p>
    <div id="announcements">
        <h2>公告</h2>
        <ul>
            <c:forEach var="announcement" items="${announcements}">
                <li>${announcement.title}: ${announcement.content}
                    <a href="editAnnouncement.jsp?id=${announcement.id}">编辑</a>
                    <form action="announcements" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="${announcement.id}">
                        <input type="hidden" name="action" value="delete">
                        <button type="submit">删除</button>
                    </form>
                </li>
            </c:forEach>
        </ul>
    </div>

    <h2>发布新公告</h2>
    <form action="announcements" method="post">
        <input type="hidden" name="action" value="add">
        标题: <input type="text" name="title"><br>
        内容: <textarea name="content"></textarea><br>
        <button type="submit">发布</button>
    </form>
    <div class="admin-actions">
        <div class="section">
            <h2>管理用户</h2>
            <a href="addUser.jsp">添加用户</a>
            <a href="admin/detail">查看所有用户</a>
        </div>

        <div class="section">
            <h2>管理自习室</h2>
            <a href="studyroom/add">添加自习室</a>
            <a href="studyroom/detail">查看所有自习室</a>
        </div>

        <div class="section">
            <h2>管理订单</h2>
            <a href="order/detail">查看所有订单</a>
        </div>
    </div>
</div>
</body>
</html>

