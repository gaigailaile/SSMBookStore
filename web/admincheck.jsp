<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ggll
  Date: 2017/8/24
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>admincheck.jsp</title>
</head>
<body>
    <div>
        <table>
            <tr>
                <td>商品ID</td>
                <td>商品名称</td>
                <td>商品价格</td>
                <td>商品类型</td>
                <td>商品数</td>
                <td>操作</td>
                <td>操作</td>
            </tr>
        <c:forEach items="${list}" var="goods">
            <tr>
                <td>${goods.id}</td>
                <td>${goods.name}</td>
                <td>${goods.price}</td>
                <td>${goods.typeid}</td>
                <td>${goods.count}</td>
                <td><a href="goUpdateGoods.action?id=${goods.id}">修改</a></td>
                <td><a href="deleteGoods.action?id=${goods.id}">删除</a></td>
            </tr>
        </c:forEach>
        </table>
        <a href="goAddGoods.action">添加</a>
        <a href="">返回</a>
    </div>
</body>
</html>
