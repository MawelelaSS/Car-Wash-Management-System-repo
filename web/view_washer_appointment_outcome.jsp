<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.entity.Appointment"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Washer Appointment Outcome Page</title>
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
        <table align="center">
            <tr>
                <td colspan="2"><h1>List Of Available Appointments</h1></td>
            </tr>
            <%
                List<Appointment> appointments = (List<Appointment>) request.getAttribute("appointments");
                for (int i = 0; i < appointments.size(); i++) {
                    Appointment appointment = appointments.get(i);
                    long id = appointment.getId();
                    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
                    String dob = format.format(appointment.getAppointmentDate());
                    long serviceId = appointment.getServices().get(0).getId();
                    long customerId = appointment.getCustomerID();
            %>
            <tr>
                <td>Appointment ID:</td>
                <td><%=id%></td>
            </tr>
            <tr>
                <td>Appointment Date :</td>
                <td><%=dob%></td>
            </tr>
            <tr>
                <td>Appointment Service ID:</td>
                <td><%=serviceId%></td>
            </tr>
            <tr>
                <td>Appointment Customer ID:</td>
                <td><%=customerId%></td>
            </tr>
            <tr>
                <td colspan="2">==========================================</td>
            </tr>
            <% }%>
            <tr>
                <td colspan="2">
                    Click <a href="car_washer_login_outcome.jsp">here</a> to go to the menu page OR
                    <a href="index.html">here</a> to logout
                </td>
            </tr>
        </table>
    </body>
</html>
