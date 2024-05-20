<%-- 
    Document   : blank_car_details_fields
    Created on : May 11, 2024, 1:17:24 PM
    Author     : sibus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>blank_car_details_fields Page</title>
    </head>
    <body>
         <style>
            body {
                background-image: url('car-wash-clipart-png-download.png');
                background-size: cover;
                background-color: #ffffff;
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 80vh;
            }

            table {
                background-color: whitesmoke;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                margin: 10px auto;
            }

            h1 {
                text-align: center;
                margin-bottom: 20px;
            }

            td {
                padding: 10px;
                text-align: center;
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
        <%
            String error = exception.getMessage();
        %>
        <table>
            <tr>
                <td><h1>Car Empty Fields Error</h1></td>
            </tr>
            <tr>
                <td><img src="warning2.jpg" height="100" width="100" alt="warning image"/></td>
            </tr>
            <tr>
                <td><p>Error==========><%=error%></p></td>
            </tr>
            <tr>
                <td>Click <a href="customer_login_outcome.jsp"> here </a> to try again OR <a href="index.html">here</a> to Logout</td>
            </tr>

        </table>
    </body>
</html>

