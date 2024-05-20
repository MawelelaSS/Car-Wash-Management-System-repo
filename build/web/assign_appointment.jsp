<%-- 
    Document   : assign_appointment
    Created on : May 7, 2024, 12:11:26 PM
    Author     : sibus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Assign Appointment Page</title>
    <style>
        body {
            background-image: url('car-wash-clipart-png-download.png'); /* Set background image */
            background-size: cover; /* Cover the entire viewport */
            font-family: Arial, sans-serif; /* Set font */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
        }

        table {
            background-color: whitesmoke; /* Set table background color with opacity */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        td {
            padding: 10px;
        }

        input[type="submit"] {
            background-color: blue;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }

        input[type="submit"]:hover {
            background-color: darkblue;
        }
    </style>
</head>
<body>
<form action="AssignAppoimentServlet.do" method="POST">
    <table>
        <tr>
            <td></td>
            <td><h1>Assign Appointment to Car Washer</h1></td>
        </tr>
        <tr>
            <td></td>
            <td>Employee ID: <input type="text" name="empID"></td>
        </tr>
        <tr>
            <td></td>
            <td>Appointment ID: <input type="text" name="appointmentID"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="ASSIGN"></td>
        </tr>
    </table>
</form>
</body>
</html>
