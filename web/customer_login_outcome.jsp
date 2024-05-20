<%-- 
    Document   : customer_login_outcome
    Created on : Apr 11, 2024, 4:01:17 PM
    Author     : sibus
--%>

<%@page import="za.ac.tut.entity.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Login Outcome Page</title>
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
                height: 100vh;
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
                font-size: 18px;
                margin-bottom: 20px;
                text-align: center;
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

        <%
            Customer customer = (Customer) session.getAttribute("customer");
        %>

        <form action="CarServlet.do" method="POST">
            <table align="center">
                <tr>
                    <td><h1>Customer Login Outcome</h1></td>
                </tr>
                <tr>
                    <td><p>Hey <b><%=customer.getName()%></b>, you are nearly there</p></td>
                </tr>
                <tr>
                    <td><p>Please enter your car details below:</p></td>
                </tr>
                <tr>
                    
                    <td><b>Registration:</b> <input type="text" name="registration" required=""></td>
                </tr>
                <tr>
                    
                    <td><b>Manufacturer:</b><input type="text" name="manufacturer" required=""></td>
                </tr>
                <tr>
                    
                    <td><b>Model:</b><input type="text" name="model" required=""></td>
                </tr>
                <tr>
                    
                    <td><b>Model Year:</b><input type="text" name="year" required=""></td>
                </tr>
                <tr>
                    
                    <td><input type="submit" value="ADD CAR"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
