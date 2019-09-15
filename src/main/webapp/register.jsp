<%-- 
    Document   : Register
    Created on : 16/08/2019, 15:30:43 AM
    Author     : Chenkun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.demo.controller.*" %>

<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="css/register.css">
        <%
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String phone = request.getParameter("phone");
        %>
    </head>
    <body>
        <div class="signup">
            <h1>Create an account</h1>
            <form method="post" action="welcome.jsp">
            <div class="inputbox">
                <label>Full Name</label>
                <input type="text" name="username" required="">   
            </div>
            <div class="inputbox">
                <label>Email</label>
                <input type="email" name="email" required="">   
            </div>
            <div class="inputbox">
                <label>Password</label>
                <input type="password" name="password" required="">   
            </div>
            <div class="inputbox">
                <label>Phone Number</label>
                <input type="text" name="phone" required="">   
            </div>
                <input type="submit" value="Register">
                <input type = "button" onclick="window.location.href='index.jsp'" value = "Cancle"/>
            </form>
        </div>
      <p>Already a member? <a href="login.jsp" style="color: dodgerblue">Sign in</a></p>
    </body>
</html>
