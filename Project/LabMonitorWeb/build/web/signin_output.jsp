<%-- 
    Document   : signin_output
    Created on : May 9, 2025, 6:03:34 PM
    Author     : T-man
--%>

<%@page import="tut.ac.staff.entities.Staff"%>
<%@page import="tut.ac.za.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Output>></h1>
        
        <p>
            Successfully signed in.
        </p>
        
        <%
            Staff staff =(Staff)request.getAttribute("staff");
        %>
        <p>This is your sign out key>>>> <b><%=staff.getRecordId()%></b></p>
        
        
        <p>
            <a href="index.html">Click here to go back to main page</a>
        </p>
        
    </body>
</html>
