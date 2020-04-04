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
        
        //creating username for temperary use
		String tempUsername=null;
        
        
        //checking if cookie exist
        Cookie c[]=req.getCookies();
        if(c!=null){
            for(int i=0; i<c.length; i++){
                if(c[i].getName().equals("dcsusername")){
                    tempUsername=c[i].getValue();
                    break;
                }
            }
        }
        if(tempUsername != null){
            //if exist then redirect to profile page
            req.getRequestDispatcher("profile.html").include(req, res); 
            out.println("<h1 style='text-align:center; color:darkgreen;'>Welcome "+tempUsername+" to the Our Website!</h1>");
            out.println("<h2 style='text-align:center; color:green;'>Thanks for coming again!.</h2>");
        }else{
			//redirect to login form
            req.getRequestDispatcher("login.html").include(req, res);  
        }
        out.close();
	}
}