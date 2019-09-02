<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/29
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        $().ready(function () {
            $(":text[name=username]").keyup(function () {
                //alert("ok"+this.value+","+$(this).val());
                $.ajax({
                    type:"POST",
                    url:"${pageContext.request.contextPath}/sugServlet",
                    data:"username="+this.value,
                    success:function (response) {
                        //response:用，分开的字符串 -->数组
                        var arr=response.split(",");
                        $("select option").remove();
                        $.each(arr,function (index,ele) {
                            $("select").append("<option>"+ele+"</option>")
                        })
                        //alert(response)
                    }
                });
            });
        });
    </script>
</head>
<body>
请输入:<input type="text" name="username" size="6">
<select ><option>1</option></select>
</body>
</html>
