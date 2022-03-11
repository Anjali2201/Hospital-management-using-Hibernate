package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class userlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html >\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <title>Login Form</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <style>\n");
      out.write("            .ab{\n");
      out.write("                border: 0;\n");
      out.write("                width:50%;\n");
      out.write("                background-color: #A9C9FF;\n");
      out.write("                border-radius: 10px;\n");
      out.write("                padding: 20px;\n");
      out.write("                font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif\n");
      out.write("            }\n");
      out.write("            input[type=submit]{\n");
      out.write("                background-color: black;\n");
      out.write("                color: white;\n");
      out.write("                border: 0;\n");
      out.write("                padding: 10px;\n");
      out.write("                border-radius: 10px;\n");
      out.write("                align-items:center;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <table class=\"ab\" align=\"center\"><td>\n");
      out.write("            <center><h1>Login Form</h1></center>\n");
      out.write("            <form  method=\"post\" action=\"userjsp.jsp\">\n");
      out.write("                <center><table>\n");
      out.write("                        <tr><td>\n");
      out.write("                                <label> SELECT IDENTITY </label>  \n");
      out.write("                                <select name=\"role\">  \n");
      out.write("                                    <option  value = \"s\"> SELECT   \n");
      out.write("                                    </option> \n");
      out.write("                                    <option  value = \"DOCTOR\"> DOCTOR   \n");
      out.write("                                    </option>  \n");
      out.write("                                    <option  value = \"PATIENT\"> PATIENT   \n");
      out.write("                                    </option> \n");
      out.write("                                </select>\n");
      out.write("                            </td></tr>\n");
      out.write("                        <tr><td>USER ID:<input type=\"text\" name=\"t2\"/></td></tr>\n");
      out.write("                        <tr><td colspan=\"2\" style=\"text-align:center;\">\n");
      out.write("                                <input type=\"submit\" value=\"Submit\"/></td></tr>  \n");
      out.write("                    </table></center>\n");
      out.write("            </form>\n");
      out.write("        </td></table>\n");
      out.write("</body>\n");
      out.write("</html>");
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
