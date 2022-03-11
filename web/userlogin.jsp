<%-- 
    Document   : login
    Created on : 14 Jan, 2022, 3:26:37 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html >
<html>
    <head>

        <title>Login Form</title>
    </head>
    <body>
        <style>
            .ab{
                border: 0;
                width:50%;
                background-color: #A9C9FF;
                border-radius: 10px;
                padding: 20px;
                font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif
            }
            input[type=submit]{
                background-color: black;
                color: white;
                border: 0;
                padding: 10px;
                border-radius: 10px;
                align-items:center;
            }
        </style>
        <table class="ab" align="center"><td>
            <center><h1>Login Form</h1></center>
            <form  method="post" action="userjsp.jsp">
                <center><table>
                        <tr><td>
                                <label> SELECT IDENTITY </label>  
                                <select name="role">  
                                    <option  value = "s"> SELECT   
                                    </option> 
                                    <option  value = "DOCTOR"> DOCTOR   
                                    </option>  
                                    <option  value = "PATIENT"> PATIENT   
                                    </option> 
                                </select>
                            </td></tr>
                        <tr><td>USER ID:<input type="text" name="t2"/></td></tr>
                        <tr><td colspan="2" style="text-align:center;">
                                <input type="submit" value="Submit"/></td></tr>  
                    </table></center>
            </form>
        </td></table>
</body>
</html>