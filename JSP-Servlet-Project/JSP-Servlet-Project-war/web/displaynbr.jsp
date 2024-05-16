<%-- 
    Document   : displaynbr
    Created on : Mar 30, 2024, 5:17:41 PM
    Author     : youse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Numbers </title>
    </head>
    <body>
        <form action="/PROJET1_JSP-war/displaynbr.jsp" method="post">
            <div class="p-3"> 
                <label for="number" class="form-label">Number</label>
                <input type="number" id="number" name="number" class="form-control">
                <input type="submit" value="Submit">
            </div>  
        </form>
        <br>
        
        <%
            String n = request.getParameter("number");
            if (n == null || n.isEmpty()) {
        %>
            <p>Please provide a value in the input.</p>
        <%
            } else {
                int number = Integer.parseInt(n);
                // loop through the numbers 
                for (int i = 1; i <= number; i++) {
        %>
            <table border="2">
                <tr>
                    <td>
                        Number
                    </td>
                    <td>
                        <%= i %>
                    </td>
                </tr>
            </table>
        <%
                }
            }
        %>
    </body>
</html>
