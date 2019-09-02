<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/29
  Time: 14:28
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
           $(":input[name=username]").keyup(function () {
               //alert("ok")
               $.ajax({
                   type:"GET",
                   url:"${pageContext.request.contextPath}/showTimeServlet",
                   success:function (mag) {
                       $(":input[name=mytime]").val(mag);
                   }
               });
           });


        });
    </script>
</head>
<body>
用户:<input type="text" name="username">&nbsp;时间:<input type="text" name="mytime">
</body>
</html>
