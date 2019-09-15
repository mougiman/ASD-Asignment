<%-- 
    Document   : noUserLogin
    Created on : 14/06/2019, 2:07:59 PM
    Author     : Changkeun
--%>

<%@page import="asd.demo.model.dao.*"%>
<%@page import="java.util.*"%>
<%@page import="asd.demo.controller.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="asd.demo.model.*" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style/stylish.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <title>No Login!</title>
    </head>
    <jsp:include page="header.jsp"/>
    <body>
        <p>You logged in to view this page, or click <a href="index.jsp">here</a> to back home.</p>
    </body>
</html>
