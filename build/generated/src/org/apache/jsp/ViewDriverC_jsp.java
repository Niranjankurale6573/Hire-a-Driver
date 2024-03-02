package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.*;

public final class ViewDriverC_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/customermenubar.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>View Drivers Page</title>\n");
      out.write("         ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Customer Menu</title>\n");
      out.write("         <link rel=\"stylesheet\" href=\"bootstrap.min1.css\">\n");
      out.write("         \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <nav class=\"navbar navbar-expand-lg navbar-dark bg-primary\">\n");
      out.write("           \n");
      out.write("           <a class=\"navbar-brand\"style=\"margin-left: 10px\" href=\"#\">Hire A Driver</a>\n");
      out.write("           \n");
      out.write("        <div class=\"container-fluid\" style=\"margin-left:520px;\">\n");
      out.write("            \n");
      out.write("            <button class=\"navbar-toggler\"  type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarColor01\" aria-controls=\"navbarColor01\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarColor01\">\n");
      out.write("            <ul class=\"navbar-nav me-auto\">\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link active\" href=\"\">Home\n");
      out.write("                    <span class=\"visually-hidden\">(current)</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("        \n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" href=\"ViewDriverC.jsp\">View Driver</a>\n");
      out.write("                </li>\n");
      out.write("                \n");
      out.write("                 <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" href=\"\">History</a>\n");
      out.write("                </li>\n");
      out.write("                \n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" href=\"FeedbackC.jsp\">Feedback</a>\n");
      out.write("                </li>\n");
      out.write("        \n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                     <a class=\"nav-link\" href=\"ComplaintC.jsp\">Complaint</a>\n");
      out.write("                </li>\n");
      out.write("            \n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" href=\"index.jsp\">Log Out</a>\n");
      out.write("                </li>\n");
      out.write("           </ul>\n");
      out.write("        </div>\n");
      out.write("       </div>\n");
      out.write("      </nav>\n");
      out.write("   </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("  </head>\n");
      out.write("    <style>\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("                padding:0%;\n");
      out.write("                margin-top:0%;\n");
      out.write("                margin-bottom:0%;\n");
      out.write("                margin-left:0%;\n");
      out.write("                margin-right:0%;\n");
      out.write("            }\n");
      out.write("           .container\n");
      out.write("           {       \n");
      out.write("               margin-top:10px;\n");
      out.write("               \n");
      out.write("               \n");
      out.write("           }\n");
      out.write("           .containerbtn\n");
      out.write("           {\n");
      out.write("              height:60px;\n");
      out.write("              background-color:skyblue;\n");
      out.write("              \n");
      out.write("           }\n");
      out.write("            .div1\n");
      out.write("            {   \n");
      out.write("                display: inline-block;\n");
      out.write("                margin:10px;\n");
      out.write("                background-color: whitesmoke;\n");
      out.write("                padding:10px;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("           .btn\n");
      out.write("           {\n");
      out.write("               width:150px;\n");
      out.write("               margin-left:60px;\n");
      out.write("               background-color:greenyellow;   \n");
      out.write("           }\n");
      out.write("           \n");
      out.write("    </style>\n");
      out.write("<body>\n");
      out.write("    <form action=\"viewdriverc\" method=\"POST\">\n");
      out.write("    <div class=\"containerbtn\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-6\">\n");
      out.write("            <select class=\"form-control\" style=\"font-size:14px;width:300px;margin-top:5px;margin-left:590px;\">\n");
      out.write("                <option name=\"city\">Select Currant City</option>\n");
      out.write("                <option name=\"city\" value=\"kolhapur\">Kolhapur</option>\n");
      out.write("                <optio name=\"city\" value=\"pune\">Pune</option>\n");
      out.write("                <option name=\"city\" value=\"mumbai\">Mumbai</option>\n");
      out.write("           </select>\n");
      out.write("          <button type=\"sumit\">Search</button>\n");
      out.write("      </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("   </form>\n");
      out.write(" </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
