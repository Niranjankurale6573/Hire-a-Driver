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

/**
 *
 * @author niran
 */
@WebServlet(name = "payment", urlPatterns = {"/payment"})
public class payment extends HttpServlet {

  @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
     PrintWriter out=resp.getWriter();
 
     String user=req.getParameter("id");
     String name=req.getParameter("name");
     String cn=req.getParameter("cn");
     String imp=req.getParameter("ped");
     String date=req.getParameter("cv");
     String dis=req.getParameter("pa");
     String btn=req.getParameter("submit");
     
     out.println(user);
     out.println(name);
     out.println(cn);
     out.println(imp);
     out.println(date);
     out.println(dis);
     out.println(btn);
     
    Database db=new Database();
    out.println(db.Connectdb());
    
        if(btn.equals("submit")){
            String insert=db.Insert("insert into onlinepay(username,transid,cardno,expdate,cvv,amount)value('"+name.toString()+"','"+user.toString()+"','"+cn.toString()+"','"+imp.toString()+"','"+date.toString()+"','"+dis.toString()+"')");
            out.println(insert);
            
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Payment Sucessfuly');");
            out.println("location='FeedbackC.jsp';");
            out.println("</script>");
        }
    }
}