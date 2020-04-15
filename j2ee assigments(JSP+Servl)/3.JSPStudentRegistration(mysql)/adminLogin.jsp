
<%
    if(session != null && session.getAttribute("adminName")!=null){
        request.getRequestDispatcher("adminPage.jsp").include(request, response); 
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Admin login</title>
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
            <a href="index.jsp" style="float:left; color:white; font-size: 20px;">Home</a>
        </div>
        <br>
        <h2>Admin Login</h2>
        <form action="checkAdminDetails.jsp" method="POST">
            <label for="adminUsername">Enter Username: </label><br><br>
            <input type="text" name="adminUsername" placeholder="Username" required autofocus/><br>
            <br>
            <label for="adminPassword">Enter Password: </label><br>
            <br>
            <input type="password" name="adminPassword" placeholder="Password" required/><br>
            <br>
            <input type="submit" value="Login"/>
        </form>
    </div>
</body>
</html>