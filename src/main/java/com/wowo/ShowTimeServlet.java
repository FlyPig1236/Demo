package com.wowo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(urlPatterns = "/showTimeServlet")
public class ShowTimeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获得系统当前时间，送给客户端
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss");
        PrintWriter out = response.getWriter();
        out.println(sdf.format(date));
        out.close();
    }
}
