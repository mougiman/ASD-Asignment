<%-- 
    Document   : rateUser
    Created on : 02/09/2019, 2:57:05 PM
    Author     : mougi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rating</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>    
        <%
            String name = request.getParameter("name");
            if (name == null) {
        %>
        <div>
            <form method="post" action="review.jsp">
                <table>
                    <tr> <h2>Review of Calvin</h2> <!--will change depending on the item clicked--> </tr>
                    <tr> <input value="User's review of Calvin" name="name"> </tr>
                    <tr> <input style="width: 300px; height: 100px"> </tr>
                    <tr> <button>Submit</button> </tr>
                </table>
            </form>
        </div>
        <%
        } else {
        %>
        <h2>Thank you for your Rating</h2>
        <a href="index.jsp">Return to main page</a>
        <%
            }
        %>
    </body>
</html>
