package com.wowo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/sugServlet")
public class SugServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获得客户端传来的名字
        String username = request.getParameter("username");
        //从名字库中找到与相关的名字
        String[] arr = {
                "Anna","Brittany","Cinderella","Diana",
                "Eva","Fiona","Gunda","Hege","Inga","Johanna",
                "Kitty","Linda","Nina","Ophelia","Petunia","Amanda",
                "Raquel","Cindy","Doris","Eve","Evita","Sunniva",
                "Tove","Unni","Violet","Liza","Elizabeth","Ellen",
                "Wenche","Vicky"
        };
        String result = "";
        for(String name:arr){
            if(name.contains(username)){
                result +=name+",";
            }
        }
        //去掉多余的，
        if (result.length()>1){
            result = result.substring(0,result.length()-1);
        }
        //将这些相关名字传给客户端
        PrintWriter out = response.getWriter();
        out.println(result);
        out.close();
    }
}
