<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multiplication Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>

        <!--        include the header here-->
        <%@ include file="header.html" %>

        <div class="container pt-5">
            <form class="row g-3" method="post" action="multiplication.jsp">
                <div class="col-auto">
                    <input type="number" class="form-control" id="number" name="number" placeholder="Number">
                </div>
                <div class="col-auto">
                    <button type="submit" class="btn btn-primary mb-3">Submit</button>
                </div>
            </form>

            <!-- Retrieve the input by the user -->
            <div class="row mt-3">
                <div class="col">
                    <% if (request.getMethod().equals("POST")) {
                            String input = request.getParameter("number");
                            int inputUser = Integer.parseInt(input);

                            // Start looping from 1 to 10 with the inputUser and display the results
                    %>
                    <table class="table table-bordered">
                        <tbody>
                            <% for (int i = 1; i <= 10; i++) {%>
                            <tr>
                                <td> <%= i%> </td>
                                <td> <%= inputUser%> </td>
                                <td> <%= i * inputUser%> </td>
                            </tr>   
                            <% } %>
                        </tbody>
                    </table>
                    <% }%>
                </div>
            </div>
        </div>



        <!--     we will include the footer-->
        <%@include file="footer.html" %>

    </body>
</html>
