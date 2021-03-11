import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;


@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    private int counter = 0;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        
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

        if(parameters.get("username").equals("admin") &&
           parameters.get("password").equals("password")){
            request.getRequestDispatcher("/profile.jsp").forward(request, response);
        }else{
            request.setAttribute("error", "Incorrect Login Info!"); 
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }

        


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }
}

