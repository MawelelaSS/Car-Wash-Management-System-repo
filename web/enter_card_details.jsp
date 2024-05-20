<%-- 
    Document   : booking_complete
    Created on : May 5, 2024, 3:23:34 PM
    Author     : sibus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Booking Complete Page</title>
    <style>
        body {
            background-image: url('car-wash-clipart-png-download.png'); /* Set background image */
            background-size: cover; /* Cover the entire viewport */
            background-color: #ffffff; /* Set background color */
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
            margin: 10px auto; /* Center table horizontally */
        }

        td {
            text-align: left; /* Center align td elements */
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        input[type="text"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        b {
            color: #007bff;
        }
    </style>
</head>
<body>
<table align="center">
    <tr>
        <td><h1>Booking Complete!</h1></td>
    </tr>
    <tr>
        <td><b>Please enter the card details below</b></td>
    </tr>
    <form action="payement_completed.jsp" method="POST">
        <tr>
            <td>Card Number:</td>
            <td><input type="text" name="cardNumber"></td>
        </tr>
        <tr>
            <td>CVV:</td>
            <td><input type="text" name="cvv"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="COMPLETE PAYMENT"></td>
        </tr>
    </form>
</table>
</body>
</html>
