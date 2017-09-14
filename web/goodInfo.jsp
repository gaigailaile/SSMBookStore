<%--
  Created by IntelliJ IDEA.
  User: ggll
  Date: 2017/8/23
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>goodInfo.jsp</title>
    <script>
        function cart1() {
            var f = document.getElementById("form1");
            f.action="cart.action";
            f.submit();
        }
        function buy1() {
            var f = document.getElementById("form1");
            f.action="buy.action";
            f.submit();
        }
    </script>
</head>
<body>
    <div>
        <div style="float: left;width: 200px;height: 200px;margin-left: 100px"><img src="${goods.imgurl}"></div>
        <div style="float: left;margin-left: 50px;width: 300px;height: 500px">
            <span>${goods.name}</span><br>
            <form id="form1" method="post">
            <%--此处如果回车在页面会出现空格--%>
                <input name="id" value="${goods.id}" type="hidden">
                <input type="text" id="count" style="width: 50px" name="counts" value="1"><input type="button" value="+"><input type="button" value="-" style="width: 14px"><br>
                <%--ID不能命名成已经有的元素，如submit会出现一些方法不能使用的情况--%>
                <input type="button" id="buy" onclick="buy1()" value="立即购买">
                <%--点击事件的名字不能和id名一致--%>
                <input type="button" id="cart" onclick="cart1()" value="加入购物车">
            </form>
        </div>
    </div>
</body>
</html>
