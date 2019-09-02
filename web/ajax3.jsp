<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/29
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        $().ready(function () {
            //alert("ok");
            $(":button").click(function () {
                //alert("ok")
                //post方法发送请求带数据给服务器端
                //方法1 名字1=值1&名字2=值2
                //方法2 传js对象
                //方法3 通过表单的序列化方法
                alert($("form[name=myform]").serialize())
                var user = {
                    username:alice,
                    age:20
                };
                $.ajax({
                    type:"POST",
                    url:"${pageContext.request.contextPath}/ajax3Servlet",
                    //data:"username=tom&age=20",
                    //data:user,
                    data:$("form[name=form]").serialize(),
                    success:function (response) {
                        alert(response);
                    }

                });
            });
        });
    </script>
</head>
<body>
<form name="myform">
    用户名:<input type="text" name="username"><br/>
    年龄:<input type="text" name="age"><br/>
    <input type="button" value="测试">
</form>
</body>
</html>
