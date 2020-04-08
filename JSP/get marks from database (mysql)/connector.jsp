<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.TimeZone"%>
<%
    Connection con=null;
    try{
        String dbDriver = "com.mysql.cj.jdbc.Driver";
        // Database name to access
        String dbName = "j2ee_jsp_student";
        String dbURL = "jdbc:mysql://localhost:3306/"+dbName+"?serverTimezone=" + TimeZone.getDefault().getID();
        String dbUsername = "root";
        String dbPassword = "";
        Class.forName(dbDriver);
        con = DriverManager.getConnection(dbURL,dbUsername,dbPassword);
    }catch(Exception e){
        out.println(e);
    }
%>