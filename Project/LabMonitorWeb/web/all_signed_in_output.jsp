<%@page import="java.util.List"%>
<%@page import="tut.ac.staff.entities.Staff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Signed-in Staff</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root{--primary:#2c3e50;--secondary:#3498db;--accent:#e74c3c;--bg:#f5f6fa;}body{font-family:'Segoe UI',Tahoma,Geneva,Verdana,sans-serif;margin:0;background:var(--bg);min-height:100vh;display:flex;flex-direction:column;}.header{background:var(--primary);color:white;padding:1.5rem;box-shadow:0 2px 5px rgba(0,0,0,0.1);}.staff-grid{max-width:1000px;margin:2rem auto;width:100%;}.staff-card{background:white;padding:1.5rem;margin:1rem 0;border-radius:8px;box-shadow:0 2px 4px rgba(0,0,0,0.05);}.staff-info{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:1rem;margin-bottom:1rem;}.back-btn{background:var(--secondary);color:white;padding:0.8rem 1.5rem;text-decoration:none;border-radius:4px;display:inline-block;margin-top:1rem;}footer{background:var(--primary);color:white;text-align:center;padding:1rem;margin-top:auto;}
    </style>
</head>
<body>
    <header class="header">
        <h1><i class="fas fa-clipboard-list"></i> Signed-in Staff</h1>
        <a href="security.jsp" style="color:white;text-decoration:none;float:right;"><i class="fas fa-arrow-left"></i> Back</a>
    </header>

    <div class="staff-grid">
        <% 
        List<Staff> staffList = (List<Staff>)request.getAttribute("staff");
        for(Staff staff : staffList) { 
        %>
        <div class="staff-card">
            <div class="staff-info">
                <div>
                    <h3><%= staff.getSurname() %>, <%= staff.getInitials() %></h3>
                    <p>Staff #: <%= staff.getId() %></p>
                </div>
                <div>
                    <p><i class="fas fa-laptop-house"></i> <%= staff.getLabName() %></p>
                    <p><i class="fas fa-sign-in-alt"></i> <%= staff.getSigninDate() %></p>
                    <% if(staff.getSignOutDate() != null) { %>
                    <p><i class="fas fa-sign-out-alt"></i> <%= staff.getSignOutDate() %></p>
                    <% } %>
                </div>
            </div>
        </div>
        <% } %>
        
        <a href="security.jsp" class="back-btn">
            <i class="fas fa-arrow-left"></i> Back to Security
        </a>
    </div>

    <footer>
        <p>Lab System • © <span id="currentYear"></span></p>
    </footer>
    <script>document.getElementById('currentYear').textContent=new Date().getFullYear();</script>
</body>
</html>