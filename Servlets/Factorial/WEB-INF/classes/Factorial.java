import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.math.BigInteger;

public class Factorial extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		try{
			res.setContentType("text/html");  
			//for writing on a web server
			//get the variable n from url by get method
			int n=Integer.parseInt(req.getParameter("n"));
			
			PrintWriter out=res.getWriter();
			
			out.println("Factorial  of "+n+" is : "+fact(n));
			out.close();
		}catch(Exception e){
			
		}
	}
	BigInteger fact(int n){
		BigInteger fact=BigInteger.valueOf(1);
		for(int i=2; i<=n; i++){
			fact=fact.multiply(BigInteger.valueOf(i));
		}
		return fact;
	}
}