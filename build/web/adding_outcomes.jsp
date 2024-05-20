<%-- 
    Document   : adding_outcomes
    Created on : Apr 11, 2024, 10:03:14 PM
    Author     : sibus
--%>

<%@page import="za.ac.tut.entity.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Adding Outcomes Page</title>
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
            margin: 180px auto;
            text-align: center;
            background-color: whitesmoke;
            padding: 20px;
            border-radius: 10px; /* Adding rounded corners */
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* Adding shadow effect */
        }

        h1 {
            font-weight: bold;
            font-size: 40px;
            margin-bottom: 20px; /* Adding some space below the h1 */
        }

        p {
            font-size: 18px;
            margin-bottom: 20px; /* Adding some space below the paragraph */
        }

        a {
            color: blue;
            text-decoration: none;
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
            margin-bottom: 20px; /* Adding some space below the button */
            cursor: pointer;
            border-radius: 5px; /* Adding rounded corners to the button */
        }

        input[type="submit"]:hover {
            background-color: darkblue; /* Changing background color on hover */
        }
    </style>
</head>
<body>
    <%
        Customer customer = (Customer)session.getAttribute("customer");
    %>
    <table>
        <tr>
            <td></td>
            <td><h1>Adding Customer to Database Outcomes</h1></td>
        </tr>
        <tr>
            <td></td>
            <td><p>Hey <b><%=customer.getName()%></b>, you successfully signed up!</p></td>
        </tr>
        <tr>
            <td></td>
            <td><p><a href="customer_login.html"><input type="submit" value="LOGIN"></a></p></td>
        </tr>
    </table>
</body>
</html>