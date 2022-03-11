package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import org.hibernate.Query;
import prac.appoint2;
import prac.user;
import java.sql.SQLException;
import org.hibernate.Transaction;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;
import javax.persistence.Table;
import javax.persistence.Entity;

public final class userjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
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
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>login</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <style>\n");
      out.write("            .ab {\n");
      out.write("                border: 0;\n");
      out.write("                width: 50%;\n");
      out.write("                background-color: #A9C9FF;\n");
      out.write("                border-radius: 10px;\n");
      out.write("                padding: 20px;\n");
      out.write("                font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #btn {\n");
      out.write("                background-color: black;\n");
      out.write("                color: white;\n");
      out.write("                border: 0;\n");
      out.write("                padding: 7px;\n");
      out.write("                border-radius: 10px;\n");
      out.write("                align-items: center;\n");
      out.write("            }\n");
      out.write("            #box {\n");
      out.write("                border: 0;\n");
      out.write("                color: white;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");


            String x = request.getParameter("t1");
            int y = Integer.parseInt(request.getParameter("t2"));
            //configuration
            Configuration c = new Configuration();
            c.configure();
            //sessionfactory
            SessionFactory sf = c.buildSessionFactory();
            Session s = sf.openSession();
            Transaction t = s.beginTransaction();

            // CREATE DOCTOR ROLE IN USERS TABLE
//            user u = new user();
//            u.setId(13);
//            u.setName("Anjali Kushwaha");
//            s.save(u);
//
//            user u1 = new user();
//            u1.setId(12);
//            u1.setName("Dr.Peter");
//            s.save(u1);
//
//            user u2 = new user();
//            u2.setId(11);
//            u2.setName("Dr.Hiya Khakkhar");
//            s.save(u2);
////
//            appoint2 a1 = new appoint2();
//            // a1.setId(1);
//            a1.setDId(11);
//            a1.setUId(13);
//            a1.setOName("Ear");
//            a1.setdate("13/02/2020");
//            a1.settime("3 P.M");
//            s.save(a1);
//
//            appoint2 a3 = new appoint2();
//            // a3.setId(3);
//            a3.setDId(12);
//            a3.setUId(13);
//            a3.setOName("Leg");
//            a3.setdate("14/02/2020");
//            a3.settime("4 P.M");
//            s.save(a3);
//
//            appoint2 a2 = new appoint2();
//            // a2.setId(2);
//            a2.setDId(11);
//            a2.setUId(13);
//            a2.setOName("Eye");
//            a2.setdate("14/02/2020");
//            a2.settime("4 P.M");
//            s.save(a2);
//            
            user a = (user) s.get(user.class, y);
//             
//            out.println("\nPATIENT DETAILS:\nPatient ID: " + a.getId() + "\nPatient NAME: " + a.getName());
//             
//            Query query2 = s.createQuery("from appoint2 where did=:eid");
//                    query2.setParameter("eid", y);
//                    List<appoint2> list2 = query2.list();
//                    out.println("\nAppointment Details:");
//                    for (appoint2 ap : list2) {
//                        out.println("\nAppointment Number:" + ap.getId() + "\nAppointment for:"
//                                + ap.getOName() + "\nAppointed Doctor ID: " + ap.getDId() + "\nTime: "
//                                + ap.gettime() + "\nDate: " + ap.getdate());
//                    }

        
      out.write("      \n");
      out.write("\n");
      out.write("    <center>\n");
      out.write("        <h1>HOSPITAL USER PANEL</h1>\n");
      out.write("    </center>\n");
      out.write("    <center>\n");
      out.write("        <table class=\"ab\" align=\"center\">\n");
      out.write("            <td>\n");
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>USER ROLE: ");
      out.print( a.getName());
      out.write("\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <p id=\"t3\">USER ID:");
      out.print( a.getId());
      out.write("\n");
      out.write("                    </p>\n");
      out.write("                </td>\n");
      out.write("            <br>\n");
      out.write("            </tr>\n");
      out.write("            </td>\n");
      out.write("        </table>\n");
      out.write("    </center>\n");
      out.write("    <form action=\"details.jsp\">\n");
      out.write("        <input id=\"box\" type=\"text\" value=\"");
      out.print( a.getId());
      out.write("\" name=\"t3\" />\n");
      out.write("        <center>   <button type=\"submit\" id=\"btn\">1.Check Appointments</button>\n");
      out.write("        </center>\n");
      out.write("    </form>\n");
      out.write("    <br>\n");
      out.write("    <form action=\"method.jsp\">\n");
      out.write("        <input id=\"box\" type=\"text\" value=\"");
      out.print( a.getId());
      out.write("\" name=\"t3\" />\n");
      out.write("        <center>  <button id=\"btn\">2.Delete Appointments</button>\n");
      out.write("        </center>\n");
      out.write("    </form>\n");
      out.write("\n");
      out.write("    ");


        t.commit();
        s.close();
        sf.close();

    
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
