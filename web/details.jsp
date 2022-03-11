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

            .ab{
                border: 0;
                width:50%;
                background-color: #A9C9FF;
                border-radius: 10px;
                padding: 20px;
                font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif
            }
            #btn{
                background-color: black;
                color: white;
                border: 0;
                padding: 10px;
                border-radius: 10px;
                align-items:center;
            }
            #btn1{
                border: 2;
                border-color: black;
                padding: 10px;
                border-radius: 10px;
                align-items:center;
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
            String r = request.getParameter("role");

            if (r.equals("DOCTOR")) {
                int y = Integer.parseInt(request.getParameter("t3"));
                try {
                    user a = (user) s.get(user.class, y);

        %>

        <table width="70%" align="center" class="ab">
            <td>
                <h3 id="head">USER DETAILS:</h3>
                <p id="head">USER ID:<%= a.getId()%> <br>
                    USER NAME:<%= a.getName()%>
                </p> <hr>
                <h3 id="head">Appointment Details:</h3>
                <%
                    Query query2 = s.createQuery("from appoint2 where did=:eid");
                    query2.setParameter("eid", y);
                    List<appoint2> list2
                            = query2.list();
                    for (appoint2 ap : list2) {%>

                <p id="head">
                    Appointment for:<%= ap.getOName()%> <br>
                    Appointed User ID:<%= ap.getUId()%> <br>
                    Time:<%= ap.gettime()%> <br>
                    Date: <%= ap.getdate()%>
                <hr>
                </p>

                <% }%>

                <form  action = "delete.jsp"> 
                    <p id="head">Enter appointment name to delete:</p>
                    <input id = "box" type = "text" name="ope" />

                    <button  id="btn" value="del">Delete Appointments</button>

                </form>

                <a id="head" href="userlogin.jsp">
                    BACK TO HOMEPAGE:
                </a>
            </td></table>
            <%} catch (Exception e) {
                        out.println("Invalid Request");
                    }
                }

    //           ------------------------------------------------------------------------ 
                if (r.equals("PATIENT")) {
                    int y = Integer.parseInt(request.getParameter("t3"));
                    user a = (user) s.get(user.class, y);
                    String ab = request.getParameter("action");
                    if (ab.equals("ch")) {

                        try {
            %>
        <table width="70%" align="center" class="ab">
            <td>
                <h3 id="head">USER DETAILS:</h3>
                <p id="head">USER ID:<%= a.getId()%> <br>
                    USER NAME:<%= a.getName()%>
                </p> <hr>
                <h3 id="head">Appointment Details:</h3>
                <%
                    Query query2 = s.createQuery("from appoint2 where uid=:eid");
                    query2.setParameter("eid", y);
                    List<appoint2> list2
                            = query2.list();
                    for (appoint2 ap : list2) {%>

                <p id="head">
                    Appointment for:<%= ap.getOName()%> <br>
                    Appointed Doctor ID:<%= ap.getDId()%> <br>
                    Time:<%= ap.gettime()%> <br>
                    Date: <%= ap.getdate()%>
                </p>


                <hr>
                <% }%>
                <a id="head" href="userlogin.jsp">
                    BACK TO HOME PAGE:
                </a>
            </td></table>
            <% } catch (Exception e) {
                        out.println("Invalid Request");
                    }
                }

                if (ab.equals("bk")) {%>
        <table width="70%" align="center" class="ab">
            <td>
                <form action="create.jsp">
                    <h3>Book Appointment</h3>
                    <p id="head">
                        Patient ID:<input id="btn1" type="text" value="<%= a.getId()%>" name="id"/> <br><br>
                        Appointment for:<input  id="btn1" type="text" name="f1"/><br><br>
                        Doctor ID:<input  id="btn1" type="text" name="f2"/><br><br>
                        Time:<input  id="btn1" type="text" name="f3"/><br><br>
                        Date: <input id="btn1" type="text" name="f4"/><br>
                    </p>
                    <input id="btn" type="submit" value="Submit"/> 
                </form> 
            </td></table>
            <% }

                }

                t.commit();
                s.close();
                sf.close();%>
    </body>

</html>