import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import javax.servlet.annotation.WebServlet;

//sets up our servelet to be at /hello-world
@WebServlet (name = "HelloWorldServlet", urlPatterns = "/hello-world")
public class HelloWorldServlet extends HttpServlet {
    /**
     *
     */
    private int count = 0;

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        System.out.println(req.getParameter("name"));
        count++; //increase visit counter
        if(req.getParameter("name") == null){
            out.println("<h1>Hello, World!</h1>");
        }else{
            out.println("<h1>Hello, " + req.getParameter("name") + "</h1>");
        }
        out.println("<p>The page has been visited " + count + " times</p>");
        
    }
}
