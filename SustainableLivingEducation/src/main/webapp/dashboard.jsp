<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: #f4f6f9;
            display: flex;
            height: 100vh;
        }

        .navbar {
            background-color: #2b6777;
            width: 250px;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            overflow-y: auto;
            display: flex;
            flex-direction: column;
            padding-top: 20px;
        }

        .navbar a {
            display: block;
            color: white;
            padding: 16px;
            text-decoration: none;
            font-size: 18px;
            text-align: left;
        }

        .navbar a:hover {
            background-color: #52ab98;
        }

        .main-content {
            margin-left: 250px;
            padding: 20px;
            flex-grow: 1;
        }

        .header {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            margin-bottom: 20px;
        }

        .header h1 {
            font-size: 24px;
            color: #333;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }

        .card {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .card h3 {
            font-size: 18px;
            color: #333;
            margin-bottom: 10px;
        }

        .card p {
            font-size: 14px;
            color: #555;
        }
    </style>
</head>
<body>

    <!-- Sidebar -->
    <div class="navbar">
        <a href="dashboard.jsp">Dashboard</a>
        <a href="analyticsreports.jsp">Analytics & Reports</a>
        <a href="settings.jsp">Settings</a>
        <a href="help.jsp">Help & Support</a>
        <a href="logout.jsp">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="header">
            <h1>Welcome to Student Dashboard</h1>
        </div>

        <div class="cards">
            <div class="card">
                <h3>Courses</h3>
                <p>View your enrolled courses and progress.</p>
            </div>
            <div class="card">
                <h3>Assignments</h3>
                <p>Check your assignments and submission deadlines.</p>
            </div>
            <div class="card">
                <h3>Grades</h3>
                <p>View your grades and academic performance.</p>
            </div>
            <div class="card">
                <h3>Events</h3>
                <p>Participate in upcoming events and activities.</p>
            </div>
        </div>
    </div>

</body>
</html>
