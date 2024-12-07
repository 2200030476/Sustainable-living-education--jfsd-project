login page



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Signup</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        .signup-container {
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #2b6777;
        }

        label {
            font-size: 16px;
            margin-bottom: 5px;
            display: block;
            color: #333;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="tel"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #2b6777;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #52ab98;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #2b6777;
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="signup-container">
        <h1>Student Signup</h1>
        <form action="insertstudent" method="post">
            <label for="studentName">Name:</label>
            <input type="text" id="studentName" name="name" required>

            <label for="studentGender">Gender:</label>
            <select id="studentGender" name="gender" required>
                <option value="">Select Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>

            <label for="studentEmail">Email:</label>
            <input type="email" id="studentEmail" name="email" required>

            <label for="studentPassword">Password:</label>
            <input type="password" id="studentPassword" name="password" required>

            <label for="studentContact">Contact Number:</label>
            <input type="tel" id="studentContact" name="contact" pattern="[0-9]{10}" title="Enter a valid 10-digit phone number" required>

            <button type="submit">Signup</button>
        </form>
        <a class="back-link" href="index.jsp">Back to Home</a>
    </div>

</body>
</html>
