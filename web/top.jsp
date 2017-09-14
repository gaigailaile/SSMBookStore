<%--
  Created by IntelliJ IDEA.
  User: ggll
  Date: 2017/8/22
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .header-tille{
            height: 25px
        }
        .header-banner img{
            width: 1000px;
            height: 150px;
        }
    </style>

</head>
<body>
<div class="header-tille">
    <%
        String name = (String) session.getAttribute("name");
        if(name==null){
    %>
    <div style="float: left">
        欢迎爱书的朋友，来到淘书商城！
        <a href="login.jsp">会员登录</a>
        <a href="register.jsp">免费注册</a>
    </div>
    <div style="float: right">
        <a href="adminlogin.jsp">管理员登录</a>
    </div>
    <%} else {%>
    <div style="float: left">
        欢迎${sessionScope.name}，来到淘书商城！
        <a href="#">登出</a>
    </div>
    <%}%>
</div>
<div class="header-banner">
    <img src="images\6.jpg">
</div>
</body>
</html>
