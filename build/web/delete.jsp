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
            
            String op = request.getParameter("ope");
            out.println(op);
            try {
                String hql = "from appoint2 where operation like :op";
                Query query = s.createQuery(hql);
                query.setParameter("op", "%" + op + "%");
                List<appoint2> listProducts = query.list();
                for (appoint2 aP : listProducts) {

                    s.delete(aP);
                    out.println("\nAppointment Deleted succesfully:");
        %>
        <a id="head" href="userlogin.jsp">
            BACK TO HOMEPAGE:
        </a>
        <%
                }
            } catch (Exception e) {
                out.println("Invalid Request");
            }

            
            
            
            
            t.commit();
                        s.close();
                        sf.close();%>


