import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AdsServlet", urlPatterns = "/ads")
public class AdsServlet extends HttpServlet {
    

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
        ListAdsDao ads = new ListAdsDao();

        request.setAttribute("ads", ads.all());
        
        request.getRequestDispatcher("/ads.jsp").forward(request, response);
    }
}
