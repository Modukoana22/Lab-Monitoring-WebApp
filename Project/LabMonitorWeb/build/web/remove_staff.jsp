<%-- 
    Document   : remove_staff
    Created on : May 10, 2025, 12:14:09 PM
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
        <h1>Enter details of the staff you want to remove below:</h1>
        
        <form action="RemoveAdminStaffServlet" method="POST">
            <table>
                <tr>
                    <td>Staff No:</td>
                    <td><input type="text" name="staffno" required=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Remove staff" ></td>
                </tr>
            </table>
        </form>
    </body>
</html>
