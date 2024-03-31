import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/occurence"})
public class occurence extends HttpServlet {

    private class Occurrence {
        private double[] TabNbre = {1, 3, 4, 5, 3, 6, 5, 0, 3, 4, 8};

        public int nbre_apparition(double userNumber) {
            int count = 0;
            for (double num : TabNbre) {
                if (num == userNumber) {
                    count++;
                }
            }
            return count;
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            HttpSession session = request.getSession();

            Occurrence occurrence = new Occurrence();

            double userNumber = Double.parseDouble(request.getParameter("userNumber"));

            int nbreOccurrence = occurrence.nbre_apparition(userNumber);

            // Set the attributes in request scope
            request.setAttribute("userNumber", userNumber);
            request.setAttribute("nbrOccurrence", nbreOccurrence);

            // Forward the request to the JSP page
            request.getRequestDispatcher("occurence.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            // Handle invalid input gracefully
            request.setAttribute("userNumber", "");
            request.setAttribute("nbrOccurrence", 0);
            request.getRequestDispatcher("occurence.jsp").forward(request, response);
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
