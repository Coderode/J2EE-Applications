<%@ include file="connector.jsp" %>  
<%@ include file="process.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>marks</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <style>
        table, th, td {
            border: 1px solid black;
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
        <h2>Student Marks</h2>
        <table style="width: 100%;">
            <tbody>
                <tr><td>Name</td><td><% out.print(name);%></td></tr>
                <tr><td>Reg No.</td><td><% out.print(registrationNumber);%></td></tr>
                <tr><td>Sub1</td><td><% out.print(marks[0]);%></td></tr>
                <tr><td>Sub2</td><td><% out.print(marks[1]);%></td></tr>
                <tr><td>Sub3</td><td><% out.print(marks[2]);%></td></tr>
                <tr><td>Sub4</td><td><% out.print(marks[3]);%></td></tr>
                <tr><td>Sub5</td><td><% out.print(marks[4]);%></td></tr>
            </tbody>
        </table>
        <br><br>
        <a href="index.jsp">Go Back</a>
    </div>
</body>
</html>