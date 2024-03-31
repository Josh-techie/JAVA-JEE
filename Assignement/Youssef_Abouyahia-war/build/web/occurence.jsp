<%-- 
    Document   : occurence
    Created on : Mar 31, 2024, 7:25:10 PM
    Author     : youse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Occurrence Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <div class="p-4">
            <h4> Hi There Occurence Page By Youssef Abouyahia 🤗</h4>
            <label class="h5 pt-5 text-purple">Nombre D'occurence D'un Nombre:</label>

            <form action="occurence" method="POST"> <!-- Removed .jsp from action URL -->

                <label class="pt-5"> Nombre:  </label>
                <input type="number" name="userNumber" value="userNumber" class="form-input"/> <!-- Added name attribute -->

                <!--the buttons-->
                <div class="pt-5 d-flex justify-content-center">
                    <!-- Reglment & vider buttons -->
                    <button type="submit" class="btn btn-primary mr-2" >Occurrence </button>
                    <button class="btn btn-secondary" name="vider" value="true">Vider </button>
                </div>
            </form>
        </div>

        <!-- Display the result here -->
        <h3>Le nombre <%= request.getParameter("userNumber") %> apparait <%= request.getAttribute("nbrOccurrence") %> fois.</h3> <!-- Display user input and result from the servlet -->

    </body>
</html>
