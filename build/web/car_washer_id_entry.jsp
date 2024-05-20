<%-- 
    Document   : car_washer_id_entry
    Created on : May 7, 2024, 4:24:18 PM
    Author     : sibus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Car Washer Id Entry Page</title>
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
            background-color:whitesmoke; /* Set table background color with opacity */
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

        input[type="text"], input[type="submit"] {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            background-color: blue;
            color: white;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: darkblue;
        }
    </style>
</head>
<body>
<form action="CarWasherMenuServlet.do" method="POST">
    <table>
        <tr>
            <td><h1>Car Washer Id Entry</h1></td>
        </tr>
        <tr>
            <td>Enter ID: <input type="text" name="id"></td>
        </tr>
        <tr>
            <td><input type="submit" name="submit" value="SUBMIT"></td>
        </tr>
    </table>
</form>
</body>
</html>
