<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Airtel Distributor - Home</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f7f7f7;
            margin: 0;
            padding: 0;
        }
        header {
            background: #d50000;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
        nav {
            background: #b71c1c;
            padding: 10px;
            text-align: center;
        }
        nav a {
            color: white;
            margin: 0 15px;
            text-decoration: none;
            font-weight: bold;
        }
        .container {
            padding: 30px;
            text-align: center;
        }
        .box {
            display: inline-block;
            width: 250px;
            margin: 20px;
            background: white;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            border-radius: 10px;
            padding: 20px;
            transition: 0.3s;
        }
        .box:hover {
            transform: translateY(-5px);
        }
        footer {
            background: #eeeeee;
            text-align: center;
            padding: 15px;
            font-size: 14px;
            color: #555;
            margin-top: 50px;
        }
    </style>
</head>
<body>
  
  
    <header>
        <h1>Welcome to Airtel Distributor Portal</h1>
         <img src="images/airtellogopng.png" alt="Airtel Logo" style="height:50px;">
        <p>Your one-stop solution for Broadband, DTH ,Recharges</p>
    </header>

    <nav>
        <a href="broadband.jsp">Broadband Plans</a>
        <a href="dth.jsp">DTH Plans</a>
        <a href="recharge.jsp">Recharge Plans</a>
        <a href="request.jsp">Service Request</a>
        <a href="admin/login.jsp">Admin Login</a>
    </nav>

    <div class="container">
        <div class="box">
            <h2>Broadband</h2>
            <p>High-speed internet plans with great value.</p>
            <a href="broadband.jsp">View Plans</a>
        </div>
        <div class="box">
            <h2>DTH</h2>
            <p>Entertainment-packed DTH plans for your home.</p>
            <a href="dth.jsp">View Plans</a>
        </div>
        <div class="box">
            <h2>Mobile Recharge</h2>
            <p>Prepaid and Postpaid recharge offers.</p>
            <a href="recharge.jsp">View Plans</a>
        </div>
        <div class="box">
            <h2>Need Help?</h2>
            <p>Submit a service request for installation or support.</p>
            <a href="request.jsp">Submit Request</a>
        </div>
    </div>

    <footer>
        &copy; 2025 Airtel Distributor | Designed by Annarao
    </footer>
</body>
</html>
