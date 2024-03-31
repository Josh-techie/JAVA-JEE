<%-- 
    Document   : greet
    Created on : Mar 31, 2024, 1:27:46 AM
    Author     : youse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gree the User</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    </head>
    <body>
        <div class="container pt-5">
            <form class="row g-3" method="post" action="greet.jsp">
                <div class="col-auto">
                    <!--take the user name-->
                    <label> Name </label>
                    <input type="textbox" class="form-control" name="name" placeholder="Name">
                    <label> Age </label>
                    <!--take the user age-->
                    <input type="number" class="form-control" name="age" placeholder="Number">

                    <!--take the user sex-->
                    <label for="male">Male</label>
                    <input type="radio" id="male" name="sex" value="male">

                    <label for="female">Female</label>
                    <input type="radio" id="female" name="sex" value="female">
                    <!--Submit button -->
                    
                </div>
                <button type="submit" class="btn btn-primary mb-3 mt-3">Submit</button>
            </form>

            <!-- we will be working on getting the input of the user here-->

            <div class="col">
                <% if (request.getMethod().equals("POST")) {

                        String name = request.getParameter("name"); 

                        String age = request.getParameter("age");
                        // parsing
                        int userAge = Integer.parseInt(age);
                        
                        // get the sex of the user
                        String sex = request.getParameter("sex");

                %>    

                <h3> <%= name%> </h3>
                <h3> <%= userAge%> </h3>
                <h3> <%= sex%> </h3>

                <%  }%>
            </div>
    </body>
</html>
