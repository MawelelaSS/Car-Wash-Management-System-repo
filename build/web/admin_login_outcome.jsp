<%-- 
    Document   : admin_login_outcome
    Created on : Apr 11, 2024, 4:15:54 PM
    Author     : sibus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>admin_login_outcome Page</title>
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
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        td {
            padding: 5px 10px;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
         input[type="submit"] {
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

        input[type="submit"]:hover {
            background-color: darkblue; /* Changing background color on hover */
        }
    </style>
</head>
<body>
<div class="container">
    <table>
        <tr>
            <td></td>
            <td><h1>Admin Dashboard</h1></td>
        </tr>
        <tr>
            <td></td>
            <td><p><b>Please select what you want to do below:</b></p></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="add_employee.html">Add Employee</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="modify_employee.html">Update Employee Position</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="remove_employee.html">Delete Employee</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="get_employee.html">Get Specific Employee</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="GetAllEmployeeServlet.do">View Summary of All Employees</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="ViewAppointmentsServlet.do">View Summary Of All Appointments</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="ViewAllCustomers.do">View Summary Of All Customers </a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="ViewFemaleCustomerServlet.do">View Summary All female Customers</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="ViewMaleCustomerServlet.do">View Summary All Male Customers</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="ViewWasherEmployeesServlet.do">View Summary All Washer Employees</a></td>
        </tr>
        <tr>
            <td></td>
            <td><a href="choose_gender.jsp">View Summary Customers By Gender</a></td>
        </tr>
        
         <tr>
            <td></td>
            <td><a href="ViewCustomerFeedbacks.do">View Customers Feedback's</a></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
        
        <tr>
            <td></td>
            <td><a href="start.html"><input type="submit" value="LOGOUT"></a></td>
        </tr>
    </table>
</div>
</body>
</html>