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
import javax.servlet.http.HttpSession;


/**
 *
 * @author niran
 */
@WebServlet(name = "driverlogin", urlPatterns = {"/driverlogin"})
public class driverlogin extends HttpServlet {

    Connection cn=null;
     Statement st=null;
@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
       HttpSession session=req.getSession();
       
       String username=req.getParameter("user");
       String password=req.getParameter("pass");
        String btn=req.getParameter("submit"); 
      
        out.println(username);
        out.println(password); 
   
         Database db=new Database();
          out.println(db.Connectdb()); 
           
           if(btn.equals("submit"))
         {
             try
             {
              Class.forName("com.mysql.jdbc.Driver");
              cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireadriver","root","root");
              st=cn.createStatement();
              String sql="select * from driver where username='"+username.toString()+"'and password='"+password.toString()+"'";
              ResultSet rs=st.executeQuery(sql);
              if(rs.next())
              {
                  session.setAttribute("driver_name", req.getParameter("user"));
                  resp.sendRedirect("Vbookingd.jsp");
              }
              else
              {
                  resp.setContentType("text/html;charset=UTF-8");
                  out.println("<script type=\"text/javascript\">");
                  out.println("alert('Login Faield');");
                  out.println("location='DriverL.jsp';");
                  out.println("</script>");
              }
                 
             }catch(Exception ex)
             {
                 out.println(ex.toString());
             }
         
         }
    }

}