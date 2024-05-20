<%-- 
    Document   : updating_email_outcomes
    Created on : May 8, 2024, 9:36:30 AM
    Author     : sibus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Updating Email Outcomes Page</title>
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
            String email = (String) request.getAttribute("email");
            String oldEmail = (String) request.getAttribute("oldEmail");
        %>

        <table>
            <tr>
                <td><h1>Updating Email Outcomes</h1></td>
            </tr>
            <tr>
                <td>You Successfully updated your email from <b><%=oldEmail%></b> to <b> <%=email%></b>
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>Please Click <a href="customer_operation_choice.jsp"> here </a> to go to menu OR <a href="index.html">here</a> to Logout</td>
            </tr>
        </table>
    </body>
</html>
