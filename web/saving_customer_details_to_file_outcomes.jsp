<%-- 
    Document   : saving_customer_details_to_file_outcomes
    Created on : May 11, 2024, 11:01:25 AM
    Author     : sibus
--%>

<%@page import="java.io.File"%>
<%@page import="za.ac.tut.entity.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>saving_customer_details_to_file_outcomes Page</title>
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
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                margin: 10px auto; /* Center table horizontally */
            }

            h1 {
                text-align: center;
                margin-bottom: 20px;
            }

            td {
                padding: 10px; /* Add padding to table cells */
            }

            a {
                text-decoration: none;
                color: blue;
            }
        </style>
    </head>
    <body>
        <%
            Customer customer = (Customer) session.getAttribute("customer");
            File file = (File)request.getAttribute("file");
            
        %>
        <table>
            <tr>
                <td><h1>Saving Details To File Outcomes</h1></td>
            </tr>
            <tr>
                <td>Hey <b> <%=customer.getName()%></b> you successfully save your details to a text file please check absolute path <b><%=file.getAbsolutePath()%></b></td>
            </tr>
            <tr>
                <td>Click <a href="customer_operation_choice.jsp">here</a> to go to menu OR <a href="index.html">here</a> to Logout</td>
            </tr>

        </table>

    </body>
</html>
