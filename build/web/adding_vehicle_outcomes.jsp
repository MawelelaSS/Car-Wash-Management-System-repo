<%-- 
    Document   : adding_vehicle_outcomes
    Created on : Apr 12, 2024, 5:51:05 PM
    Author     : sibus
--%>

<%@page import="za.ac.tut.entity.Car"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>List Of Cars</title>
    <style>
        body {
            background-image: url('car-wash-clipart-png-download.png');
            background-size: cover;
            text-align: center;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .table-container {
            margin-bottom: 20px;
            background-color: whitesmoke;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-weight: bold;
            font-size: 40px;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        th, td {
            padding: 10px;
        }

        input[type="submit"], input[type="button"] {
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

        input[type="submit"]:hover, input[type="button"]:hover {
            background-color: darkblue;
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
    Customer customer = (Customer) session.getAttribute("customer");
    List<Car> vehicleList = (List<Car>) session.getAttribute("carList");
%>
<div class="table-container">
    <h1>List Of Cars</h1>
    <p>Hey <b><%=customer.getName()%></b>, here's the list of car(s) you added:</p>
    <table>
        <tr>
            <th>Registration</th>
            <th>Manufacturer</th>
            <th>Model</th>
            <th>Year</th>
        </tr>
        <% for (Car car : vehicleList) { %>
            <tr>
                <td><%= car.getRegistration() %></td>
                <td><%= car.getManufacturer() %></td>
                <td><%= car.getModel() %></td>
                <td><%= car.getYear() %></td>
            </tr>
        <% } %>
    </table>
</div>
<div class="table-container">
    <form action="AddToAppointmentServlet.do" method="POST">
        <input type="submit" value="COMPLETE SIGN IN"> <a href="customer_login_outcome.jsp"><input type="button" value="ADD ANOTHER CAR"></a>
    </form>
    
</div>
</body>
</html>