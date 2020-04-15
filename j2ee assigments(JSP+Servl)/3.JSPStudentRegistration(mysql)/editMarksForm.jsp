<%
    //checking for unauthorized access
    if(session == null || session.getAttribute("adminName") == null ){
        request.getRequestDispatcher("index.jsp").include(request, response); 
    }
    String adminName=(String)session.getAttribute("adminName");
    String adminId=String.valueOf(session.getAttribute("adminId"));
%>
<%@ include file="connection.jsp" %>
<%
    int studentId=Integer.parseInt(request.getParameter("studentId"));
    String studentName=request.getParameter("studentName");
    String email=null;
    String phone=null;
    String address=null;
    int marks[]=new int[5];
    boolean found=true;
    String error="";

    try{
        String sql;
        Statement st=con.createStatement();

        sql="SELECT * FROM student where id='"+studentId+"' and name='"+studentName+"'";
        ResultSet rs1=st.executeQuery(sql);
        if(rs1.first()){
            email=rs1.getString("email");
            phone=rs1.getString("phone");
            address=rs1.getString("address");
            sql = "SELECT * FROM marks where stud_id='"+studentId+"'";
            ResultSet rs2 = st.executeQuery(sql);
            if(rs2.first()){
                marks[0]=rs2.getInt("paper1");
                marks[1]=rs2.getInt("paper2");
                marks[2]=rs2.getInt("paper3");
                marks[3]=rs2.getInt("paper4");
                marks[4]=rs2.getInt("paper5");
            }else{
                error+="error during fetching marks<br>";
                found=false;
            }
        }else{
            error+="Wrong details entered<br>";
            found=false;
        }
        st.close(); 
        con.close();
    }catch(Exception e){
        error+="Error in data fetching<br>";
        found=false;
    }
    if(!found){
        out.println("<br><div style='color:red;border-radius:10px; border:1px solid red; padding:20px; margin:10px; text-align: center;'>"+error+"</div><br>");
        request.getRequestDispatcher("editMarks.jsp").include(request, response);  
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Edit details</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
</head>
<body>
    <div style="text-align: center;">
        <div style="color : white;background-color: blue; border-radius:20px; padding:10px;">
            <h2>Department Of Computer Science</h2>
            <h4>Examination Processing</h4>
        </div>
        <br>
        <div style="color:white; background-color:rgb(105, 38, 212); padding:30px; border-radius:20px; ">
            <span style="font-size: 25px; float:left;">Admin Page ( <%= adminName+", "+adminId %> )</span>
            <a href="index.jsp?logout=1" style="float:right; color:white; font-size: 20px;">Logout</a>
            <a href="adminPage.jsp" style="float:right; color:white; font-size: 20px; margin-right: 15px;">Go Back</a>
        </div>
        <h2>Student Information</h2>
        Name : <%= studentName %><br>
        Id : <%= studentId %><br>
        Email : <%= email %><br>
        Phone : <%= phone %><br>
        Address : <%= address %><hr>
        <h2>Enter Marks/ Edit Marks</h2>
        <div id="editForm">
            <form action=<%= "updateMarks.jsp?id="+studentId %> method="POST">
                Paper1 : <input type="number" name="paper1" value=<%= marks[0] %> min="0" max="100" required autofocus><br>
                Paper2 : <input type="number" name="paper2" value=<%= marks[1] %> min="0" max="100" required ><br>
                Paper3 : <input type="number" name="paper3" value=<%= marks[2] %> min="0" max="100" required ><br>
                Paper4 : <input type="number" name="paper4" value=<%= marks[3] %> min="0" max="100" required ><br>
                Paper5 : <input type="number" name="paper5" value=<%= marks[4] %> min="0" max="100" required ><br>
                <br><input type="submit" value="Update"><br>
            </form>
        </div>
    </div>
</body>
</html>