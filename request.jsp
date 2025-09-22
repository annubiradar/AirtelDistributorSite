<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Service Request</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 500px;
            margin: 40px auto;
            background: #fff;
            padding: 25px 30px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }
        input, select, textarea {
            width: 100%;
            padding: 10px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 14px;
        }
        button {
            margin-top: 20px;
            width: 100%;
            background-color: #007bff;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }
        button:hover {
            background-color: #0056b3;
        }
        @media (max-width: 600px) {
            .container {
                margin: 20px;
                padding: 20px;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Service Request Form</h2>
    <div class="message">
    <%
        String status = request.getParameter("status");
        if ("success".equals(status)) {
    %>
        <p style="color:green;">Request sent  successfully!</p>
    <%
        } else if ("failed".equals(status)) {
    %>
        <p style="color:red;">Request sent . Please try again.</p>
    <%
        }
    %>
    
</div>
    <form action="${pageContext.request.contextPath}/submitRequest" method="post">
        <label for="name">Full Name</label>
        <input type="text" id="name" name="name" required>

        <label for="contact">Contact Number</label>
        <input type="text" id="contact" name="contact" required>

        <label for="serviceType">Service Type</label>
        <select id="serviceType" name="serviceType" required>
            <option value="">-- Select --</option>
            <option value="broadband">Broadband</option>
            <option value="dth">DTH</option>
        </select>

        <label for="address">Installation Address</label>
        <textarea id="address" name="address" rows="3" required></textarea>

        <label for="message">Additional Message</label>
        <textarea id="message" name="message" rows="3"></textarea>

        <button type="submit">Submit Request</button>
    </form>
</div>
</body>
</html>
