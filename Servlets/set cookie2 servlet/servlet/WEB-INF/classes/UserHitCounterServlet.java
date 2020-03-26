import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Random;
public class UserHitCounterServlet extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		//for writing on a web server
		res.setContentType("html");
		PrintWriter out=res.getWriter();
		out.println("<h1> welcome to cookie generator to count page hits of each user by cookie</h1>");
		int count=1;
		Cookie c[]=req.getCookies();
		if(c!=null){   //we may have cookies
			for(int i=0; i<c.length; i++){
				if(c[i].getName().equals("jmi2020")){
					count=Integer.parseInt(c[i].getValue());
					count++;
					break;
				}
			}
		}
		Cookie c1=new Cookie("jmi2020",String.valueOf(count));
		c1.setMaxAge(60*5); //for 5 min
		res.addCookie(c1);
		out.println("<h2>User page hit :"+count+"</h2>");
		out.close();
	}
}