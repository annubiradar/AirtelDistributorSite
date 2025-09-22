<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, com.airtel.model.DTHPlan, com.airtel.dao.DTHDAO" %>
<%
    List<DTHPlan> dthPlans = DTHDAO.getAllPlans();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>DTH Plans</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f2f2f2;
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
            background: #fff;
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
            color: #e60000;
        }
        .card p {
            margin: 5px 0;
        }
        .price {
            font-size: 18px;
            font-weight: bold;
            color: #444;
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
        <h2>Available DTH Plans</h2>
        <div class="grid">
            <%
                if (dthPlans != null && !dthPlans.isEmpty()) {
                    for (DTHPlan plan : dthPlans) {
            %>
                <div class="card">
                    <h3><%= plan.getName() %></h3>
                    <p><strong>Channels:</strong> <%= plan.getChannels() %></p>
                    <p class="price">Price: ₹<%= plan.getPrice() %></p>
                    <p class="price">Validity: <%= plan.getValidity() %> days</p>
                </div>
            <%
                    }
                } else {
            %>
                <p>No DTH plans available at the moment.</p>
            <%
                }
            %>
        </div>
    </div>
</body>
</html>
