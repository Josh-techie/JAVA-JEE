<%-- 
    Document   : commun
    Created on : Mar 30, 2024, 7:16:23 PM
    Author     : youse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Common Page</title>
</head>

<%
    int times = 10;

    for (int i = 1; i <= times; i++) {
%>
<h2>Je dois faire des sauvegardes régulières de mes 
    fichiers</h2>
    <%
        }

    %>

<!-- now question 2 display odd number between 0 and 30 -->

<%    int nbr = 100;
    for (int i = 0; i <= nbr; i++) {
        if (i >= 0 && i <= 30 && i % 2 == 1) { %>
            <h2><%= i%></h2>
                    <%
            }
         }
%>

            <%  // Write a program that calculates n!
                //instanciate a var with a value
                
                 int var = 23;
                 long res = 1;
                 
                 for ( int i = 1; i<= var; i++){
                     res *= i;
                 }
                 %>
                 <%= res %>
                 




