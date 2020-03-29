import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
        // Get a writer pointer to display successful result
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        //getting details from the registration form 
        String name=String.valueOf(request.getParameter("name"));
        String email=String.valueOf(request.getParameter("email"));
		String username=String.valueOf(request.getParameter("username"));
        String password=String.valueOf(request.getParameter("password"));
        String address=String.valueOf(request.getParameter("address"));
        try {
            // Initialize the database
            Connection con = DatabaseConnection.initializeDatabase();
            // Create a SQL query to insert data into
            // usertable(username,password)
            PreparedStatement pst = con.prepareStatement("insert into users(name,email,username,password,address) values(?,?,?,?,?)");
            //Program Example (InsertDataServlet.java)
            // sets the data to pst pointer
            pst.setString(1, name);
            pst.setString(2, email);
            pst.setString(3, username);
            pst.setString(4, password);
            pst.setString(5, address);
            // Execute the insert command using executeUpdate()
            pst.executeUpdate();
            out.println("<div style='background-color:green; padding:10px; text-align:center;'><h2 style='color:white'>You are Registered successfully!</h2></div>");
            out.println("<div style='padding:10px;'><a href='login.html' style='background-color:blue;color:white;'>Login</a></div>");
            // Close all the connections
            pst.close(); 
            con.close();
        } catch (Exception e) {
            out.println("<div style='background-color:red; padding:10px; text-align:center;'><h2 style='color:white'>Something went wrong go back!</h2></div>");
        }
        out.println("</body></html>");
        out.close();
    }
}
