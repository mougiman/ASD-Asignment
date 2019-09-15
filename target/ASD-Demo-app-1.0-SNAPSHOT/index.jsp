<%@page import="java.util.ArrayList"%>
<%@page import="asd.demo.model.dao.MongoDBConnector"%>
<%@page import="asd.demo.model.*"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>      
        <title>Main</title>
        <link rel="stylesheet" href="css/ASDStyle.css">
    </head>

    <body>        
        <%  // This is code in relation to the local database
            // DBManager manager = (DBManager) session.getAttribute("manager");
            //String itemName = request.getParameter("itemName");
        %>
        <jsp:include page="header.jsp"/>
        <div class="container">
            <div class="row">
                <h> All products</h>
            </div>
            <div class="row">
                <div class="itemList">
                    
                </div>        
            </div>
        </div> 
        <jsp:include page="logout.jsp"/>
    </body>
</html>