<%-- 
    Document   : view_all_staff_output
    Created on : May 9, 2025, 9:25:10 PM
    Author     : T-man
--%>

<%@page import="java.util.List"%>
<%@page import="tut.ac.za.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All staff Page</title>
    </head>
    <body>
        <h1>List of all staff is below:</h1>
        
        <%
            List<Admin> admin=(List<Admin>)request.getAttribute("admin");
            
            for (int i = 0; i < admin.size(); i++) {
                    Admin ad = admin.get(i);
                    
                    %>
                    
                        <p>Surname: <%=ad.getSurname()%></p>
                        <p>Initials: <%=ad.getInitials()%></p>
                        <p>Staff Number: <%=ad.getId()%></p>
                    <p>=====================</p>    
                    <%
                }
        %>
        
        <p>
            <a href="index.html">Click here to go back to main page</a>
        </p>
    </body>
</html>
