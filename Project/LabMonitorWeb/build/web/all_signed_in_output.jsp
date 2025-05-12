<%-- 
    Document   : all_signed_in_output
    Created on : May 11, 2025, 1:22:56 PM
    Author     : T-man
--%>

<%@page import="java.util.List"%>
<%@page import="tut.ac.staff.entities.Staff"%>
<%@page import="tut.ac.staff.entities.Staff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All signed in Page</title>
    </head>
    <body>
        <h1>All signed labs labs below!!!</h1>
        
        <%
            List<Staff> staff =(List<Staff>)request.getAttribute("staff");
            
            for (int i = 0; i < staff.size(); i++) {
                    Staff allSignedIn = staff.get(i);
                    
                    %>
                        <p>Lab Name: <%=allSignedIn.getLabName()%></p>
                        <p>Surname: <%=allSignedIn.getSurname()%></p>
                        <p>initials: <%=allSignedIn.getInitials()%></p>
                        <p>Staff no: <%=allSignedIn.getId()%></p>
                        <p>Signed In Time: <%=allSignedIn.getSignOutDate()%></p>
                        <p>Signed Out Time: <%=allSignedIn.getSigninDate()%></p>
                        <p>============================</p>
                    <%
                }
        %>
    </body>
</html>
