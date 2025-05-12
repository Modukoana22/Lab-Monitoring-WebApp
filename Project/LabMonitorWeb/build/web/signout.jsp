<%-- 
    Document   : signout
    Created on : May 9, 2025, 8:03:30 PM
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
        <h1>Please enter your details below:</h1>
        
        <form action="SignOutServlet" method="POST">
            <table>
                <tr>
                    <td>Enter  Staff Number:</td>
                    <td><input type="text" name="staffno" required=""</td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Sign Out" required=""</td>
                </tr>
            </table>
        </form>
    </body>
</html>
