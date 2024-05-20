<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Customer Operation Choice Page</title>
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
    <table>
        <tr>
            <td><h1>Select Operation</h1></td>
        </tr>
        <tr>
            <td><p><b>Please select what you want to do below:</b></p></td>
        </tr>
        <tr>
            <td><a href="select_service.jsp">Book Appointment</a></td>
        </tr>
        <tr>
            <td><a href="DeleteAccountServlet.do">Delete Account</a></td>
        </tr>
        <tr>
            <td><a href="update_email.jsp">Update Email Address</a></td>
        </tr>
        <tr>
            <td><a href="view_account_details.jsp">View Account Details Summary</a></td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td>Please Click <a href="index.html">here</a> to go to the home page</td>
        </tr>
    </table>
</body>
</html>
