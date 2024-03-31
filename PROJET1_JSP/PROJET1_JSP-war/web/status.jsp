<%-- 
    Document   : status
    Created on : Mar 30, 2024, 7:07:52 PM
    Author     : youse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>Status</title>
    </head>
    <body>
        <div p-3>
            <%
                // set the staus with true at first (so it'll diasplay Hello
                boolean status = true;
            %>
            <h3 class="text-center"> Hello vs GoodBye </h3>

            <% if (status) { %>
            <h1>Hello Friend </h1>
            <% } else { %>
            <h1>GoodBye Friend</h1>
            <% }%>
        </div>
    </body>
</html>
