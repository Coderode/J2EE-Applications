import java.sql.*;
import java.sql.DriverManager;
import java.util.TimeZone;
public class DatabaseConnection {
    protected static Connection initializeDatabase() throws Exception{
        // Initialize Database Connection related information
        //String dbDriver = "com.mysql.jdbc.Driver";
        String dbDriver = "com.mysql.cj.jdbc.Driver";
        // Database name to access
        String dbName = "j2ee_servlet_registration";
        String dbURL = "jdbc:mysql://localhost:3306/"+dbName+"?serverTimezone=" + TimeZone.getDefault().getID();
        String dbUsername = "root";
        String dbPassword = "";
        Class.forName(dbDriver);
        Connection con = DriverManager.getConnection(dbURL,dbUsername,dbPassword);
        return con;
    }
}