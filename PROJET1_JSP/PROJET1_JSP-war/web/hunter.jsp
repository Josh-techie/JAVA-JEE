<%-- 
    Document   : hunter
    Created on : Mar 31, 2024, 3:24:16 PM
    Author     : youse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hunter Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>

    <%
        // Implement the logic and get the session variables we created in our servlet

        if (session.getAttribute("points") == null) {

            session.setAttribute("points", 100);

        }

        if (session.getAttribute("cost") == null) {

            session.setAttribute("cost", 200);

        }


    %>


    <body>

        <div>
            <h2>
                <%    // Display the points
                    out.println("Points: " + session.getAttribute("points"));
                %>

                <%    // Display the points
                    out.println("Cost " + session.getAttribute("cost"));
                %>

            </h2>
        </div>

        <div class="p-4">

            <form action="hunter" method="POST">
                <p>
                    <input type="radio" name="victim" value="1" checked> Chicken
                    <input type="radio" name="victim" value="3"> Dog
                    <input type="radio" name="victim" value="5"> Cow
                    <input type="radio" name="victim" value="10" > Friend
                </p>
                <button type="submit" class="btn btn-primary">Submit </button>




            </form>
        </div>
    </body>
</html>
