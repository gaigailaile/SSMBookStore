<%--
  Created by IntelliJ IDEA.
  User: ggll
  Date: 2017/8/22
  Time: 17:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        var imgs = new Array("images/7.jpg",
            "images/10.jpg",
            "images/11.jpg",
            "images/9.jpg" );
        var index=0;
        setInterval(roll,2000);
        function roll() {
            var img = document.getElementById("img");
            img.src=imgs[index];
            index++;
            if(index===4) {
                index=0;
            }
        }
    </script>
</head>
<body>
<div>
    <img src="images/7.jpg" width="700px" id="img">
</div>
</body>
</html>
