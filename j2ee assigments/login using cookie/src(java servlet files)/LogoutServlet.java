import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class LogoutServlet extends HttpServlet{
    
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
        //redirect to index.html
        req.getRequestDispatcher("index.html").include(req, res);  
		//destroy the existing session in the user's browser
        Cookie c1 = new Cookie("dcsusername", null); // Not necessary, but saves bandwidth.
        c1.setMaxAge(0); // Don't set to -1 or it will become a session cookie!
        res.addCookie(c1);
        out.print("<h4>You are successfully logged out!</h4>"); 
        out.close();
	}
}