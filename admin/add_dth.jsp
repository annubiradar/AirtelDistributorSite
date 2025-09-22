<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add DTH Plan</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
            padding: 20px;
        }
        .container {
            max-width: 500px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }
        h2 {
            text-align: center;
        }
        label {
            display: block;
            margin-top: 15px;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }
        input[type="submit"] {
            background-color: #d71920;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            margin-top: 20px;
            width: 100%;
        }
        .status {
            text-align: center;
            margin-top: 10px;
            font-weight: bold;
        }
        .success {
            color: green;
        }
        .failed {
            color: red;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Add DTH Plan</h2>
  <div class="message">
    <%
        String status = request.getParameter("status");
        if ("sent".equals(status) || "success".equals(status)) {
    %>
        <p style="color:green;">✅ Request sent successfully!</p>
    <%
        } else if ("failed".equals(status)) {
    %>
        <p style="color:red;">❌ Request failed. Please try again.</p>
    <%
        }
    %>
</div>

    <form action="${pageContext.request.contextPath}/admin/addDTH" method="post">
        <label for="name">Plan Name</label>
        <input type="text" name="name" required>

        <label for="channels">Channels Included</label>
        <input type="text" name="channels" required>

        <label for="price">Price</label>
        <input type="number" step="0.01" name="price" required>

        <label for="validity">Validity (in days)</label>
        <input type="number" name="validity" required>

        <input type="submit" value="Add DTH Plan">
    </form>

   
</div>

</body>
</html>
