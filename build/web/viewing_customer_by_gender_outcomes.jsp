<%-- 
    Document   : viewing_customer_by_gender_outcomes
    Created on : May 15, 2024, 10:04:31 AM
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
            .scrollable-table-container {
                max-height: 400px; /* Adjust the height as needed */
                overflow-y: auto; /* Enable vertical scrolling */
            }
        </style>
    </head>
    <body>
        <%
            List<Customer> customers = (List<Customer>) session.getAttribute("customers");
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        %>
        <div class="scrollable-table-container">
            <table>
                <tr>
                    <td><h1>Customers Details</h1></td>

                <tr>
                    <%
                        //String password = "";
                        for (int i = 0; i < customers.size(); i++) {
                            Customer customer = customers.get(i);
//                            String password = customer.getPassword();
//                            
//                                   for (int idx = 0; idx < password.length(); idx++) {
//                                           char ch = password.charAt(idx);
//                                           if ( idx != 0 && idx != password.length()-1) {
//                                                 ch = '*';  
//                                               }else
//                                               {
//                                               ch = ch;
//                                               }
//                                               password +=ch;
//                                       }
//                                
//                      String newPass = password;
                    %>
                    <td>Customer ID: <b><%=customer.getId()%></b></td>
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
                    <td>Password: <b>************</b></td>
                </tr>
                <tr>
                    <td><b>==================Car(s) details=================</b></td>
                </tr>
                <tr>
                    <td>

                        <%
                            List<Car> carsList = customer.getCars();
                            for (int j = 0; j < carsList.size(); j++) {
                                Car car = carsList.get(j);
                        %>

                <tr>
                    <td>REGISTRATION :<%=car.getRegistration()%></td>



                </tr>
                <tr>
                    <td>MANUFACTURER :<%=car.getManufacturer()%></td>
                </tr>
                <tr>
                    <td>MODEL :<%=car.getModel()%></td>
                </tr>
                <tr>
                    <td>MODEL YEAR :<%=car.getYear()%></td>
                </tr>

                <tr>
                    <td><b>====================================================</</b><td>
                </tr>
                <% }
                %>
                <% }
                %>



                </td>

                </tr>
                <tr>
                    <td><a href="SaveCustomerByGender.do"><input type="button" value="SAVE TO TXT FILE"></a> <a href="admin_login_outcome.jsp"><input type="button" value="VIEW MENU"></a>     <a href="index.html"><input type="button" value="LOGOUT"></a></td>
                </tr>

            </table>
        </div>
    </body>
</html>
