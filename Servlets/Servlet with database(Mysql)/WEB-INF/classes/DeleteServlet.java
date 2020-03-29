import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
        // Get a writer pointer to display successful result
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        //getting details from the delete form 
		String email=String.valueOf(request.getParameter("email"));
        try {
            // Initialize the database
            Connection con = DatabaseConnection.initializeDatabase();
            // Create a SQL query to insert data into
            // usertable(username,password)
            Statement st = con.createStatement();
            //Program Example (InsertDataServlet.java)
            // sets the data to pst pointer
            // Execute the insert command using executeUpdate()
            String sql="delete from users where email='"+email+"'";
            int result=st.executeUpdate(sql);
            if(result==1){
                out.println("<div style='background-color:green; padding:10px; text-align:center;'><h2 style='color:white'>Successfully deleted!</h2></div>");
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
