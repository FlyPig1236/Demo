<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/29
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        function show() {
            //alert("ok")
            //使用AJAX发送一个请求，获得服务器端的系统时间，将这个时间放在输入框中
            //创建XMLHttpRequest对象
            var xhr = new XMLHttpRequest();
            //注册onreadystatechange事件
            xhr.onreadystatechange = function (ev) {
              if (xhr.readyState==4){
                  //alert(xhr.responseText);
                  //将时间放在输入框中
                  document.getElementsByName("timer")[0].value = xhr.responseText;
              }
            }
            //

            //发送请求
            xhr.open("GET","/ajax_json/showTimeServlet",true);
            xhr.send(null);
        }
    </script>
</head>
<body>
用户:<input type="text" onkeyup="show()">&nbsp;&nbsp;&nbsp;时间:<input type="text" name="timer">

</body>
</html>
