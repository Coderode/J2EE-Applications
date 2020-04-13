<%@ include file="connection.jsp" %>  
<%@ include file="getStudentDetails.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Result</title>
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
        a{
            border:1px solid blue;
            border-radius:10px;
            background-color:lightgrey;
            padding:20px;
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
        <div id="result" style="border:1px solid lightgrey; border-radius:10px; margin:30px; padding:30px;">
            <p>Name : <%= studentName %></p>
            <p>Student Id : <%= studentId %></p>
            <hr>
            <div style="margin:10px 60px 0 60px;">
                <table style="width: 100%;">
                    <thead>
                        <tr><th>Title</th><th>Marks</th></tr>
                    </thead>
                    <tbody>
                        <tr><td>Paper 1 :</td><td><%= marks[0] %></td></tr>
                        <tr><td>Paper 2 :</td><td><%= marks[1] %></td></tr>
                        <tr><td>Paper 3 :</td><td><%= marks[2] %></td></tr>
                        <tr><td>Paper 4 :</td><td><%= marks[3] %></td></tr>
                        <tr><td>Paper 5 :</td><td><%= marks[4] %></td></tr>
                    </tbody>
                </table>
            </div>
            <br><hr>
            <p>Total Marks : <%= total %>/500</p>
            <p>Result : <%= result %></p>
            <br><hr><br>
            <a href="#" style="background-color: red; color:white; padding:10px;">Print</a>
        </div>
        <br><br>
        <a href="student.jsp">Go Back</a>
        <br><br>
    </div>
</body>
</html>