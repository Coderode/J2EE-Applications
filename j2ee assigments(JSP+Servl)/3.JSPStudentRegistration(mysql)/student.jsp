<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Student</title>
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
        <h2>Get Result Report</h2>
        <form action="generateResult.jsp" method="POST">
            <label for="studentName">Enter Student Name: </label><br><br>
            <input type="text" name="studentName" placeholder="Student Name" required autofocus/><br>
            <br>
            <label for="studentId">Enter Student Id Number: </label><br>
            <br>
            <input type="number" name="studentId" placeholder="Student Id" required/><br>
            <br>
            <input type="submit" value="Get"/>
        </form>
    </div>
</body>
</html>