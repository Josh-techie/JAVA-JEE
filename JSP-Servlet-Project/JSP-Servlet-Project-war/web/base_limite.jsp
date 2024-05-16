<%-- 
    Document   : base_limite
    Created on : Mar 31, 2024, 1:58:21 AM
    Author     : youse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.lang.Math" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> Base Limit Page </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="pt-3">
    <form action="base_limite.jsp" method="POST">
        <label> Give me the Base </label>
        <input name="base" type="number" />

        <label> Give me the limit </label>
        <input name="limit" type="number" />

        <button type="submit" class="btn btn-primary">Submit </button>
    </form>

    <!--we will implement the logic-->
    <%
        if (request.getMethod().equals("POST")) {
            // get the base
            String base = request.getParameter("base");
            // parse it to double as it can't be accepted in pow method if it's not a double
            double baseUser = Double.parseDouble(base);
            // get the limit
            String limit = request.getParameter("limit");
            double limitParsed = Double.parseDouble(limit);
    %>
    <div class="col">
        <!-- fetched both base and limit -->
        <!-- we have the base -->
        <!-- loop the exponent until it reaches the limit -->

        <%
            // Start with the first power of the base
            double result = 1;

            // Loop through the powers of the base until it exceeds the limit
            while (result < limitParsed) {
        %>
            <h3><%= result %></h3>
        <%
                // Update the result to the next power of the base
                result *= baseUser;
            }
        %>
    </div>
    <% } %>
</div>
</body>
</html>
