<%-- 
    Document   : calculatrice
    Created on : Apr 2, 2024, 4:02:50 AM
    Author     : youse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="calc" class="web.calculatrice" scope="request" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculatrice Page</title>
    </head>
    <body>
       

            <!--                implement the logic-->
            <%@include file="calculatrice.html" %>
            <%
                    // fetch the operator 
                    String operator = request.getParameter("operator");
                    //double opUser = Double.parseDouble(operator);

                    // fetch the number1 and nbr2
                    double nbr1 = Double.parseDouble(request.getParameter("number1"));
                    double nbr2 = Double.parseDouble(request.getParameter("number2"));

                    double result = 0;
                    if (operator.equalsIgnoreCase("+")) {

                        result = calc.addition(nbr1, nbr2);

                    }
                    if (operator.equalsIgnoreCase("-")) {

                        result = calc.difference(nbr1, nbr2);

                    }
                    if (operator.equalsIgnoreCase("*")) {

                        result = calc.multiplication(nbr1, nbr2);

                    }
                    if (operator.equalsIgnoreCase("/")) {

                        result = calc.division(nbr1, nbr2);

                    }

                    %>
                    
                    <h3> <%= result %> </h3> 

    </body>
</html>
