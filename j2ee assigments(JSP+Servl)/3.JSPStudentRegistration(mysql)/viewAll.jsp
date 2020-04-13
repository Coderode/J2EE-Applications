<%
    //checking for unauthorized access
    if(session == null || session.getAttribute("adminName") == null ){
        request.getRequestDispatcher("index.jsp").include(request, response); 
    }
    String adminName=(String)session.getAttribute("adminName");
    String adminId=String.valueOf(session.getAttribute("adminId"));
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Student details</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <style>
        table, th, td {
            border: 2px solid black;
            border-collapse: collapse;
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
    </style>
</head>

<body>
    <div style="text-align: center;">
        <div style="color : white;background-color: blue; border-radius:20px; padding:10px;">
            <h2>Department Of Computer Science</h2>
            <h4>Examination Processing</h4>
        </div>
        <br>
        <div style="color:white; background-color:rgb(105, 38, 212); padding:30px; border-radius:20px; ">
            <span style="font-size: 25px; float:left;">Admin Page ( <%= adminName+", "+adminId %> ) </span>
            <a href="index.jsp?logout=1" style="float:right; color:white; font-size: 20px;">Logout</a>
            <a href="adminPage.jsp" style="float:right; color:white; font-size: 20px; margin-right: 15px;">Go Back</a>
        </div>
        <br><br>
        <div id="details" style="margin:10px 30px 0 30px;">
            <table style="width: 100%;">
                <thead>
                    <tr>
                        <th>StudentId</th>
                        <th>Name</th>
                        <th>Paper1</th>
                        <th>Paper2</th>
                        <th>Paper3</th>
                        <th>Paper4</th>
                        <th>Paper5</th>
                    </tr>
                </thead>
                <tbody>
                    <%@ include file="connection.jsp" %>
                    <% 
                        
                        try{
                            String sql=null;
                            Statement st1=con.createStatement();
                            Statement st2=con.createStatement();
                            sql="SELECT * FROM student order by id";
                            ResultSet rs1=st1.executeQuery(sql);
                            sql = "SELECT * FROM marks order by stud_id";
                            ResultSet rs2 = st2.executeQuery(sql);
                            while(rs1.next() && rs2.next()){
                                out.print("<tr>");
                                    out.print("<td>"+rs1.getInt("id")+"</td>");
                                    out.print("<td>"+rs1.getString("name")+"</td>");
                                    out.print("<td>"+rs2.getInt("paper1")+"</td>");
                                    out.print("<td>"+rs2.getInt("paper2")+"</td>");
                                    out.print("<td>"+rs2.getInt("paper3")+"</td>");
                                    out.print("<td>"+rs2.getInt("paper4")+"</td>");
                                    out.print("<td>"+rs2.getInt("paper5")+"</td>");
                                out.print("</tr>");
                            }
                            st1.close();
                            st2.close();
                            con.close();
                        }catch(Exception e){
                            out.print("Some error occured<br>"+e);
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>