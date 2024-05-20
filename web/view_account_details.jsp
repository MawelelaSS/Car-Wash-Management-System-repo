<%-- 
    Document   : view_account_details
    Created on : May 11, 2024, 9:56:39 AM
    Author     : sibus
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="za.ac.tut.entity.Car"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view_account_details Page</title>
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
            height:100vh; /* Ensure full viewport height */
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
        input[type="button"] {
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

        input[type="button"]:hover {
            background-color: darkblue; /* Changing background color on hover */
        }
    </style>
    </head>
    <body>
        <%
            Customer customer = (Customer) session.getAttribute("customer");
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd") ;
        %>
        <table>
            <tr>
                <td><h1>Account Details</h1></td>
            </tr>
            <tr>
                <td><p><b>Below are your account details</b></p></td>
            </tr>
            <tr>
                <td>Your ID: <b><%=customer.getId()%></b></td>
            </tr>
            <tr>
                <td>Name: <b><%=customer.getName()%></b></td>
            </tr>
            <tr>
                <td>Phone Number: <b><%=customer.getPhoneNumber()%></b></td>
            </tr>
            <tr>
                <td>Email Address: <b><%=customer.getEmail()%></b></td>
            </tr>
            <tr>
                <td>Gender: <b><%=customer.getGender()%></b></td>
            </tr>
            <tr>
                <td>Date of Birth: <b><%=format.format(customer.getDob())%></b></td>
            </tr>
            <tr>
                <td>Password: <b><%=customer.getPassword()%></b></td>
            </tr>
            <tr>
                <td><b>================Your Car(s) details=================</b></td>
            </tr>
            <tr>
                <td>
                     <table border = "1">
            <%
                List<Car> carsList = customer.getCars();
                for (int i = 0; i < carsList.size(); i++) {
                    Car car = carsList.get(i);
            %>
            <tr>
                <th>REGISTRATION</th>
                <th>MANUFACTURER</th>
                <th>MODEL</th>
                <th>MODEL YEAR</th>
            </tr>
            <tr>
                <td><%=car.getRegistration()%></td>
                <td><%=car.getManufacturer()%></td>
                <td><%=car.getModel()%></td>
                <td><%=car.getYear()%></td>
            </tr>
            <% }
            %>
            </table>
                </td>
                
            </tr>
            <tr>
                <td><a href="SaveToFile.do"><input type="button" value="SAVE TO TXT FILE"></a>     <a href="customer_operation_choice.jsp"><input type="button" value="VIEW MENU"></a>     <a href="index.html"><input type="button" value="LOGOUT"></a></td>
            </tr>

        </table>
             
    </body>
</html>
