<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ggll
  Date: 2017/8/23
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>showbook.jsp</title>
    <style>
        .show_good{
            float: left;
            height: 150px;
            width: 200px;
            margin-left: 20px;
            margin-bottom: 20px;
            text-align: center
        }
        a{text-decoration:none}
    </style>
</head>
<body>
    <div>
        <c:forEach items="${list}" var="goods">
            <div class="show_good">
                <a href="showGoodsOne.action?id=${goods.id}" >
                    <img src="${goods.imgurl}">
                    <br>${goods.name}
                </a>
            </div>
        </c:forEach>
    </div>
</body>
</html>
