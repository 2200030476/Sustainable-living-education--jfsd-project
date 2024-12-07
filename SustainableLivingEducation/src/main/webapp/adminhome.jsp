<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
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
        <a href="/admin-dashboard">Dashboard</a>
        <a href="/usermanagement">User Management</a>
        <a href="/contentmanagement">Content Management</a>
        <a href="/eventmanagement">Event Management</a>
        <a href="/analytics">Analytics & Reports</a>
        <a href="/settings">Settings</a>
        <a href="/help">Help & Support</a>
        <a href="/logout">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="header">
            <h1>Welcome to Admin Dashboard</h1>
        </div>

        <div class="cards">
            <div class="card">
                <h3>Users</h3>
                <p>Manage users and their roles.</p>
            </div>
            <div class="card">
                <h3>Content</h3>
                <p>Manage articles, blogs, and media.</p>
            </div>
            <div class="card">
                <h3>Events</h3>
                <p>Organize and manage events.</p>
            </div>
            <div class="card">
                <h3>Reports</h3>
                <p>View analytics and generate reports.</p>
            </div>
        </div>
    </div>

</body>
</html>
