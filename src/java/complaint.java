/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author niran
 */
public class complaint extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
     PrintWriter out=resp.getWriter();
 
     String id=req.getParameter("id");
     String user=req.getParameter("uname");
     String name=req.getParameter("cname");
     String imp=req.getParameter("dname");
     String date=req.getParameter("date");
     String dis=req.getParameter("desc");
     String btn=req.getParameter("submit");
     
     out.println(id);
     out.println(user);
     out.println(name);
     out.println(imp);
     out.println(date);
     out.println(dis);
     out.println(btn);
     
    Database db=new Database();
    out.println(db.Connectdb());
    
        if(btn.equals("submit")){
            String insert=db.Insert("insert into complaint(id,username,cname,did,date,description)value('"+id.toString()+"','"+user.toString()+"','"+name.toString()+"','"+imp.toString()+"','"+date.toString()+"','"+dis.toString()+"')");
            out.println(insert);
            
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Complaint Send');");
            out.println("location='ComplaintC.jsp';");
            out.println("</script>");
        }
    }

}
