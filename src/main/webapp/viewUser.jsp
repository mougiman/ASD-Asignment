<%-- 
    Document   : view_user
    Created on : Aug 15, 2019, 5:33:46 PM
    Author     : Sean
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="asd.demo.model.dao.*"%>
<%@page import="java.util.*"%>
<%@page import="asd.demo.controller.*"%>
<%@page import="asd.demo.model.*" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
        <link rel="stylesheet" href="css/ASDStyle.css">
    </head>
    <jsp:include page="header.jsp"/>

    <body>
        <%
            MongoDBConnector connector = new MongoDBConnector();
            String id = request.getParameter("id");
            User user = (User) session.getAttribute("userView");
        %> 
    <body >
        <h1>Account Profile</h1>        
        <form action="editUser.jsp" method="POST">
            <table>
                <tr><td>Full name</td><td><input type="text" name="name" size="25" value=" Calvin<% //=user.getName()%>"></td></tr>
                <tr><td>Email</td><td><input type="text" name="email" size="25" value=" sean3404@uts.com<%//=user.getEmail()%>"></td></tr>
                <tr><td>Phone</td><td><input type="text" name="phone" size="25" value=" 04221191111<%//=user.getPhone()%>"></td></tr>

                <button class="button" type="button" onclick="location.href = 'listings.jsp'" >Back</button>
                <button class="button" type="button" onclick="location.href = 'salesHistory.jsp'" > See other items </button>

                </td>
                </tr>
            </table>
        </form>
        <div>
            <h2>User Ratings</h2>
            <a href="review.jsp">Leave a Rating</a>
            <%
                ArrayList<Rating> ratings = connector.getUserRatings(id);
                for (Rating rating : ratings) {
            %>
            <div>
                <h3><%=rating.getTitle()%></h3>
                <h5><%=rating.getScore()%>/5</h5>
                <p>by <%=rating.getUserID()%></p>
                <p><%=rating.getDesc()%></p>
            </div>
            <%
                }
            %>
        </div>
    </body>
</html>    

