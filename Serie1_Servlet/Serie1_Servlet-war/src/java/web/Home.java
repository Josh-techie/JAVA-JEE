package web;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class Home extends HttpServlet {

    ArrayList<String[]> visiteurs = new ArrayList<String[]>();

    @Override
    public void init() throws ServletException {
        visiteurs.add(new String[]{"ali@gmail.com", "1234"});
        visiteurs.add(new String[]{"mohamed@yahoo.fr", "1234"});

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            boolean access = false;
            for (String[] v : visiteurs) {
                if (v[0].equalsIgnoreCase(request.getParameter("email")) && v[1].equals(request.getParameter("password"))) {
                    access = true;
                    request.getSession().setAttribute("login", request.getParameter("email"));
                    out.println("<h2>Email visiteur : " + request.getParameter("email") + "</h2>");
                    getServletContext().getRequestDispatcher("/header.html").include(request, response);

                    break;
                }
            }

            if (access) {
            } else {
                request.getRequestDispatcher("/index.html").forward(request, response);
            }

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
