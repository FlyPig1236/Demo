<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/30
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        $(function () {
            $("input").click(function () {
                //alert("ok")
                $.ajax({
                    type:"POST",
                    url:"${pageContext.request.contextPath}/jsonDemoServlet",
                    dataType:"json",
                    success:function (response) {
                        //alert(response);
                        //数组，对象，集合
                        //alert(response[1]+","+response.length);
                        //对象
                        //alert(response.id+","+response.name+","+response.age);
                        //集合
                        alert(response[1].id+","+response[1].name+","+response[1].age);
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
<script>
    var arr = ["JSP","ASP","PHP"];
    var str = JSON.stringify(arr)
    //将它转换为JSON（字符串）
    console.log("str="+str+","+typeof(arr));
    var str = '["JSP","ASP","PHP",123]';
    //将符合，JSON格式的字符串转换为数组
    var arr = JSON.parse(str);
    console.log("arr="+arr+","+typeof (arr));

    var obj = {name:"tom",age:20};
    //对象 --> JSON
    str = JSON.stringify(obj);
    console.log("str="+str);
    //JSON -->对象
    str ='{"name":"alice","age":18}';
    obj = JSON.parse(str);
    console.log(obj.name+","+obj.age)
</script>