<%--
  Created by IntelliJ IDEA.
  User: ggll
  Date: 2017/8/22
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>adminlogin.jsp</title>
    <link rel="stylesheet" href="style/reg.css">
    <style>
        body {
            background: #789 url(images/main_bg2.jpg) no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
<!-- 系统名字开始 -->
<div id="header">
    <p>网上书城管理</p>
</div>
<!--  系统名字结束 -->
<!-- 登录区主体开始 -->
<div id="main">

    <!-- 账号密码开始 -->
    <div id="account">

        <form id="form1" name="form1" action="adminlogin.action" method="post">
            <table border="0">
                <tr>
                    <td class="t_l">用户名</td>
                    <td class="t_r">
                        <input type="text" name="name" placeholder="请填写用户名">
                        <br><span>*小写字母开头，后面可以是小写字母，数字，下划线，6-12位</span>
                    </td>
                </tr>
                <tr>
                    <td class="t_l">设置密码</td>
                    <td class="t_r">
                        <input type="password" name="password">
                        <br><span>*6-8位数字</span>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="登陆">
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <!-- 账号密码结束 -->
</div>
<!-- 登录区主体结束 -->

<!-- 登录区底部开始 -->
<div id="footer">
    <div id="f_n">
        <a href="#">&copy;ThureYoung,2017</a>
    </div>
</div>
<!-- 登录区底部结束 -->
</body>
</html>
