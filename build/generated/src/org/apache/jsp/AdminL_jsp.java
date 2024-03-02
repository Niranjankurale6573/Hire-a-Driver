package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AdminL_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <link rel=\"stylesheet\" href=\"Assets\\css\\bootstrap.css\">\n");
      out.write("        <title>Admin Page</title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("       .container\n");
      out.write("        {    \n");
      out.write("            font-family:time of roman;\n");
      out.write("            height:450px;\n");
      out.write("            width:500px;\n");
      out.write("            background:grey;\n");
      out.write("            border-radius:50px 5px 50px 5px;\n");
      out.write("            margin-left:900px;\n");
      out.write("            margin-top:150px;\n");
      out.write("        }\n");
      out.write("        h3\n");
      out.write("        {\n");
      out.write("            margin-top:20px;\n");
      out.write("        }\n");
      out.write("        .btn\n");
      out.write("        {\n");
      out.write("             width:175px;\n");
      out.write("             background-color:greenyellow;\n");
      out.write("             border-color: black;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <body> \n");
      out.write("        <form action=\"adminlogin\" method=\"POST\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("             <div class=\"row\" >\n");
      out.write("             </div><br>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                  <center><h3>Admin Login</h3></center>\n");
      out.write("            </div>\n");
      out.write("            <br>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-1\"></div>\n");
      out.write("            </div><br><br>\n");
      out.write("                  \n");
      out.write("            <div class=\"row\">      \n");
      out.write("                <div class=\"col-sm-1\"></div>\n");
      out.write("                <div class=\"col-sm-2\"><label>Username</label></div>\n");
      out.write("                <div class=\"col-sm-7\"><input type=\"text\" class=\"form-control\" name=\"user\" placeholder=\"Username\"></div>\n");
      out.write("            </div> \n");
      out.write("                <br><br>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-1\"></div>\n");
      out.write("                <div class=\"col-sm-2\"><label>Password</label></div>\n");
      out.write("                <div class=\"col-sm-7\"><input type=\"password\" class=\"form-control\" name=\"pass\"  placeholder=\"*********\" ></div>\n");
      out.write("            </div><br><br><br>\n");
      out.write("                \n");
      out.write("            <div class=\"row\">\n");
      out.write("                <center><div class=\"col-sm-4\"><button class=\"btn\" name=\"submit\"value=\"Login\" class=\"form-control\">Login</button></div></center>\n");
      out.write("            </div>\n");
      out.write("                \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</form>\n");
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
