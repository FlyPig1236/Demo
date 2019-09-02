package com.wowo;

import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/cityServlet")
public class CityServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        //获得省份的ID
        String id = request.getParameter("id");
        //获得省份对应的城市（数组）
        String [][] arr = {{"南京","苏州","无锡","徐州","南通"},
                            {"宝山","徐汇","松江"},
                            {"杭州","宁波","温州","台州","湖州"},
                            {"青岛","济南","枣庄","烟台","泰安","东营"},
                            {"太原","大同","长治","运城"}};
        //将这个数组-->JSON字符串
        ObjectMapper mapper = new ObjectMapper();
        String str=mapper.writeValueAsString(arr[Integer.parseInt(id)]);
        //将该字符串送给客户端
        PrintWriter out = response.getWriter();
        out.print(str);

        out.close();
    }
}
