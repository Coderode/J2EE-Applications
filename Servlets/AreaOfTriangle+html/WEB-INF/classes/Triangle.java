import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Triangle extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		try{
			res.setContentType("text/html");  
			//for writing on a web server
			//get the variable n from url by get method
			double a=Double.parseDouble(req.getParameter("a"));
			double b=Double.parseDouble(req.getParameter("b"));
			double c=Double.parseDouble(req.getParameter("c"));
			double s=(a+b+c)/2.0;
			double area=Math.sqrt(s*(s-a)*(s-b)*(s-c));
			PrintWriter out=res.getWriter();
			out.println("Area of triangle is "+area);
			out.close();
		}catch(Exception e){
			
		}
	}
}