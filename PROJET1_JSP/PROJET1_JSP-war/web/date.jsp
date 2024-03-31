<%-- 
    Document   : date
    Created on : Mar 30, 2024, 5:06:04 PM
    Author     : youse
--%>
<%@ page import="java.util.Date" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Date Page </title>
    </head>
    <body> 
        <% 
            // instanciate the date variable
            Date date = new Date();
            
            // display the date method
            out.println("The value of the date is: " + date);
        %>
        
<!--        use this scriplet as well-->
        <%= date%>

    </body>
</html>
