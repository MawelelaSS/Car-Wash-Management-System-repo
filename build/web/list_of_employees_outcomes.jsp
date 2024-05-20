<%-- 
    Document   : list_of_employees_outcomes
    Created on : Apr 16, 2024, 7:09:23 PM
    Author     : sibus
--%>


<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="za.ac.tut.entity.Employee"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of Employees Page</title>
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
                min-height: 80vh; /* Ensure full viewport height */
            }

            table {
                background-color: whitesmoke; /* Set table background color with opacity */
                padding: 10px;
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                margin: 10px auto; /* Center table horizontally */
                width: 80%; /* Adjust width as needed */
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
            List<Employee> employeeList = (List<Employee>) session.getAttribute("employeeList");
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        %>
        
            <table align="center">
                <tr>
                  
                    <td><h1>Retrieved Employees</h1></td>
                </tr>
                <tr>
                   
                    <td><b>Below is the List of Employees Details</b></td>
                </tr>
                <%
                    for (Employee employee : employeeList) {
    //                    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    //                    String dob = format.format(employee.getDob());
                        Date dob = employee.getDob();
                %>
                <tr>
                  
                    <td>Name: <b><%=employee.getName()%></b> </td>
                </tr>
                <tr>
                    
                    <td>Date Of Birth: <b><%=format.format(dob)%></b> </td>
                </tr>
                <tr>
                    
                    <td>Gender: <b><%=employee.getGender()%></b> </td>
                </tr>
                <tr>
                   
                    <td>Position: <b><%=employee.getPosition()%></b> </td>
                </tr>
                <tr>
                   
                    <td>Salary: <b><%=employee.getSalary()%></b> </td>
                </tr>
                <tr>
                   <td>==================================================</td>
                </tr>
                <%}%>
                <tr>
                   
              <td><a href="SaveEmployeesDetailsFile.do"><input type="button" value="SAVE TO TXT FILE"></a> 
                  <a href="admin_login_outcome.jsp"><input type="button" value="VIEW MENU"></a> 
                  <a href="index.html"> <input type="button" value="LOGOUT"> </a></td>
                </tr>
            </table>
      
    </body>
</html>
