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
        <h2>Enter details to edit its content</h2>
        <div id="editForm">
            <form action="editMarksForm.jsp" method="POST">
                <label for="studentName">Enter Student Name: </label><br><br>
                <input type="text" name="studentName" placeholder="Student Name" required autofocus/><br>
                <br>
                <label for="studentId">Enter Student Id Number: </label><br>
                <br>
                <input type="number" name="studentId" placeholder="Student Id" required/><br>
                <br>
                <input type="submit" value="Edit"/>
            </form>
        </div>
    </div>
</body>
</html>