<%-- 
    Document   : welcome
    Created on : 2019-8-18, 16:08:17
    Author     : Chenkun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <style>
            body{
                background-color: beige;
                    margin: 0;
            }
        </style>
        <%
        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        
        //User user = new User(name, email, password, phone);
        //DBManager manager = (DBManager) session.getAttribute("user");      
        %>
    </head>
    <body>
         <p class="form_title">Registerd successfully</p>
         <p>Welcome user: <%=name%></p>
         <div class="account">
         <h1>Account information</h1>
        <table>
            <tr><td>Name: </td><td><%=name%></td></tr>
            <tr><td>Email: </td><td><%=email%></td></tr>
            <tr><td>Password: </td><td><%= password%></td></tr>
            <tr><td>Phone Num: </td><td><%=phone%></td></tr>
        </table>
        </div>
        <p><a href="index.jsp" style="color: dodgerblue" target="_blank">Home page</a></p>
    </body>
    <%
        
    %>
</html>
