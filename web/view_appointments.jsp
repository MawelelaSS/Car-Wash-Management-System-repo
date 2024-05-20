<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.entity.Appointment"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>view_appointments Page</title>
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
            padding: 10px;
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
    <% List<Appointment> appointments = (List<Appointment>) session.getAttribute("appointments"); %>

    <table align="center">
        <tr>
            <td colspan="2"><h1>List Of Available Appointments</h1></td>
        </tr>
        <% for (int i = 0; i < appointments.size(); i++) {
               Appointment appointment = appointments.get(i);
               long id = appointment.getId();
               SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
               String dob = format.format(appointment.getAppointmentDate());
               long serviceId = appointment.getServices().get(0).getId();
               long customerId = appointment.getCustomerID();
         %>

        <tr>
            <td>Appointment ID: <b><%=id%></b></td>
        </tr>

        <tr>
            <td>Appointment Date : <b><%=dob%></b></td>
        </tr>

        <tr>
            <td>Appointment Service ID: <b><%=serviceId%></b></td>
        </tr>
        <tr>
            <td>Appointment Customer ID: <b><%=customerId%></b></td>
        </tr>

        <tr>
            <td>==========================================</td>
        </tr>
        <% } %>
        <tr>
            
            <td>
                <a href="SaveAppointmentsToFile.do"><input type="button" value="SAVE TO TXT FILE"></a>
                <a href="assign_appointment.jsp"><input type="button" value="ASSIGN TO WASHER"></a> 
                 <a href="admin_login_outcome.jsp"><b><input type="button" value="VIEW MENU"></b></a>
            </td>
        </tr>
    </table>
</body>
</html>
