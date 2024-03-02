/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author niran
 */
@WebServlet(name = "adminlogin", urlPatterns = {"/adminlogin"})
public class adminlogin extends HttpServlet {
            Connection cn=null;
            Statement st=null;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
       
       String username=req.getParameter("user");
       String password=req.getParameter("pass");
        String btn=req.getParameter("submit"); 
      
        out.println(username);
        out.println(password); 
        
        Database db=new Database();
        out.println(db.Connectdb()); 
        
        
         if(btn.equals("Login"))
        {
             try
             {
               if(username.toString().equals("admin")&& password.toString().equals("12345678"))
        {
        out.println("Login Success");
        resp.sendRedirect("ViewBookingA.jsp");
        
        }
        else
        {
        resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Login Faield');");
        out.println("location='AdminL.jsp';");
        out.println("</script>");
        }  
             }catch(Exception ex)
             {
                 out.println(ex.toString());
             }
         
         }
    }
 }