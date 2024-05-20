<%-- 
    Document   : confirm_assign_appointment
    Created on : May 7, 2024, 12:33:19 PM
    Author     : sibus
--%>

<%@page import="za.ac.tut.entity.Service"%>
<%@page import="za.ac.tut.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Confirm Appointment Assignment</title>
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
            background-color: whitesmoke; /* Set table background color with opacity */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin: 1px auto; /* Center table horizontally */
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        td {
            padding: 5px 10px;
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
            text-decoration: none;
            color: blue;
        }
    </style>
</head>
<body>
<%
    Employee employee = (Employee) session.getAttribute("employee");
    List<Appointment> appointments = (List<Appointment>) session.getAttribute("appointmentsList");
%>
<form action="ConfirmAssignmentServlet.do" method="POST">
    <table>
        <tr>
            <td></td>
            <td><h1>Confirm Appointment Assignment</h1></td>
        </tr>
        <% 
            for (int i = 0; i < appointments.size(); i++) {
                Appointment appointment = appointments.get(i);
        %>
        <tr>
            <td></td>
            <td>===========================================================</td>
        </tr>
        <tr>
            <td></td>
            <td>Appointment assigned to <%= employee.getName() %> with employee <%= employee.getId() %></td>
        </tr>
        <tr>
            <td></td>
            <td>Appointment ID: <%= appointment.getId() %></td>
        </tr>
        <tr>
            <td></td>
            <td>Appointment Date: <%= appointment.getAppointmentDate() %></td>
        </tr>
        <tr>
            <td></td>
            <td>========================services=======================</td>
        </tr>
        <% 
            List<Service> services = appointment.getServices();
            for (int j = 0; j < services.size(); j++) {
                Service service = services.get(j);
        %>
        <tr>
            <td></td>
            <td>Service ID: <%= service.getId() %></td>
        </tr>
        <tr>
            <td></td>
            <td>Service Type: <%= service.getServiceType() %></td>
        </tr>
        <tr>
            <td></td>
            <td>Service Description: <%= service.getDescription() %></td>
        </tr>
        <% } %>
        <tr>
            <td></td>
            <td>Appointment Owner ID: <%= appointment.getCustomerID() %></td>
        </tr>
        <% } %>
        <tr>
            <td></td>
            <td><input type="submit" value="ASSIGN"> <a href="assign_appointment.jsp"><input type="button" value="ADD ANOTHER APPOINTMENT"></a></td>
        </tr>
    </table>
</form>
</body>
</html>
