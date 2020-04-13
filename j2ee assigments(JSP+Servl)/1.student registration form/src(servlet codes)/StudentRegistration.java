import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Random;
public class StudentRegistration extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		//getting details from the page
		res.setContentType("text/html");
		
		//retriveig details from the page by post method
		String name=req.getParameter("firstname")+" "+req.getParameter("middlename")+" "+req.getParameter("lastname");
        String fatherName=req.getParameter("fathername");
		String gender=String.valueOf(req.getParameter("gender"));
		String dob=String.valueOf(req.getParameter("dob"));
		String email=String.valueOf(req.getParameter("email"));
		String phone=String.valueOf(req.getParameter("phone"));
		double tenth=Double.parseDouble(req.getParameter("tenthmarks"));
		double twelth=Double.parseDouble(req.getParameter("twelthmarks"));
		double grad=Double.parseDouble(req.getParameter("gradmarks"));
		String compName=req.getParameter("compname");
		int duration=Integer.parseInt(req.getParameter("duration"));
		String designation=req.getParameter("designation");
		String description=req.getParameter("description");
		
		PrintWriter out=res.getWriter();
		
		
		// design the page with details  :: compressed code of html format to write in single line.
		out.print("<!DOCTYPE html><html> <head> <meta charset='utf-8'> <meta http-equiv='X-UA-Compatible' content='IE=edge'> <meta name='viewport' content='width=device-width, initial-scale=1'> <link href='"+req.getContextPath()+"/css/bootstrap.min.css' rel='stylesheet' type='text/css'> <title>Registration2020</title> <style> #box{ border:1px solid #1106ac; border-radius:20px; margin-top:20px; padding-left:20px; padding-right:20px; background-color:#f9f0f3; } #heading{ color:#3d749d; background-color:#d0f0e9; text-align:center; border-radius:10px; margin-bottom:20px; } .table-borderless > tbody > tr > td { border: none; font-size:16px; } </style> </head> <body> <br> <div class='container'><div class='alert alert-success' style='text-align:center;'><strong>You are successfuly Registered !</strong></div> <div id='box'> <div id='heading'> <img src='"+req.getContextPath()+"/images/logo.png' style='height:70px; width:70px; margin:10px 0px 0px 10px;' class='pull-left'> <h1>TechGiants</h1> <h5>A leading company in the field of software development</h5> <h6>F-234,New Delhi India.</h6> </div><hr> <div id='section1'> <p><span style='background-color:#d0f0e9; padding:10px; color:grey; font-size:18px; margin-bottom:30px; border-radius:10px;'>Personal Details</span></p><br> <table class='table table-striped table-hover table-borderless'> <tbody> <tr> <td>Name</td> <td>:</td> <td>"+name+"</td> </tr> <tr> <td>Father's Name</td> <td>:</td> <td>"+fatherName+" </td> </tr> <tr> <td>Gender</td> <td>:</td> <td>"+gender+"</td> </tr> <tr> <td>Date Of Birth</td> <td>:</td> <td>"+dob+"</td> </tr> <tr> <td>Email</td> <td>:</td> <td>"+email+"</td> </tr> <tr> <td>Phone No.</td> <td>:</td> <td>"+phone+"</td> </tr> </tbody> </table> </div><br> <div id='section2'> <p><span style='background-color:#d0f0e9; padding:10px; color:grey; font-size:18px; border-radius:10px;'>Academic Details</span></p><br> <table class='table table-striped table-hover table-borderless'> <tbody> <tr> <td>10<sup>th</sup> Percentage</td> <td>:</td> <td>"+tenth+"</td> </tr> <tr> <td>12<sup>th</sup> Percentage</td> <td>:</td> <td>"+twelth+"</td> </tr> <tr> <td>Graduation Percentage</td> <td>:</td> <td>"+grad+"</td> </tr> </tbody> </table> </div><br> <div id='section3'> <p><span style='background-color:#d0f0e9; padding:10px; color:grey; font-size:18px; border-radius:10px;'>Work Experience</span></p><br> <table class='table table-striped table-hover table-borderless'> <tbody> <tr> <td>Company Name</td> <td>:</td> <td>"+compName+"</td> </tr> <tr> <td>Duration</td> <td>:</td> <td>"+duration+" year</td> </tr> <tr> <td>Designation</td> <td>:</td> <td>"+designation+"</td> </tr> <tr> <td>Work Description</td> <td>:</td> <td>"+description+" </td> </tr> </tbody> </table> </div><br> </div> </div><br><br> </body></html>");
		out.close();
	}
}