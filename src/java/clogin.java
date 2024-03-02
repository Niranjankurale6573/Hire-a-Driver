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
@WebServlet(name = "clogin", urlPatterns = {"/clogin"})
public class clogin extends HttpServlet {

     Connection cn=null;
     Statement st=null;
    
@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
       HttpSession session=req.getSession();
       
       String username=req.getParameter("user");
       String password=req.getParameter("pass");
       String full_name=req.getParameter("fname");
       String btn=req.getParameter("submit"); 
      
//        out.println(username);
//        out.println(password); 
   
         Database db=new Database();
          out.println(db.Connectdb());
           out.println(session.getAttribute("cusername"));
          /*if(btn!=null){
           if(btn.equals("submit"))
         {
            
              try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=null;
                    Statement st=null;
                    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireadriver","root","root");
                    st=conn.createStatement();
                    String sql="select * from customer where username='"+username+"'and password='"+password+"'";
                    ResultSet rs=st.executeQuery(sql);
              if(rs.next())
              {
                  HttpSession session=req.getSession();
                  session.setAttribute("unmae", rs.getString("username"));
                 
//                  out.println(session.getAttribute(username));
//                   session.setAttribute("uname", username);
                  
                    String user=rs.getString("uname");
                    out.println("Login Successfull!!");
                     resp.sendRedirect("ViewDriverC.jsp");
              }
              else
              {
                  resp.setContentType("text/html;charset=UTF-8");
                  out.println("<script type=\"text/javascript\">");
                  out.println("alert('Login Faield');");
                  out.println("location='CustomerL.jsp';");
                  out.println("</script>");
              }
             }
            
             catch(Exception ex)
             {
                 out.println(ex.toString());
             }
         }
       }*/
          if(btn!=null){
            if(btn.equals("login"))
            {
               
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=null;
                    Statement st=null;
                    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireadriver","root","root");
                    st=conn.createStatement();
                    String sql="select * from customer where username='"+username+"' and password='"+password+"'";
                    ResultSet rs=st.executeQuery(sql);
                    if(rs.next())
                    {
                        session.setAttribute("cusername", req.getParameter("user"));
                        session.setAttribute("fullname",req.getParameter("fname"));
                        String user=rs.getString("username");
                        out.println("Login Successfull!!");
                        resp.sendRedirect("ViewDriverC.jsp");
                    }
                    else
                    {
                       resp.setContentType("text/html;charset=UTF-8");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Login Faild');");
                        out.println("location='CustomerL.jsp';");
                        out.println("</script>");
                    }
                }
                catch (Exception ex){
                    out.println(ex.toString());
                }
            }
            }
}
}

       