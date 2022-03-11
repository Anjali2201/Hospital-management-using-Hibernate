<%@page import="java.util.List" %>
<%@page import="org.hibernate.Query"%>
<%@page import="prac.appoint2" %>
<%@page import="prac.user" %>
<%@page import="java.sql.SQLException" %>
<%@page import="org.hibernate.Transaction" %>
<%@page import="org.hibernate.Session" %>
<%@page import="org.hibernate.SessionFactory" %>
<%@page import="org.hibernate.cfg.Configuration" %>
<%@page import="javax.persistence.Column" %>
<%@page import="javax.persistence.Id" %>
<%@page import="java.io.Serializable"%>
<%@page import="javax.persistence.Table" %>
<%@page import="javax.persistence.Entity" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <body>
        <style>
            #head {
                font-family: 'Courier New', Courier, monospace;
            }
        </style>
        <%

            //configuration
            Configuration c = new Configuration();
            c.configure();
            //sessionfactory
            SessionFactory sf = c.buildSessionFactory();
            Session s = sf.openSession();
            Transaction t = s.beginTransaction();
            
             int id = Integer.parseInt(request.getParameter("id"));
            String af = request.getParameter("f1");
            int ad = Integer.parseInt(request.getParameter("f2"));
            String at = request.getParameter("f3");
            String ada = request.getParameter("f4");
            for (int i = 0; i < 1; i++) {
              appoint2 a4 = new appoint2();
                            // a3.setId(nid);
                            a4.setDId(ad);
                            a4.setUId(id);
                            a4.setOName(af);
                            a4.setdate(ada);
                            a4.settime(at);
                            s.save(a4);
                            out.println("Appointment Succesfully Booked");
                            
            }
            
            t.commit();
            s.close();
           sf.close();%>
              <a id="head" href="userlogin.jsp">
            BACK TO HOMEPAGE:
        </a>
            