<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>JSP with mysql</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
</head>
<body>
    <div style="text-align: center;">
        <h2>Get Student marks</h2>
        <form action="showmarks.jsp" method="POST">
            <label for="regNumber">Enter the Registration Number: </label><br>
            <input type="number" name="regNumber" required autofocus/><br>
            <input type="submit" value="Get"/>
        </form>
    </div>
    
</body>
</html>