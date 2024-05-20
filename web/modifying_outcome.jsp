<%-- 
    Document   : modifying_outcome
    Created on : Apr 16, 2024, 6:35:21 PM
    Author     : sibus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modification Outcome Page</title>
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

            a {
                color: #007bff;
                text-decoration: none;
            }

            a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <%
            String oldPos = (String) request.getAttribute("oldPosition");
            String newPos = (String) request.getAttribute("newPosition");
        %>

        <table >
            <tr>
                <td></td>
                <td><h1>Employee Position Updated</h1></td>
            </tr>
            <tr>
                <td></td>
                <td><p><b><%=oldPos%></b> has been updated to <b><%=newPos%></b></p></td>
            </tr>
            <tr>
                <td></td>
                <td>Please Click <a href="admin_login_outcome.jsp">here</a> to do another operation OR <a href="index.html"> here </a> to logout</td>
            </tr>
        </table>

    </body>
</html>
