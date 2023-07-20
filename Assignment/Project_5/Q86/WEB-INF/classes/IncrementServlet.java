import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IncrementServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private int count = 0;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.getWriter().print("<h1>Integer: " + count + "</h1>");
        response.getWriter().print("<form method='post' action='IncrementServlet'>");
        response.getWriter().print("<input type='submit' value='Increment'>");
        response.getWriter().print("</form>");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        count++;
        doGet(request, response);
    }
}
