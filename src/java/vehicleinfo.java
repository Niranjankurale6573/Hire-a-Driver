
import java.io.IOException;

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
 * @author Administrator
 */
@WebServlet(name = "vehicleinfo", urlPatterns = {"/vehicleinfo"})
public class vehicleinfo extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          
     PrintWriter out=resp.getWriter();
     customerdata cd=new customerdata();
    
     String uwn= cd.getuser();
     String owner=req.getParameter("owner");
     String veh=req.getParameter("vname");
     String cno=req.getParameter("cno");
     String rdate=req.getParameter("rdate");
     String ins=req.getParameter("ins");
     String insd=req.getParameter("idate");
     String ipro=req.getParameter("iproof");
     
     String btn=req.getParameter("submit");
     
//     out.println(uwn);
//     out.println(owner);
//     out.println(veh);
//     out.println(cno);
//     out.println(rdate);
//     out.println(ins);
//     out.println(insd);
//     out.println(ipro);
//     
//     out.println(btn);
     
    Database db=new Database();
    out.println(db.Connectdb());
    
        if(btn.equals("submit")){
            String insert=db.Insert("insert into carinfo(username,regcar,vehiname,carno,regdate,insurance,insexpdate,insproof)value('"+uwn.toString()+"','"+owner.toString()+"','"+veh.toString()+"','"+cno.toString()+"','"+rdate.toString()+"','"+ins.toString()+"','"+insd.toString()+"','"+ipro.toString()+"')");
            out.println(insert);
            
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Complaint Send');");
            out.println("location='Bill.jsp';");
            out.println("</script>");
        }
    }

}
