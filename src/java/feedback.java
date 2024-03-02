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
@WebServlet(name = "feedback", urlPatterns = {"/feedback"})
public class feedback extends HttpServlet {

   @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
     PrintWriter out=resp.getWriter();
 
     String id=req.getParameter("fid");
     String user=req.getParameter("fuser");
     String name=req.getParameter("fname");
     String imp=req.getParameter("fimp");
     String dis=req.getParameter("desc");
     String btn=req.getParameter("submit");
     
     out.println(id);
     out.println(user);
     out.println(name);
     out.println(imp);
     out.println(dis);
     
    Database db=new Database();
    out.println(db.Connectdb());
   
  if(btn.equals("submit"))
     {
       String insert=db.Insert("insert into feedback(id,username,name,improvement,Description)value('"+id.toString()+"','"+user.toString()+"','"+name.toString()+"','"+imp.toString()+"','"+dis.toString()+"')");
       out.println(insert);
       
        resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Feedback Submited');");
        out.println("location='FeedbackC.jsp';");
        out.println("</script>"); 
     }
   }
}