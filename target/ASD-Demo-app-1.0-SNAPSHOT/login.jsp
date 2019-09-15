<%-- 
    Document   : login
    Created on : 2019-8-16, 18:16:08
    Author     : lee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link href="/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="/css/style.css" rel="stylesheet" type="text/css"/>
        <title>Login Page</title>
    </head>
    <body>
        <form method="post" action="index.jsp">
        <div class="container">
        <h1>Login</h1>
         
        <div class="row">
            <div class="col-sm-4">
                <div class="form-group">
                    <label>Email</label>
                    <input type="text" name="userEmail" class="form-control">
                    </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="userPassword" class="form-control">
                </div>
                <a href="/" class="btn btn-default">Home</a>
                <input class="btn btn-success pull-right" type="submit" value="Login">
            </div>
        </div>
        </div>
        </form>>
    </body>
</html>
