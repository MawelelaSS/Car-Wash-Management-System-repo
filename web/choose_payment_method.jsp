<%-- 
    Document   : choose_payment_method
    Created on : May 5, 2024, 3:11:19 PM
    Author     : sibus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>choose_payment_method Page</title>
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

        p {
            margin-bottom: 20px;
            text-align: center;
        }

        td {
            padding: 10px;
            text-align: center;
        }

        select {
            padding: 5px;
            width: 100%;
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
<form action="PaymentServlet.do" method="POST">
    <table>
        <tr>
            <td><h1>Choose Payment Method</h1></td>
        </tr>
        <tr>
            <td><p><b>Please choose a payment method below</b></p></td>
        </tr>
        <tr>
            <td>Payment Method: </td>
        </tr>
        <tr>
            <td>
                <select name="paymentMethod">
                    <option value="Cash Payment">Cash Payment</option>
                    <option value="Card Payment">Card Payment</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><input type="submit" value="CHOOSE"></td>
        </tr>
    </table>
</form>
</body>
</html>
