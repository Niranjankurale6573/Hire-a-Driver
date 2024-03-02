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
public class viewdriverc extends HttpServlet {

     @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
       HttpSession session=req.getSession();
       
       String user=req.getParameter("uname");
       String name=req.getParameter("cname");
       String address=req.getParameter("address");
       String gender=req.getParameter("cno");
       String dlno=req.getParameter("gst");
       String dlexp=req.getParameter("email");
       String btn=req.getParameter("submit");
       
//       out.println(address);
       
        String id=req.getParameter("id");
        String uname=req.getParameter("uname");
        String cname=req.getParameter("name");
        String duname=req.getParameter("duname");
        String dname=req.getParameter("dname");
        String vno=req.getParameter("vno");
        String add=req.getParameter("add");
        String date=req.getParameter("date");
        String time=req.getParameter("time");
        String day=req.getParameter("day");
        String chg=req.getParameter("chg");
        String type=req.getParameter("vtype");
        String ano=req.getParameter("ano");
        String des=req.getParameter("des");
        String btn2=req.getParameter("submit1");
        
//        out.println(id);
//        out.println(uname);
//        out.println(cname);
//        out.println(duname);
//        out.println(dname);
//        out.println(vno);
//        out.println(add);
//        out.println(date);
//        out.println(time);
//        out.println(day);
//        out.println(chg);
//        out.println(type);
//        out.println(ano);
//        out.println(des);
//     
//        out.println(btn2);
        
        
      
       
//        resp.setContentType("text/html");
        
//        out.println("<h1>Submited</h1>");
        String username=req.getParameter("uname");
        String event=req.getParameter("submit");
//        out.println("<Hello redirected>");
       
        if(btn!=null){
            if(btn.equals("Booknow")){
               session.setAttribute("username",req.getParameter("uname"));
               session.setAttribute("name",req.getParameter("cname"));
               session.setAttribute("address",req.getParameter("address"));
               session.setAttribute("gender",req.getParameter("cno"));
               session.setAttribute("drivinglincence",req.getParameter("gst"));
               session.setAttribute("drivingexp",req.getParameter("email"));

               resp.sendRedirect("Bookingpage.jsp");
            }
        }
        Database db=new Database();
        out.println(db.Connectdb());
        
       if(btn2!=null){
        if(btn2.equals("add")){
            String insert=db.Insert("insert into booking(id,user,name,duser,dname,vno,ads,date,time,day,vtype,chg,mno,des)value('"+id.toString()+"','"+uname.toString()+"','"+cname.toString()+"','"+duname.toString()+"','"+dname.toString()+"','"+vno.toString()+"','"+add.toString()+"','"+date.toString()+"','"+time.toString()+"','"+day.toString()+"','"+type.toString()+"','"+chg.toString()+"','"+ano.toString()+"','"+des.toString()+"')");
            out.println(insert);
            
            session.setAttribute("booking_id", req.getParameter("id"));
            session.setAttribute("duname", req.getParameter("duname"));
            session.setAttribute("driver_name", req.getParameter("dname"));
            session.setAttribute("day", req.getParameter("day"));
            session.setAttribute("date", req.getParameter("date"));
            session.setAttribute("uname", req.getParameter("uname"));
            session.setAttribute("type", req.getParameter("vtype"));
            session.setAttribute("vno", req.getParameter("vno"));
           resp.setContentType("text/html;charset=UTF-8");
           out.println("<script type=\"text/javascript\">");
           out.println("alert('Booking Stored');");
           out.println("location='Carinfo.jsp';");
           out.println("</script>");
        }
       }

   }
}   

