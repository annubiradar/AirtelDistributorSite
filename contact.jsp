<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #eef2f7;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 40px auto;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 25px;
        }
        label {
            display: block;
            margin: 12px 0 6px;
            font-weight: bold;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 14px;
        }
        button {
            margin-top: 20px;
            width: 100%;
            background-color: #28a745;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }
        button:hover {
            background-color: #218838;
        }
        .info {
            margin-top: 30px;
            background: #f8f9fa;
            padding: 20px;
            border-radius: 6px;
        }
        .info p {
            margin: 6px 0;
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
    <h2>Contact Us</h2>
    <form>
        <label for="name">Your Name</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Your Email</label>
        <input type="email" id="email" name="email" required>

        <label for="message">Message</label>
        <textarea id="message" rows="4" name="message" required></textarea>

        <button type="submit">Send Message</button>
    </form>

    <div class="info">
        <h3>Customer Support</h3>
        <p><strong>Phone:</strong> +91 98765 43210</p>
        <p><strong>Email:</strong> support@airtelservices.com</p>
        <p><strong>Address:</strong> Airtel Office, Bengaluru, Karnataka, India</p>
    </div>
</div>
</body>
</html>
