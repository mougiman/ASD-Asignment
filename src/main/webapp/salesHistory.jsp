<%-- 
    Document   : salesItem
    Created on : Aug 15, 2019, 9:34:50 PM
    Author     : changkeun
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="asd.demo.model.dao.*"%>
<%@page import="asd.demo.controller.*"%>
<%@page import="java.util.*"%>
<%@page import="asd.demo.model.*" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style/stylish.css">
        <title>Sales History</title>
    </head>

    <jsp:include page="header.jsp"/>

    <body>
    <center>
        <h1>Sales History</h1>

        <table>
            <tr>
                <td><b>ID</b></td>
                <td><b>Name</b></td>
                <td><b>Date</b></td>
                <td><b>Quantity</b></td>
                <td><b>Desc</b></td>
                <td><b>Category</b></td>
                <td><b>YearMade</b></td>
                <td><b>SellerId</b></td>
                <td><b>Cost</b></td>
                <td><b>Status</b></td>

            </tr>
            <%
                try {
                    History[] histories = (History[]) session.getAttribute("History");

                    for (int i = 0; i < histories.length; i++) { %>
            <tr>
                <td> <% out.print(histories[i].getID()); %> </td>
                <td> <% out.print(histories[i].getName()); %> </td>
                <td> <% out.print(histories[i].getQty()); %> </td>
                <td> <% out.print(histories[i].getDesc()); %> </td>
                <td> <% out.print(histories[i].getCategory()); %> </td>
                <td> <% out.print(histories[i].getYearMade()); %> </td>
                <td> <% out.print(histories[i].getSellerId()); %> </td>
                <td> <% out.print(histories[i].getColor()); %> </td>
                <td> <% out.print(histories[i].getPrice()); %> </td>

            </tr>
            <%
                }
            } catch (Exception e) {
            %>

            <div class="alert alert-danger">
                <p><strong>Error!</strong> There are currently no sales to list. 
            </div>

            <%
                }
            %>
            </tr>
            </body>
            </html>