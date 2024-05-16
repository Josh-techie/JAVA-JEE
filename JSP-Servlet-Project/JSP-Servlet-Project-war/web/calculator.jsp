<%-- 
    Document   : calculator
    Created on : Mar 31, 2024, 2:27:00 PM
    Author     : youse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    </head>
    <body>
        <div class="p-4">
            <!-- Englobe everything in a form-->
            <form action="calculator.jsp" method="POST">
                <!--taking the first number-->
                <input type="number" value="number1" name="number1" placeholder="Enter First Number"/>

                <!--taking the second number-->
                <input type="number" value="number2" name="number2" placeholder="Enter Second Number" />  

                <!--the select menu select an operation-->
                <select name="operation">
                    <option value="addition"> Addition </option>
                    <option value="difference"> Difference </option>
                    <option value="multiplication"> Multiplication </option>
                    <option value="division"> Division </option>
                </select>

                <!-- submit button -->
                <button type="submit" class="btn btn-primary">Submit</button>

                <!-- Start implementing the logic  -->

                <%

                    if (request.getMethod().equals("POST")) {
                        // fetch the first number
                        String input1 = request.getParameter("number1");
                        double nbr1 = Double.parseDouble(input1);

                        // fetch the second number
                        String input2 = request.getParameter("number2");
                        double nbr2 = Double.parseDouble(input2);
                        
                        
                        // fetch the operation
                        String operation = request.getParameter("operation");
                        
                        double result = 0; 
                        
                        if ( operation.equalsIgnoreCase("addition") ) {
                            operation = "+";
                            result = nbr1 + nbr2;
                        }
                        
                         if ( operation.equalsIgnoreCase("difference") ) {
                            operation = "-";
                            result = nbr1 - nbr2;
                        }
                         if ( operation.equalsIgnoreCase("multiplication") ) {
                            operation = "*";
                            result = nbr1 * nbr2;
                        }
                         if ( operation.equalsIgnoreCase("division") ) {
                            operation = "/";
                            if ( nbr2 == 0 ){
                                out.print("Can\'t divide by Zero");
                            }
                            else {
                                result = nbr1 / nbr2;
                            }
                            
                        }
                         
                        
                        // try to display for test %>
                        <h2> <%= nbr1%> <%= operation %> <%= nbr2%> = <%= result %>  </h2>
                        

                <%
                    }

                %>

            </form>
        </div>
    </body>
</html>
