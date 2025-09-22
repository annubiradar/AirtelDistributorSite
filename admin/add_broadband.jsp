<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Broadband Plan</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 30px;
        }
        form {
            width: 300px;
            margin: 0 auto;
        }
        input, button {
            width: 100%;
            margin: 10px 0;
            padding: 8px;
        }
        .message {
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>
<body>

<h2 style="text-align:center;">Add Broadband Plan</h2>

<div class="message">
    <%
        String status = request.getParameter("status");
        if ("success".equals(status)) {
    %>
        <p style="color:green;">Plan added successfully!</p>
    <%
        } else if ("failed".equals(status)) {
    %>
        <p style="color:red;">Failed to add plan. Please try again.</p>
    <%
        }
    %>
</div>

<form action="<%=request.getContextPath()%>/admin/addBroadband" method="post">

    <input type="text" name="name" placeholder="Plan Name" required>
    <input type="text" name="speed" placeholder="Speed (e.g., 100 Mbps)" required>
    <input type="number" name="price" step="0.01" placeholder="Price" required>
    <input type="number" name="validity" placeholder="Validity (in days)" required>
    <button type="submit">Add Plan</button>
</form>

</body>
</html>
