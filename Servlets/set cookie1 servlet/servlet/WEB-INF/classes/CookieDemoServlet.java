import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Random;
public class CookieDemoServlet extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		//for writing on a web server
		//res.setContentType("html/text");
		PrintWriter out=res.getWriter();
		out.println("<h1> welcome to cookie generator</h1>");
		String id=null;
		Cookie c[]=req.getCookies();
		if(c!=null){   //we may have cookies
			for(int i=0; i<c.length; i++){
				if(c[i].getName().equals("dcsjmi2020")){
					id=c[i].getValue();
					break;
				}
			}
		}
		if(id==null){
			Random rn=new Random();
			String uid=String.valueOf(rn.nextInt(1000));
			id=uid;
			Cookie c1=new Cookie("dcsjmi2020",id);
			c1.setMaxAge(60*60*24*1);  //for one day  60*60*24*365 for one year
			res.addCookie(c1);
			out.println("<h1>Welcome, you are visiting this site for the first time!</h1>");
		}else{
			out.println("<h1> Welcome back! your id is: "+id+"</h1>");
		}
		out.close();
	}
}