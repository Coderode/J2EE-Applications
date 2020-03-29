import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
        // Get a writer pointer to display successful result
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        //getting details from the login form 
		String username=String.valueOf(request.getParameter("username"));
        String password=String.valueOf(request.getParameter("password"));
        try {
            // Initialize the database
            Connection con = DatabaseConnection.initializeDatabase();
            // Create a SQL query to insert data into
            // usertable(username,password)
            Statement st = con.createStatement();
            //Program Example (InsertDataServlet.java)
            // sets the data to pst pointer
            String sql="select * from users where username='"+username+"' and password='"+password+"'";
            // Execute the insert command using executeUpdate()
            ResultSet rs=st.executeQuery(sql);
            if(rs.first()){
                String s=new StringBuilder()
                .append("<div style='background-color:lightgreen; padding:20px;'>")
                .append("<div style='padding:20px; margin-left:30%; border:1px solid black; width:40%;'>")
                .append("<p>Name : "+rs.getString("name")+"</p>")
                .append("<p>Email : "+rs.getString("email")+"</p>")
                .append("<p>Username : "+rs.getString("username")+"</p>")
                .append("<p>Password : "+rs.getString("password")+"</p>")
                .append("<p>Address : "+rs.getString("address")+"</p>")
                .append("</div>")
                .append("</div>")
                .append("<div style='padding:20px;'><a href='index.html' style='background-color:blue;color:white; padding:10px;'>Logout</a></div>")
                .toString();
                out.println(s);
            }else{
                out.println("<div style='background-color:red; padding:10px; text-align:center;'><h2 style='color:white'>Something went wrong go back!</h2></div>");
            }
            
            // Close all the connections
            st.close(); 
            con.close();
        } catch (Exception e) {
            out.println("<div style='background-color:red; padding:10px; text-align:center;'><h2 style='color:white'>Something went wrong go back!</h2></div>");
            out.println(e);
        }
        out.println("</body></html>");
        out.close();
    }
}
