<%-- 
    Document   : order
    Created on : Feb 7, 2017, 3:13:05 PM
    Author     : Logan Reese
--%>

<%@page import="pizzamvc.PizzaOrder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logan's JSP Pizza Order</title>
        <link rel="stylesheet" href="mystyle.css">
    </head>
    <body>
        <h1>Thank you for your order!</h1>
        <h2>Order details:</h2>
        <p>Email = ${myOrder.email}</p>
        <p>Size = ${myOrder.size}</p>
        <p>
            <%
            double total=0;
            String size = request.getParameter("size");
            String style = request.getParameter("style");
            if (size.equals("large")) {
                total += 7;
                
            } else if(size.equals("medium")) {
                    total +=6;
                    
            } else {
                total += 5;
            }
            if (style.equals("pan")) {
                total += 1;
            } else if(style.equals("hand-tossed")) {
                    total += .5;
            } else {
                total += 0;
            }
            String toppings[] = request.getParameterValues("toppings");
            if (toppings != null && toppings.length != 0)
            {
                out.println("<p>Toppings: ");
                for (String myTopping : toppings)
                {   total += 0.75;
                    out.println(myTopping + ", ");
                }
                out.println("<p>");
                out.println("Your total is: " + total);
                out.println("<p>");
            }
        %>
        </p>
        <p><a href='home.html'>Return to home page</a></p>
    </body>
</html>
