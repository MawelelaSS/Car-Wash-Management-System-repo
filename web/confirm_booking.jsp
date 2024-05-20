<%-- 
    Document   : confirm_booking
    Created on : May 5, 2024, 2:03:40 PM
    Author     : sibus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Confirm Booking Page</title>
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
            margin: 1px auto; /* Center table horizontally */
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        td {
            padding: 5px 10px;
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

        a {
            text-decoration: none;
            color: blue;
        }
    </style>
</head>
<body>
<%
    String service = (String) session.getAttribute("service");
    double price = (Double) session.getAttribute("price");
    String description = (String) session.getAttribute("description");
%>
<form action="ChoosePaymentMethodServlet.do" method="POST">
    <table>
        <tr>
            <td></td>
            <td><h1>Confirm Booking</h1></td>
        </tr>           
        <tr>
            <td>Service Selected : </td>
            <td><b><%=service%></b></td>
        </tr>
        <tr>
            <td>Total Price :</td>
            <td><b>R<%=price%></b></td>
        </tr>
        <tr>
            <td>Service Description : </td>
            <td><b><%=description%></b></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="choose_payment_method.jsp"><input type="submit" value="MAKE PAYMENT"></a></td>
        </tr>
    </table>
</form>
</body>
</html>
