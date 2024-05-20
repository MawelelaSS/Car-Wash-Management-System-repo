<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>update_email Page</title>
    <style>
        body {
            background-image: url('car-wash-clipart-png-download.png');
            background-size: cover;
            background-color: #ffffff;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
        }

        form {
            background-color: whitesmoke;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin: 10px auto;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            margin: 0 auto;
        }

        input[type="email"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
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
            margin-bottom: 20px;
            cursor: pointer;
            border-radius: 5px;
        }

        input[type="submit"]:hover {
            background-color: darkblue;
        }
    </style>
</head>
<body>
<form action="UpdateEmailServlet.do" method="POST">
    <table>
        <tr>
            <td><h1>Update Email</h1></td>
        </tr>
        <tr>
            <td><b>Please enter your new email below</b></td>
        </tr>
        <tr>
            <td>Email Address: <input type="email" name="email"></td>
        </tr>
        <tr>
            <td style="text-align: center;">
                <input type="submit" value="UPDATE">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
