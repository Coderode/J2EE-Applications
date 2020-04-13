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
    <title>Admin Page</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <style>
        #links a{
            padding:10px;
            background-color:rgb(105, 38, 212);
            border:3px solid lightblue;
            border-radius: 15px;
            color:white;
            text-decoration: none;
            font-size:20px;
        }
        #links a:hover{
            background-color:blue;
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
        </div>
        <br>
        <div id="links">
            <p><a href="viewAll.jsp">View All</a></p><br>
            <p><a href="editMarks.jsp">Edit Marks</a></p><br>
            <p><a href="addNewStudent.jsp">Add New Student with marks</a></p>
        </div>
    </div>
</body>
</html>