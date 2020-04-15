<%@ include file="logout.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Student Examination</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <style>
        a{
            padding:15px;
            background-color:rgb(105, 38, 212);
            border:3px solid lightblue;
            border-radius: 15px;
            color:white;
            text-decoration: none;
            margin:20px;
            font-size:25px;
        }
        a:hover{
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
        <div><h2>Explore as...</h2></div>
        <br><br><br><br><br>
        <div>
            <a href="student.jsp">Student</a>
            <a href="adminLogin.jsp">Admin</a>
        </div>
    </div>
    
</body>
</html>

