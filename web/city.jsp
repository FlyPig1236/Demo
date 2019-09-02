<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/30
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        $().ready(function(){
            $("select[name=province]").change(function(){
                //$(this)=$("selcet[name=province]")
                //this 对应的DOM对象
                //获取选中的下标
                //alert(this.selectedIndex);
                var val=$(this).prop("selectedIndex");
                $.ajax({
                    type:"POST",
                    url:"${pageContext.request.contextPath}/cityServlet",
                    data:"id="+this.selectedIndex,
                    dataType:"json",
                    success:function (response) {
                        //清空原城市
                        $("select[name=city] option").remove();
                        $.each(response,function (index,ele) {
                            $("select[name=city]").append("<option>"+ele+"</option>")
                        })


                        //alert(response.length)
                    }
                })

            });

        });
    </script>
</head>
<body>
省：<select name="province">
    <option>江苏</option>
    <option>上海</option>
    <option>浙江</option>
    <option>山东</option>
    <option>山西</option>
</select>
市：<select name="city">
    <option>南京</option>
    <option>苏州</option>
    <option>无锡</option>
    <option>徐州</option>
    <option>南通</option>
</select>
</body>
</html>
