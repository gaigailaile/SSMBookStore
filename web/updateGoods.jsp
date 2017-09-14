<%--
  Created by IntelliJ IDEA.
  User: ggll
  Date: 2017/8/25
  Time: 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>updateGoods.jsp</title>
</head>
<body>
    <div>
        <form action="updateGoods.action" method="post">
            <input type="hidden" name="id" value="${goods1.id}">
            <%--不可编辑--%>
            书籍ID：<input type="text" value="${goods1.id}"  disabled="disabled"><br><br>
            书籍名称：<input type="text" name="name" value="${goods1.name}"><br><br>
            书籍价格：<input type="text" name="price" value="${goods1.price}"><br><br>
            书籍种类：<input type="text" name="typeid" value="${goods1.typeid}"><br><br>
            书籍数量：<input type="text" name="count" value="${goods1.count}"><br><br>
            <input type="submit" value="修改">
        </form>
    </div>
</body>
</html>
