<%-- 
    Document   : edit_staff
    Created on : May 9, 2025, 9:40:06 PM
    Author     : T-man
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
    </head>
    <body>
        <h1>Edit a user</h1>
        
        <h1>Edit Staff Member</h1>
            
            <form action="EditStaffServlet" method="POST">
                <table>
                    <tr>
                        <td>Original Staff No:</td>
                        <td><input type="text" name="originalStaffNo" required></td>
                    </tr>
                    <td>New Details:</td>
                    <tr>
                        
                        <td>Staff No:</td>
                        <td><input type="text" name="staffno" required></td>
                    </tr>
                    <tr>    
                        <td>Surname:</label></td>
                        <td><input type="text" name="surname" required></td>
                    </tr>
                    
                        <td>Initials:</td>
                        <td><input type="text" name="initials" required></td>
                    </tr>
                    
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Update Staff"></td>
                    </tr>
                </table>    
            </form>
    </body>
</html>
