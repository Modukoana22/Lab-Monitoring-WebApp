<%-- 
    Document   : all_open_labs_output
    Created on : May 11, 2025, 1:16:23 PM
    Author     : T-man
--%>

<%@page import="java.util.List"%>
<%@page import="tut.ac.staff.entities.Staff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Open labs Page</title>
    </head>
    <body>
        <h1>All Open labs below!!!</h1>
        
        <%
            List<Staff> openLabs =(List<Staff>)request.getAttribute("openLabs");
            
            for (int i = 0; i < openLabs.size(); i++) {
                    Staff staff = openLabs.get(i);
                    
                    %>
                        <p>Lab Name: <%=staff.getLabName()%></p>
                        <p>Lab Name: <%=staff.getSurname()%></p>
                    <%
                }
        %>
    </body>
</html>
