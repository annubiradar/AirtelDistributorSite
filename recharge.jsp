<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, com.airtel.model.RechargePlan, com.airtel.dao.RechargeDAO" %>
<%
    List<RechargePlan> rechargePlans = RechargeDAO.getAllPlans();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Recharge Plans</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 1100px;
            margin: 30px auto;
            padding: 20px;
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 20px;
        }
        .card {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            transition: transform 0.2s;
        }
        .card:hover {
            transform: scale(1.03);
        }
        .card h3 {
            margin-top: 0;
            color: #007bff;
        }
        .card p {
            margin: 6px 0;
        }
        .price {
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }
        @media (max-width: 600px) {
            .container {
                padding: 15px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Recharge Plans</h2>
        <div class="grid">
            <%
                if (rechargePlans != null && !rechargePlans.isEmpty()) {
                    for (RechargePlan plan : rechargePlans) {
            %>
                <div class="card">
                    <h3><%= plan.getType().toUpperCase() %> Plan</h3>
                    <p><strong>Data Limit:</strong> <%= plan.getDataLimit() %></p>
                    <p class="price">₹<%= plan.getPrice() %> / <%= plan.getValidity() %> days</p>
                </div>
            <%
                    }
                } else {
            %>
                <p>No recharge plans available.</p>
            <%
                }
            %>
        </div>
    </div>
</body>
</html>
