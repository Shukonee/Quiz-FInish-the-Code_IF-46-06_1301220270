<%-- 
    Document   : addUser
    Created on : Dec 11, 2024, 9:13:35 PM
    Author     : dipay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tambahkan user</h1>
        
        <form action="addUser" method="post">
        <input type="hidden" name="id" value="${user.id}">
        <label for="username">Username:</label>
        <input type="text" name="username" value="${user.username}" required><br><br>

        <label for="password">Password:</label>
        <input type="password" name="password" value="${user.password}" required><br><br>

        <label for="fullName">Full Name:</label>
        <input type="text" name="fullName" value="${user.fullName}" required><br><br>

        <button type="submit">Add User</button>
    </form>
    </body>
</html>
