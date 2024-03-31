<%-- 
    Document   : facture.jsp
    Created on : Mar 31, 2024, 5:14:31 PM
    Author     : youse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Facture Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <div class="p-4">
            <form action="facture.jsp" method="POST">
                <!--label and input NumFac -->
                <label> Num Facture: </label>
                <input type="number" value="numberFacture" name="numberFacture" class="form-control"/>

                <!--label and input Montant (amount) -->
                <label> Montant:</label>
                <input type="number" value="montant" name="montant" class="form-control" />

                <!-- Taux de remise label & liste deroulante -->
                <label class="pt-3"> Taux de Remise en %: </label>

                <select name="remise">
                    <option value="0"> 0 </option>
                    <option value="10"> 10 </option>
                    <option value="20"> 20 </option>
                </select>

                <div class="pt-5 d-flex justify-content-center">
                    <!-- Reglment & vider buttons -->
                    <button type="submit" class="btn btn-primary mr-2" >Reglement </button>
                    <button class="btn btn-secondary" name="vider" value="true">Vider </button>
                </div>
            </form>


            <!--here we will be implementing the logic-->

            <%
                if (request.getMethod().equals("POST")) {
                    if (request.getParameter("vider") != null) {
                        // Clear input fields
                        request.setAttribute("numberFacture", "");
                        request.setAttribute("montant", "");
                        request.setAttribute("remise", "0"); // Reset dropdown to default option
                    } else {
                        // Fetch Num Facture
                        String nbrFacure = request.getParameter("numberFacture");
                        // parse the nbrFacture
//                        double numbreFacture = Double.parseDouble(nbrFacure);
                        
                        // get Montant amount
                        String montant = request.getParameter("montant");
                        double montantFact = Double.parseDouble(montant);

                        // get taux de remise
                        String remise = request.getParameter("remise");
                        // parse remise into a double to be calculated later
                        double remiseFac = Double.parseDouble(remise);
                        
                        // calculate the Montant Net and assign it to a var
                        double montantNet = montantFact * (1 - remiseFac / 100.0);

            %>

            <div class="pt-5">
                <!--display the table with the info -->
                <table class="table table-bordered"> 
                    <thead>
                    <th> N Facture</th>
                    <th> Montant </th>
                    <th> Taux de Remise (%)</th>
                    <th> Montant Net</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td> <%= nbrFacure%> </td>  
                            <td> <%= montant%> </td> 
                            <td> <%= remise%> </td> 
                            <td> <%= montantNet %></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <%
                    }
                }
            %>
        </div>
    </body>
</html>
