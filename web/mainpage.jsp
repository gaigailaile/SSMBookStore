<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ggll
  Date: 2017/8/22
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>mainpage.jsp</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        .page-header{
            position:relative;
            margin:0 auto;
            height: auto;
            width: 1000px;
            margin-top: 10px;
            margin-bottom:10px;
        }
        .page-body{
            height:auto;
            width: 1000px;
            margin: 0 auto
        }
        .page-sidebar{
            height: auto;
            width: 200px;
            float: left
        }
        .page-context{
            height: auto;
            width:700px;
            float: right;
            margin-left: 50px;
            border: 1px red solid
        }
    </style>
</head>
<body>
    <div class="page-header">
        <c:import url="top.jsp"></c:import>
    </div>
    <div class="page-body">
        <div class="page-sidebar">
            <c:import url="left.jsp"></c:import>
        </div>
        <div class="page-context">
            <%String name = (String) session.getAttribute("name");
              if(name==null){%>
                 <c:import url="right.jsp"></c:import>
            <%} else { %>
                 <c:if test="${admin!=null}">
                     <c:import url="adminmain.jsp"></c:import>
                 </c:if>
                 <c:if test="${goods!=null}">
                     <c:import url="goodInfo.jsp"></c:import>
                 </c:if>
                 <c:if test="${show!=null}">
                     <c:import url="showbook.jsp"></c:import>
                 </c:if>
                <c:if test="${buyresult!=null}">
                    <c:import url="buyresult.jsp"></c:import>
                </c:if>
                <c:if test="${admincheck!=null}">
                    <c:import url="admincheck.jsp"></c:import>
                </c:if>
                 <c:if test="${addGoods!=null}">
                     <c:import url="adminadd.jsp"></c:import>
                 </c:if>
                 <c:if test="${UpdateGoods!=null}">
                     <c:import url="updateGoods.jsp"></c:import>
                 </c:if>
                 <c:if test="${TypeGoods!=null}">
                    <c:import url="showType.jsp"></c:import>
                 </c:if>
            <%}%>
        </div>
    </div>
    <%--<div class="page-footer" style="border:1px mediumaquamarine solid;"></div>--%>
</body>
</html>
