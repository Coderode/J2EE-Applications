import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class LoginServlet extends HttpServlet{
    
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
        //actual username and password to be varified (hardcoded to verify)
        String username="Sandeep";
        String password="password";
        
		//for writing on a web server
		res.setContentType("text/html");
		
		
		PrintWriter out=res.getWriter();
        
        //creating username and password for temperary use
		String tempUsername=null;
        String tempPassword=null;
        
        
        //checking for session cookies
        HttpSession session=req.getSession(false); 
        if(session!=null){ //if exist then redirect to profile page
			req.getRequestDispatcher("profile.html").include(req, res); 
            tempUsername=(String)session.getAttribute("username");
            tempPassword=(String)session.getAttribute("password");
            out.println("<h1 style='text-align:center; color:darkgreen;'>Welcome "+tempUsername+" to the Our Website!</h1>");
            out.println("<h2 style='text-align:center; color:green;'>Thanks for coming again!.</h2>");
        }else{
			//redirect to login form
            req.getRequestDispatcher("login.html").include(req, res);  
        }
        out.close();
	}
}