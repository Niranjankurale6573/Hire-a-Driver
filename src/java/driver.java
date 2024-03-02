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
@WebServlet(name = "driver", urlPatterns = {"/driver"})
public class driver extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
     PrintWriter out=resp.getWriter();
 
     String id=req.getParameter("id");
     String user=req.getParameter("user");
     String name=req.getParameter("name");
     String add=req.getParameter("add");
     String email=req.getParameter("email");
     String mno=req.getParameter("mno");
     String pin=req.getParameter("pin");
     String gender=req.getParameter("gender");
     String dob=req.getParameter("dob");
     String cpass=req.getParameter("cpass");
     String rpass=req.getParameter("rpass");
    // String hint=req.getParameter("hint");
     String pht=req.getParameter("pht");
     String adp=req.getParameter("adp");
     String dlno=req.getParameter("dlno");
     String dle=req.getParameter("dle");
     String dlp=req.getParameter("dlp");
     
     
     String btn=req.getParameter("submit");
     
     out.println(id);
     out.println(user);
     out.println(name);
     out.println(add);
     out.println(email);
     out.println(mno);
     out.println(pin);
     out.println(gender);
     out.println(dob);
     out.println(cpass);
     out.println(rpass);
     //out.println(hint);
     out.println(pht);
     out.println(adp);
     out.println(dlno);
     out.println(dle);
     out.println(dlp);
     
     
     out.println(btn);
     
    Database db=new Database();
    out.println(db.Connectdb());
    
        if(btn.equals("submit")){
            String insert=db.Insert("insert into driver(id,username,name,address,email,mobile,gender,dob,adhaarcard,pin,dlicence,dexprience,photo,city,password,repassword,dlproof)value('"+id.toString()+"','"+user.toString()+"','"+name.toString()+"','"+add.toString()+"','"+email.toString()+"','"+mno.toString()+"','"+gender.toString()+"','"+dob.toString()+"','"+adp.toString()+"','"+pin.toString()+"','"+dlno.toString()+"','"+dle.toString()+"','"+pht.toString()+"','"+pin.toString()+"','"+cpass.toString()+"','"+rpass.toString()+"','"+dlp.toString()+"')");
            out.println(insert);
            
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Registeration Done');");
            out.println("location='DriverL.jsp';");
            out.println("</script>");
        }
    }

}
