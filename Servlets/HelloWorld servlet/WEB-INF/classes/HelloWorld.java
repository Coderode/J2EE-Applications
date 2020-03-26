import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HelloWorld extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		//for writing on a web server
		PrintWriter out=res.getWriter();
		out.println("<h1>Hello world!</h1>");
		out.close();
	}
}