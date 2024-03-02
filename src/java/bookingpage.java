/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
/**
 *
 * @author niran
 */
//@WebServlet(name = "viewdriverc", urlPatterns = {"/viewdriverc"})
public class bookingpage extends HttpServlet {

     @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
       HttpSession session=req.getSession();
       
     String id=req.getParameter("id");
     String uname=req.getParameter("uname");
     String cname=req.getParameter("name");
     String duname=req.getParameter("duname");
     String dname=req.getParameter("dname");
     String vno=req.getParameter("vno");
     String ads=req.getParameter("add");
     String date=req.getParameter("date");
     String time=req.getParameter("time");
     String day=req.getParameter("day");
     String chg=req.getParameter("chg");
     String type=req.getParameter("vtype");
     String ano=req.getParameter("ano");
     String des=req.getParameter("des");
     String btn2=req.getParameter("submit1");
     
     out.println(id);
     out.println(uname);
     out.println(cname);
     out.println(duname);
     out.println(dname);
     out.println(vno);
     out.println(ads);
     out.println(date);
     out.println(time);
     out.println(day);
     out.println(chg);
     out.println(type);
     out.println(ano);
     out.println(des);
     
     out.println(btn2);
      
        resp.setContentType("text/html");
        out.println("<h1>Submited</h1>");
        String username=req.getParameter("uname");
        String event=req.getParameter("submit");
        out.println("<Hello redirected>");
     

   }
}   