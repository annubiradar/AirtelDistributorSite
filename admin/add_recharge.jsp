<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Recharge Plan</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .form-container {
            max-width: 500px;
            margin: 50px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            font-size: 16px;
            font-weight: bold;
        }
        input[type="text"], input[type="number"], input[type="decimal"] {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        button {
            width: 100%;
            padding: 12px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Add Recharge Plan</h2>
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
        <form action="${pageContext.request.contextPath}/admin/addRecharge" method="post">
            <div class="form-group">
                <label for="type">Plan Type (Prepaid/Postpaid)</label>
                <input type="text" id="type" name="type" required>
            </div>
            <div class="form-group">
                <label for="dataLimit">Data Limit</label>
                <input type="text" id="dataLimit" name="dataLimit" required>
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <input type="number" id="price" name="price" step="0.01" required>
            </div>
            <div class="form-group">
                <label for="validity">Validity (Days)</label>
                <input type="number" id="validity" name="validity" required>
            </div>
            <button type="submit">Add Plan</button>
        </form>
    </div>
</body>
</html>
