import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HelloWorld extends HttpServlet{
	int count;
	public void init(ServletConfig config){
		count=0;
	}
	
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		//for writing on a web server
		PrintWriter out=res.getWriter();
		out.println("<h1>Hello world!</h1>");
		out.println("<br><br><br><h3>Page Hit = "+(++count)+"</h3>");
		out.close();
	}
}