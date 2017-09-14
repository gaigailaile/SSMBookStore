<%@ page import="java.util.List" %>
<%@ page import="vo.BookGoods" %><%--
  Created by IntelliJ IDEA.
  User: ggll
  Date: 2017/8/23
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cart.jsp</title>
</head>
<body>
    <div>
        <table>
            <tr>
                <td>商品ID</td>
                <td>商品名称</td>
                <td>商品价格</td>
                <td>商品类型</td>
                <td>个数</td>
                <td>总价</td>
                <td>操作</td>
                <%
                    List<BookGoods> list = (List<BookGoods>) session.getAttribute("list");
                    List<Integer> count = (List<Integer>) session.getAttribute("count");
                %>
                <%for (int i=0;i<list.size();i++){%>
                    <tr>
                        <td><%=list.get(i).getId()%></td>
                        <td><%=list.get(i).getName()%></td>
                        <td><%=list.get(i).getPrice()%></td>
                        <td><%=list.get(i).getTypeid()%></td>
                        <td><%=count.get(i)%></td>
                        <td><%=list.get(i).getPrice()*count.get(i)%></td>
                        <td><a href="deleteShow.action?i=<%=i%>">删除</a></td>
                    </tr>
                <%}%>
            </tr>
        </table>
        <a href="showgoods.action">继续购买</a>
    </div>
</body>
</html>
