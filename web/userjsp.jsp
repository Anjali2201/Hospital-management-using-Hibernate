<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="prac.appoint2"%>
<%@page import="prac.user"%>
<%@page import="java.sql.SQLException"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="javax.persistence.Column"%>
<%@page import="javax.persistence.Id"%>
<%@page import="java.io.Serializable"%>
<%@page import="javax.persistence.Table"%>
<%@page import="javax.persistence.Entity"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    </head>
    <body>
        <style>
            .ab {
                border: 0;
                width: 50%;
                background-color: #A9C9FF;
                border-radius: 10px;
                padding: 20px;
                font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif
            }

            #btn {
                background-color: black;
                color: white;
                border: 0;
                padding: 7px;
                border-radius: 10px;
                align-items: center;
            }
            #box {
                border: 0;
                color: white;

            }
        </style>


        <%

            String x = request.getParameter("role");
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
            if (x.equals("DOCTOR")) {
                user a = (user) s.get(user.class, y);
        %>      

    <center>
        <h1>DOCTOR USER PANEL</h1>
    </center>
    <center>
        <table class="ab" align="center">
            <td> <tr>
                <td>USER NAME: <%= a.getName()%>
                </td> </tr>
            <tr><td>
                 <p id="t3">USER ID:<%= a.getId()%></p>
                </td><br></tr></td>
        </table>
    </center>
    <form action="details.jsp">
        <input id="box" type="text" value="<%= x %>" name="role" />
        <input id="box" type="text" value="<%= a.getId()%>" name="t3" />
        <center>   <button value="ch" name="action" type="submit" id="btn">1.Check Appointments</button>
        </center>
    </form>


    <%
        }
        if (x.equals("PATIENT")) {
            user a = (user) s.get(user.class, y);
    %>      

    <center>
        <h1>PATIENT USER PANEL</h1>
    </center>
    <center>
        <table class="ab" align="center">
            <td>

            <tr>
                <td>USER ROLE: <%= a.getName()%>
                </td>
            </tr>
            <tr>
                <td>
                    <p id="t3">USER ID:<%= a.getId()%>
                    </p>
                </td>
            <br>
            </tr>
            </td>
        </table>
    </center>
    <form action="details.jsp">
        <input id="box" type="text" value="<%= x %>" name="role" />
         <input id="box" type="text" value="<%= a.getId()%>" name="t3" />
        <center>   <button value="ch" name="action" type="submit" id="btn">1.Check Appointments</button>
        </center>
    </form>
        <form action="details.jsp">
        <input id="box" type="text" value="<%= x %>" name="role" />
         <input id="box" type="text" value="<%= a.getId()%>" name="t3" />
        <center>   <button value="bk" name="action" type="submit" id="btn">2.Book Appointments</button>
        </center>
    </form>


   <% }
    t.commit();
    s.close();
    sf.close();

    %>


</body>
</html>