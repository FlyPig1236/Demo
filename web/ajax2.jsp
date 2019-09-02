<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/29
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        $().ready(function () {
            $(":button").click(function () {
               //alert("ok")
                $.ajax({
                    type:"GET",
                    url:"${pageContext.request.contextPath}/ajax1Servlet",
                    success:function (response) {
                        alert(response);
                    }
                })

            });

        });
    </script>
</head>
<body>
<input type="button" value="测试">
</body>
</html>
