/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
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
@WebServlet(name = "bill", urlPatterns = {"/bill"})
public class bill extends HttpServlet {
@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
     PrintWriter out=resp.getWriter();
     HttpSession session=req.getSession();
 
     String id=req.getParameter("id");
     String uname=req.getParameter("uname");
     String dname=req.getParameter("dname");
     String date=req.getParameter("date");
     String day=req.getParameter("day");
     String chg=req.getParameter("chg");
     
     String btn2=req.getParameter("online");
   //  String btn1=req.getParameter("cash");
     out.println(btn2);
     out.println(id);
     out.println(uname);
     out.println(dname);
     out.println(date);
     out.println(day);
     out.println(chg);
 
//     out.println(btn1);
     out.println(btn2);
     
    Database db=new Database();
    out.println(db.Connectdb());
    
        if(btn2.equals("online"))
        {
            String insert=db.Insert("insert into bill(id,uname,dname,date,day,chg)value('"+id.toString()+"','"+uname.toString()+"','"+dname.toString()+"','"+date.toString()+"','"+day.toString()+"','"+chg.toString()+"')");
            out.println(insert);
            
            session.setAttribute("chg", req.getParameter("chg"));
            
            resp.setContentType("text/html;charset=UTF-8");
            RequestDispatcher dis = req.getRequestDispatcher("Payment.jsp");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Selected Online Method');");
            out.println("location='Payment.jsp';");
            out.println("</script>");
       }
//        if(btn2.equals("cash"))
//        {
//            String insert=db.Insert("insert into bill(id,uname,dname,date,day,chg)value('"+id.toString()+"','"+uname.toString()+"','"+dname.toString()+"','"+date.toString()+"','"+day.toString()+"','"+chg.toString()+"')");
//            
//            
//             RequestDispatcher dis = req.getRequestDispatcher("FeedbackC.jsp");
//            resp.setContentType("text/html;charset=UTF-8");
//            out.println("<script type=\"text/javascript\">");
//            out.println("alert('Selected Payment Cash Method');"); 
//            out.println("location='FeedbackC.jsp';");
//            out.println("</script>");
//        }
}
}
