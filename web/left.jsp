<%--
  Created by IntelliJ IDEA.
  User: ggll
  Date: 2017/8/22
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        ul{
            list-style: none
        }
        li{
            margin-bottom: 10px
        }
    </style>
</head>
<body>
<div>
    <form action="" method="post">
        <input type="text"><input type="submit" value="搜索">
    </form>

    <ul >
        <li><a href="selectByType.action?type=经济管理">经济管理</a></li>
        <li><a href="selectByType.action?type=小说" >小说</a></li>
        <li><a href="selectByType.action?type=青春文学" >青春文学</a></li>
        <li><a href="selectByType.action?type=艺术" >艺术</a></li>
        <li><a href="selectByType.action?type=生活时尚">生活时尚</a></li>
        <li><a href="selectByType.action?type=传记">传记</a></li>
        <li><a href="selectByType.action?type=儿童">儿童</a></li>
        <li><a href="selectByType.action?type=自我励志" >自我励志</a></li>
        <li><a href="selectByType.action?type=教育" >教育</a></li>
    </ul>
</div>
</body>
</html>
