import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class LoginFormServlet extends HttpServlet{
    
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
        //actual username and password to be varified (hardcoded to verify)
        String username="Sandeep";
        String password="password";
        
		//for writing on a web server
		res.setContentType("text/html");

		PrintWriter out=res.getWriter();
        
        //creating username and password for temperary use
		String tempUsername=null;
        String tempPassword=null;
        
        tempUsername=req.getParameter("username");
        tempPassword=req.getParameter("password");
		
		//checking for username and password
        if(tempUsername.equals(username) && tempPassword.equals(password)){
			//redirect to profile page
            req.getRequestDispatcher("profile.html").include(req, res); 
            out.println("<h1 style='text-align:center; color:darkgreen;'>Welcome "+tempUsername+" to the Our Website!</h1>");
            out.println("<h2 style='text-align:center; color:green;'>you are a new user here!.</h2>");
			//creating session with username and password 
            HttpSession session=req.getSession(); 
            session.setAttribute("username",tempUsername);
            session.setAttribute("password",tempPassword);
			session.setMaxInactiveInterval(60*60*24);  //expires after 24 hrs
            
        }else{
			//if not correct then redirect to login form again
            req.getRequestDispatcher("login.html").include(req, res);  
            out.println("<h1 style='text-align:center; color:red;'>Oops! Wrong username and Password, try again with correct details.</h1>");
        }
        out.close();
	}
}