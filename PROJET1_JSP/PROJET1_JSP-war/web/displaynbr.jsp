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
        <table border="2">
            <%
                 // int n = 5;
                  String n = request.getParameter("number");
                  
                  // dont forget we need to parse because the getParam returns a string
                  int number = Integer.parseInt(n);
                // loop through the nbrs 
                for (int i = 1; i <= number; i++) {
            %>
            <tr>
                <td>
                    Number
                </td>
                <td>
                    <%= i %>
                </td>
            </tr>
            <%} %> 
        </table>
    </body>
</html>
