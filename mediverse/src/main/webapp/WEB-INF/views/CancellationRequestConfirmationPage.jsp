<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mediverse - Cancellation Request Sent</title>
    <link rel="stylesheet" href="<c:url value='/css/userhome.css'/>">
    <style>
        .confirmation {
            padding: 30px;
            max-width: 900px;
            margin: 20px auto;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .confirmation h2 {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 30px;
        }
        .confirmation p {
            margin: 10px 0;
            font-size: 16px;
            line-height: 1.5;
            text-align: center;
        }
        .confirmation a {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            text-align: center;
        }
        .confirmation a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <nav class="navbar">
        <div class="logo">
            <a href="/user/home">Mediverse</a>
        </div>
        <ul>
            <li><a href="/user/home">Home</a></li>
            <li><a href="/user/profile">Profile</a></li>
            <li><a href="/user/order">Orders</a></li>
            <li><a href="/user/prescriptions">Prescriptions</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </nav>

    <section class="confirmation">
        <h2>Cancellation Request Sent</h2>

        <p>Your cancellation request for Order ID: ${cancellationRequest.order.orderId} has been sent for approval.</p>
        <p>The request will be reviewed by the admin and you will be notified once the status is updated.</p>

        <a href="/user/order">Back to Orders</a>
    </section>

    <footer>
        <p>&copy; 2025 Mediverse. All rights reserved.</p>
    </footer>

</body>
</html>
