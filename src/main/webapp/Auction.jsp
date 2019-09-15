<%-- 
    Document   : Auction
    Created on : 2019-8-13, 19:34:59
    Author     : Cai weize
--%>

<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="java.util.Random"%>
<%@page contentType="tdemo.ext/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>       
    

    <head>
  <script type="text/javascript" src="<%=request.getContextPath()%>/validate/jquery-1.6.2.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/validate/jquery.validate.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/validate/jquery.metadata.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/validate/messages_zh.js"></script>
        <script type="text/javascript">
 $(document).ready(function(){        
          $('#auctionform').validate({ 
            rules:{ 
                expdate:{
                    
                    required: true, 
                    compareDate:"#expdate"
                },
                itemName:{
                    required:true
                }
            },
               messages:{ 
                expdate:{ 
                    compareDate: "wrong time" 
                }
            }
        });
      //  jQuery.validator.addMethods ("expdate" ,function(value,element) { 
  

          
        //    return false; 
      //  };
    });

  
  </script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List an Item</title>
        <link rel="stylesheet" href="css/ASDStyle.css">
        
    </head>
        <jsp:include page="header.jsp"/>
    <body>
 <%     MongoDBConnector connector = new MongoDBConnector(); 
 LocalDate now =LocalDate.now();
        String date = now.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        String expdate = request.getParameter("expdate");

  String itemName = request.getParameter("itemName");
            if (itemName == null) {
               
            %>

        <h1><p>Auction a Product</p></h1>
        <!--If user is logged in then -->
        <form method="post"action="Auction.jsp" id = "auctionform">
            <table>
                <tr>
                    <td>
                        <p>Name:</p>
                    </td>
                    <td>
                        <input type="text" name="itemName">
                    </td>
                </tr>

                <tr>
                    <td>
                        <p>Category:</p>
                    </td>
                    <td>
                        <input type="text" name="itemCategory">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Description:</p>
                    </td>
                    <td>
                        <input type="text" name="itemDesc">
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <p>Quantity:</p>
                    </td>
                    <td>
                        <input type="text" name="itemQuantity">
                    </td>
                </tr>                
                <tr>
                    <td>
                        <p>Lowest price:</p>
                    </td>
                    <td>
                        <input type="text" name="itemPrice">
                    </td>
                </tr>
               

                 <tr>
                    <td>
                        <p>Expire Date:</p>
                    </td>
                    <td>
                        <input type="date" name="expdate" id="expdate">
                    </td>
                </tr>
                <tr><td></td><td>
                        <!--If all necessary forms are filled out then let user submit -->
                        <input type="submit" value="Auction item">
                    </td></tr>
            </table>
        </form>
        <%  
        } else if( expdate.compareTo(date)<0 )
{
 %>
        <p><%=itemName%>  Has a wrong time</p>
        <a href="Auction.jsp">Auction again</a>
        <%
}else {

            String itemCategory = request.getParameter("itemCategory");
            String itemDesc = request.getParameter("itemDesc");
           
            Double itemPrice = Double.parseDouble(request.getParameter("itemPrice"));
            String itemDateListed = "" + java.time.LocalDate.now();
            int itemQuantity = Integer.parseInt(request.getParameter("itemQuantity"));
            String expdate1 = request.getParameter("expdate");
           
            String itemSellerID = "11111111";
            Random rand = new Random();
            String itemID = "" + rand.nextInt(999999999);
            
            

            connector.addAucItem(itemID, itemName, itemDateListed, itemQuantity,  itemPrice, itemDesc, itemCategory,itemSellerID,  expdate1, null);
        %>
        <p><%=itemName%> has been Auctioned</p>
        <a href="Auction.jsp">Auction another Product</a>
        <%
            }
        %>

    </body>
</html>
