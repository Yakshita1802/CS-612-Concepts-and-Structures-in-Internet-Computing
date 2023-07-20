import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class Welcome extends HttpServlet {
public void doPost(HttpServletRequest request,
HttpServletResponse response)
throws IOException, ServletException {
String name = request.getParameter("name");
response.setContentType("text/html");
PrintWriter out = response.getWriter();
out.println("<html>");
out.println("<body>");
out.println("<h2>Welcome, " + name + "</h2>");
out.println("</body>");
out.println("</html>");
}
public void doGet(HttpServletRequest request,
HttpServletResponse response)
throws IOException, ServletException {
doPost(request, response);
}
}

