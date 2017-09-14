<%--
  Created by IntelliJ IDEA.
  User: ggll
  Date: 2017/8/24
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>adminadd.jsp</title>
</head>
<body>
    <div>
        <form action="addGoods.action" method="post" enctype="multipart/form-data">
            书籍名称：<input type="text" name="name"><br><br>
            书籍价格：<input type="text" name="price"><br><br>
            书籍种类：<input type="text" name="typeid"><br><br>
            书籍数量：<input type="text" name="count"><br><br>
            封面地址：<input type="file" name="file"><br><br>
            <input type="submit" value="添加">
        </form>
    </div>
</body>
</html>
