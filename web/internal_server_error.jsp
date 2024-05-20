<%-- 
    Document   : internal_server_error
    Created on : May 14, 2024, 5:16:29 PM
    Author     : sibus
--%>

<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>internal_server_error Page</title>
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
       
        <table>
            <tr>
                <td><h1>Null pointer Error</h1></td>
            </tr>
            <tr>
                <td><img src="warning2.jpg" height="100" width="100" alt="warning image"/></td>
            </tr>
            <tr>
                <td><p><b>Null Pointer Encountered</b></p></td>
            </tr>
            <tr>
                <td>Click <a href="index.html">here</a> to Logout</td>
            </tr>

        </table>
    </body>
</html>
