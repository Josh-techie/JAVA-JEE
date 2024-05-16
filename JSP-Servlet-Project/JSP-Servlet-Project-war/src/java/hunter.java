/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author youse
 */
public class hunter extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            // declare points, cost and point of hunt
            
            int points = Integer.parseInt( request.getSession().getAttribute("points").toString());
            int cost = Integer.parseInt( request.getSession().getAttribute("cost").toString());
            int hunt_point = Integer.parseInt( request.getParameter("victim"));
            
            // calculate the point whanever a hunt is performed
            points = points - hunt_point;
            
            // if reached points 0, increase cost by 100 and give it 100 points
            
            if ( points < 0 ){
            
                points += 100;
                cost   += 200;
                
            }
                
           // send & update the variables in the session 
           
           request.getSession().setAttribute("points", points);
           request.getSession().setAttribute("cost", cost);
           
           // Forwarding Request to the jsp page (hunter.jsp)
           getServletContext().getRequestDispatcher("/hunter.jsp").forward(request, response);
           
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
