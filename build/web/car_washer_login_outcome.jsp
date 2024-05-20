<%-- 
    Document   : car_washer_login_outcome
    Created on : May 7, 2024, 4:05:20 PM
    Author     : sibus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Car Washer Login Outcome Page</title>
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

        a {
            color: blue;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<table>
    <tr>
        <td><h1>Car Washer Login Outcome</h1></td>
    </tr>
    <tr>
        <td><p><b>Please select what you want to do:</b> </p></td>
    </tr>
    <tr>
        <td><a href="ViewWasherAppointmentsServlet.do">View Appointments</a></td>
    </tr>
    <tr>
        <td><a href="confirm_wash.jsp">Confirm Wash</a></td>
    </tr>
</table>
</body>
</html>
