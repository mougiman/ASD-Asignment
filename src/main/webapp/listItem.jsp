<%-- 
    Document   : listItem
    Created on : 11/08/2019, 3:29:51 PM
    Author     : Mougi
--%>

<%@page import="asd.demo.model.dao.MongoDBConnector"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List an Item</title>
        <link rel="stylesheet" href="css/ASDStyle.css">
        <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/pure-min.css" integrity="sha384-oAOxQR6DkCoMliIh8yFnu25d7Eq/PHS21PClpwjOTeU2jRSq11vu66rf90/cZr47" crossorigin="anonymous">
    </head>

    <body>
        <jsp:include page="header.jsp"/>

        <%  // This is code in relation to the local database
            MongoDBConnector connector = new MongoDBConnector();
            //this is code that changes the page depending on if the user has listed an  item properly
            String itemName = request.getParameter("itemName");
            if (itemName == null) {
        %>
        <h1>List an Item</h1>
        <!--If user is logged in then -->
        <form class="pure-form pure-form-aligned formbox" method="post" action="listItem.jsp" >
            <fieldset>
                <div class="pure-control-group">
                    <label for="">Name:</label>
                    <input id="" type="text" placeholder="" name="itemName" required>
                </div>
                <div class="pure-control-group">
                    <label for="">Category:</label>
                    <select name="itemCategory" required>
                        <option value="Fashion">Fashion</option>
                        <option value="Electronics">Electronics</option>
                        <option value="Everyday Essentials">Everyday Essentials</option>
                        <option value="Food $ Drinks">Food $ Drinks</option>
                        <option value="Motors">Motors</option>
                        <option value="Homes & Gardens">Homes & Gardens</option>
                        <option value="Collectables $ Art">Collectables $ Art</option>
                        <option value="Toys & Media">Toys & Media</option>
                        <option value="Sporting Goods">Sporting Goods</option>
                        <option value="Health & Beauty">Health & Beauty</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
                <div class="pure-control-group">
                    <label for="">Quantity:</label>
                    <input id="" type="number" min="0.01" step="0.01" max="2500" placeholder="" name="itemQuantity" required>
                </div>
                <div class="pure-control-group">
                    <label for="">Price:</label>
                    <input id="" type="number" min="0.01" step="0.01" max="100000000" placeholder="" name="itemPrice" required>
                </div>
                <div class="pure-control-group">
                    <label for="">Image (URL only):</label>
                    <input id="" type="text" placeholder="https://..." name="img" required>
                </div>
                <div class="pure-control-group" >
                    <label for="">Description:</label>
                    <textarea name = "itemDesc" class="pure-input-1-2" placeholder="This item...." required></textarea>
                </div>
                <!--<div class="pure-control-group" >
                    <label for="">Auction Item:</label>
                    <input name = "itemDesc" class="pure-input-1-2" type="checkbox"></b
                </div>
                <div class="pure-control-group" >
                    <label for="">Auction End Date:</label>
                    <input type="date" name="expdate" class="pure-input-1-2" placeholder="This item...." required>
                </div>-->
                <div class="pure-controls">
                    <button type="submit" class="pure-button pure-button-primary">Submit</button>
                </div>
            </fieldset>
        </form>
        <%
        } else {
            String itemCategory = request.getParameter("itemCategory");
            String itemDesc = request.getParameter("itemDesc");
            Double itemPrice = Double.parseDouble(request.getParameter("itemPrice"));
            String itemDateListed = "" + java.time.LocalDate.now();
            int itemQuantity = Integer.parseInt(request.getParameter("itemQuantity"));
            String itemSellerID = "11111111";
            Random rand = new Random();
            String itemID = "" + rand.nextInt(999999999);
            String img = request.getParameter("img");
            Boolean ifAuc = false;
            String expdate = null;// request.getParameter("expdate");;

            connector.addItem(itemID, itemName, itemDateListed, itemQuantity, itemPrice, itemDesc, itemCategory, itemSellerID, expdate, img, ifAuc);
        %>
        <h3><%=itemName%> has been Listed</h3>
        <a href="listItem.jsp">List another item</a>
        <%
            }
        %>

    </body>
</html>
