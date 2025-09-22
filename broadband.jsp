<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.airtel.model.BroadbandPlan" %>
<%@ page import="com.airtel.dao.BroadbandDAO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    List<BroadbandPlan> broadbandList = BroadbandDAO.getAllPlans();
    request.setAttribute("broadbandList", broadbandList);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Broadband Plans</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            background: #f4f4f4;
        }
        .container {
            width: 90%;
            max-width: 1000px;
            margin: auto;
            padding: 20px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .plans {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
        }
        .plan-card {
            background: #fff;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            transition: 0.3s;
        }
        .plan-card:hover {
            transform: scale(1.02);
        }
        .plan-card h3 {
            margin-top: 0;
        }
        .plan-info {
            margin: 8px 0;
        }
        @media (max-width: 600px) {
            .plan-card {
                padding: 15px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Our Broadband Plans</h2>
        <div class="plans">
            <c:forEach var="plan" items="${broadbandList}">
                <div class="plan-card">
                    <h3>${plan.name}</h3>
                    <div class="plan-info">Speed: <strong>${plan.speed}</strong></div>
                    <div class="plan-info">Price: ₹<strong>${plan.price}</strong></div>
                    <div class="plan-info">Validity: <strong>${plan.validity}</strong> days</div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
