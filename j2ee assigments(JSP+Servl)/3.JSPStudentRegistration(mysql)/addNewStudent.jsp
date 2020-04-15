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
    <title>Add new student</title>
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
            <span style="font-size: 25px; float:left;">Admin Page ( <%= adminName+", "+adminId %> ) </span>
            <a href="index.jsp?logout=1" style="float:right; color:white; font-size: 20px;">Logout</a>
            <a href="adminPage.jsp" style="float:right; color:white; font-size: 20px; margin-right: 15px;">Go Back</a>
        </div>
        <h2>Enter Details to add new student in database with marks</h2>
        <div id="generateForm">
            <form method="POST" action="updateNewStudent.jsp">
                <input type="number" name="id" placeholder="Student Id" required autofocus><br><br>
                <input type="text" name="name" required placeholder="Name"><br><br>
                <input type="email" name="email" required placeholder="Email"><br><br>
                <input type="text" name="phone" required placeholder="Phone" size="10"><br><br>
                <input type="text" name="address" placeholder="Address"><br><br>
                Paper1 : <input type="number" name="paper1"  placeholder="paper1" min="0" max="100" value="0"><br>
                Paper2 : <input type="number" name="paper2"  placeholder="paper2" min="0" max="100" value="0"><br>
                Paper3 : <input type="number" name="paper3"  placeholder="paper3" min="0" max="100" value="0"><br>
                Paper4 : <input type="number" name="paper4"  placeholder="paper4" min="0" max="100" value="0"><br>
                Paper5 : <input type="number" name="paper5"  placeholder="paper5" min="0" max="100" value="0"><br>
                <input type="submit" value="Submit" >
            </form>
        </div>
    </div>
</body>
</html>