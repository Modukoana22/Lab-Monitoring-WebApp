<%-- 
    Document   : remove_admin_staff_output
    Created on : May 10, 2025, 12:25:42 PM
    Author     : T-man
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Page</title>
    </head>
    <body>
        <h1>Removed Student details:</h1>
        
        <%
            Long staffno=(Long)request.getAttribute("staffno");
        
        %>
        
        <p>Staff No :<%=staffno%> has been successfully removed from the system.</p>
            
        <p>
            <a href="index.html">Click here to go back to main page</a>
        </p>
    </body>
</html>
