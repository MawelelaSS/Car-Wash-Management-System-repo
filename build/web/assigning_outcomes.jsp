<%-- 
    Document   : assigning_outcomes
    Created on : May 7, 2024, 1:00:57 PM
    Author     : sibus
--%>

<%@page import="za.ac.tut.entity.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Assigning Outcomes Page</title>
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
            height: 80vh;
        }

        table {
            background-color:whitesmoke; /* Set table background color with opacity */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        td {
            padding: 10px;
        }

        p {
            font-size: 18px;
            margin-bottom: 20px;
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
  Employee employee = (Employee) request.getAttribute("employee");
  int size = (Integer) request.getAttribute("size");
%>
<table>
    <tr>
        <td></td>
        <td><h1>Assigning Appointments Outcomes</h1></td>
    </tr>
    <tr>
        <td></td>
        <td>You successfully assigned <%=size%> appointments to <%=employee.getName()%> with an Employee ID <%=employee.getId()%></td>
    </tr>
    <tr>
        <td></td>
        <td><p>Please Click <a href="EndSession.do">here</a> to go to the menu page </p></td>
    </tr>
</table>
</body>
</html>
