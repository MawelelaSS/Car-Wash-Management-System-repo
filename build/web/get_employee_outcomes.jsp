<%-- 
    Document   : get_employee_outcomes
    Created on : Apr 16, 2024, 6:53:53 PM
    Author     : sibus
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="za.ac.tut.entity.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Get Employee Page</title>
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
            height: 80vh; /* Adjust height as needed */
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

        td {
            padding: 5px;
        }

        b {
            color: #007bff;
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
    Employee employee = (Employee) request.getAttribute("employee");
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    String dob = format.format(employee.getDob());
%>

<table align="center">
    
    <tr>
        <td><h1>Retrieved Employee</h1></td>
        <td></td>
    </tr>
    <tr>
        <td><h4>Below are the employee details</h4></td>
        <td></td>
    </tr>
    <tr>
        <td>Name:</td>
        <td><b><%=employee.getName()%></b></td>
    </tr>
    <tr>
        <td>Date Of Birth:</td>
        <td><b><%=dob%></b></td>
    </tr>
    <tr>
        <td>Gender:</td>
        <td><b><%=employee.getGender()%></b></td>
    </tr>
    <tr>
        <td>Position:</td>
        <td><b><%=employee.getPosition()%></b></td>
    </tr>
    <tr>
        <td>Salary:</td>
        <td><b><%=employee.getSalary()%></b></td>
    </tr>
    <tr>
        <td colspan="2">Please Click <a href="admin_login_outcome.jsp">here</a> to do another operation OR <a href="index.html">here</a> to logout</td>
    </tr>
</table>
</body>
</html>
