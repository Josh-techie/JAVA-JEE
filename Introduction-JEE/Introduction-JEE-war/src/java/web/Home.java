
package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
public class Home extends HttpServlet {

  ArrayList <String[]> visiteurs=new ArrayList<String[]>();    
    
  @Override
    public void init()
    {
        visiteurs.add(new String[]{"joe@gmail.com","1234"});
        visiteurs.add(new String[]{"najat.fahim@gmail.com","1234"});
        visiteurs.add(new String[]{"alain.frank@gmail.com","1234"});
        visiteurs.add(new String[]{"reda.salimi@gmail.com","1234"});
    }
        
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            boolean authentification=false;
            for(String[] v:visiteurs)
            {
                if(v[0].equalsIgnoreCase(request.getParameter("email"))
                   && v[1].equals(request.getParameter("password")))
                {
                   out.print("<h3> Email Visitor: "+request.getParameter("email")+"</h3>");
                    authentification=true;
                    getServletContext().getRequestDispatcher("/header.html").include(request, response);
                    request.getSession().setAttribute("login", request.getParameter("email"));
                    break;
                }
            }
           if( authentification==false) 
           {
               getServletContext().getRequestDispatcher("/index.html").forward(request, response);
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

}
