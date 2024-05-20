<%-- 
    Document   : confirm_wash
    Created on : May 8, 2024, 10:18:30 AM
    Author     : sibus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>confirm wash Page</title>
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
        
        input[type="submit"] {
            background-color: blue;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-bottom: 20px;
            cursor: pointer;
            border-radius: 5px;
        }

        input[type="submit"]:hover {
            background-color: darkblue;
        }
    </style>
</head>
    <body>

        <form action="ConfirmWashServlet.do" method="POST">
            <table>
                <tr>
                    <td><h1>confirm_wash</h1></td>
                </tr>
                <tr>
                    <td>Please enter the appointment id of the appointment you attended</td>
                </tr>
                <tr>
                    <td>Appointment ID: <input type="text" size="40"name="appointmentID"></td>
                </tr>
                <tr>
                    <td style="text-align: center;"><input type="submit" value="CONFIRM"></td>
                </tr>


            </table>
        </form> 
    </body>
</html>
