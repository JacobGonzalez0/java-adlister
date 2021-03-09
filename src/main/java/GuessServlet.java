import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;

@WebServlet("/guess")
public class GuessServlet extends HttpServlet {
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

        int min = 1;
        int max = 3;
        int answer = (int)(Math.random() * (max - min + 1) + min);

        if( Integer.parseInt( request.getParameter("guess")) == answer){
            response.sendRedirect("correct");
            return;
        }else if( Integer.parseInt( request.getParameter("guess")) > min ||
                  Integer.parseInt( request.getParameter("guess")) < max
        ){
            request.setAttribute("error", "Please enter a number between 1 and 3");
            request.getRequestDispatcher("/guess.jsp").forward(request, response);
            return;
        }else{
            response.sendRedirect("incorrect");
            return;
        }


    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/guess.jsp").forward(request, response);
    }
}