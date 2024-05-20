<%-- 
    Document   : adding_employee_outcomes
    Created on : Apr 16, 2024, 6:04:00 PM
    Author     : sibus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Adding Employee Outcome Page</title>
    <style>
        body {
            background-image: url('car-wash-clipart-png-download.png');
            background-size: cover;
            text-align: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
        }

        table {
            margin: 1px auto;
            text-align: center;
            background-color: whitesmoke;
            padding: 20px;
        }

        h1 {
            font-weight: bold;
            font-size: 40px;
        }

        p {
            font-size: 18px;
        }

        a {
            color: blue;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <%
        String name = (String) request.getAttribute("name");
    %>
    <table>
        <tr>
            <td colspan="2"><h1>Employee Added</h1></td>
        </tr>
        <tr>
            <td></td>
            <td><p><b><%=name%></b> has been added/persisted to database</p></td>
        </tr>
        <tr>
            <td></td>
            <td>Please Click <a href="admin_login_outcome.jsp">here</a> to do another operation OR <a href="index.html">here</a> to logout</td>
        </tr>
    </table>
</body>
</html>