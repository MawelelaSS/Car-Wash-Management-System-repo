<%-- 
    Document   : select_service
    Created on : May 5, 2024, 1:09:04 PM
    Author     : sibus
--%>

<%@page import="za.ac.tut.entity.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>select_service Page</title>
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
            height: 80vh; /* Ensure full viewport height */
        }

        table {
            background-color: whitesmoke; /* Set table background color with opacity */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin: 10px auto; /* Center table horizontally */
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        p {
            text-align: center;
        }

        input[type="radio"] {
            margin-bottom: 10px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: blue;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: darkblue;
        }
    </style>
</head>
<body>
<%
Customer customer = (Customer)session.getAttribute("customer");
%>
<table align="center">
    <form action="SeviceSelectionServlet.do" method="POST">
        <tr>
            <td></td>
            <td> <h1>Select Service</h1></td>
        </tr>
        <tr>
            <td></td>
            <td>Hey <b><%=customer.getName()%></b> please select one of the services below</td>
        </tr>

        <tr>
            <td></td>
            <td> <input type="radio" id="fullWash" name="service"  value="Full Wash"/> Full wash</td>
        </tr>
        <tr>
            <td></td>
            <td> <input type="radio"  id="interiorWash" name="service" value="Interior Wash" /> Interior Wash</td>
        </tr>
        <tr>
            <td></td>
            <td> <input type="radio" id="premiumWash" name="service"  value="Premium Wash"/> Premium Wash</td>
        </tr>
        <tr>
            <td></td>
            <td> <input type="radio" id="basicWash" name="service" value="Basic Wash"/> Basic Wash</td>
        </tr>
        <tr>
            <td></td>
            <td style="text-align: center;"><input type="submit" value="SELECT"></td>
        </tr>

    </form>
</table>

</body>
</html>
