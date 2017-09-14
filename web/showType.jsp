<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: ggll
  Date: 2017/8/25
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="vo.BookGoods"%>
<html>
<head>
    <title>showType.jsp</title>
</head>
<body>
   <div>
       <c:forEach items="${lists}" var="goods">
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
