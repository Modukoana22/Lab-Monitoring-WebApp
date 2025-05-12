<%-- 
    Document   : signin
    Created on : May 9, 2025, 5:39:42 PM
    Author     : T-man
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Enter details to sign in</h1>
        
        <form action="AddStaffServlet" method="POST">
            <table>
                <tr>
                    <td>Staff No:</td>
                    <td><input type="text" name="staffno" required=""></td>
                </tr>
                <tr>
                    <td>Surname:</td>
                    <td><input type="text" name="surname" required=""></td>
                </tr>
                <tr>
                    <td>initials:</td>
                    <td><input type="text" name="initials" required=""></td>
                </tr>
                <tr>
                    <td>Lab Name:</td>
                    <td><input type="text" name="labName" required=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Sign-in" required=""></td>
                </tr>
            </table>
        </form>
    </body>
</html>
l