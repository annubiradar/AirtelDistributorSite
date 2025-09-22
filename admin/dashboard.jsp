<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .dashboard-container {
            max-width: 900px;
            margin: 50px auto;
            background: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        .btn-group {
            display: flex;
            justify-content: space-around;
            margin-top: 30px;
        }
        .btn {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 15px 25px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 6px;
            width: 30%;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        @media (max-width: 600px) {
            .btn-group {
                flex-direction: column;
                align-items: center;
            }
            .btn {
                margin-bottom: 15px;
                width: 80%;
            }
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h2>Welcome, Admin</h2>
        <div class="btn-group">
            <a href="addBroadband" class="btn">Add Broadband Plan</a>
            <a href="addDTH" class="btn">Add DTH Plan</a>
            <a href="addRecharge" class="btn">Add Recharge Plan</a>
        </div>
        <div class="btn-group">
            <a href="viewRequests" class="btn">View Service Requests</a>
        </div>
    </div>
</body>
</html>
