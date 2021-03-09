import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;

@WebServlet("/incorrect")
public class IncorrectServlet extends HttpServlet {
    /**
     * Generated with VScode
     */
    private static final long serialVersionUID = -5529680347707814950L;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //create an enumeration to loop though
        Enumeration<String> parameterNames = request.getParameterNames();

        //creates a hashmap to store the values
        HashMap<String, String> parameters = new HashMap<>();

        while(parameterNames.hasMoreElements()){

            //grabs the param name
            String paramName = parameterNames.nextElement();
            //stores its value
            String paramValue = request.getParameter(paramName);
            //and puts it in the hashmap
            parameters.put(paramName, paramValue);
            request.setAttribute(paramName, paramValue);
        }

        request.getRequestDispatcher("/outcome.jsp").forward(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.setAttribute("outcome", "false");
        request.getRequestDispatcher("/outcome.jsp").forward(request, response);
    }
}