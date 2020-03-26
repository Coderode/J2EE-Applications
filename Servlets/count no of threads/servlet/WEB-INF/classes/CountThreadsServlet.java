import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class CountThreadsServlet extends HttpServlet{
	int countThreads;
	public void init(ServletConfig config){
		countThreads=0;
	}
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		//for writing on a web server
		countThreads++;
		try{
			Thread.sleep(10000);  //sleep for 1 min
		}catch(Exception e){}
		res.setContentType("html");
		PrintWriter out=res.getWriter();
		out.println("<h1>welcome to the webpage </h1>");
		out.println("<h2>I am in service.</h2>");
		out.println("<h2>No. of threads running at this time : "+countThreads+"</h2>");
		
		countThreads--;
		out.println("<h2>I am out of service.</h2>");
		out.close();
	}
}