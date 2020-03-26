import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class PrintPdf extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		//getting details from the page
		res.setContentType("application/pdf");
		
		PrintWriter out=res.getWriter();
		
		
		
		out.close();
	}
}