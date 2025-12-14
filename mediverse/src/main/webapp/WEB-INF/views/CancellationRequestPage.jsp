<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mediverse - Request Cancellation</title>
    <link rel="stylesheet" href="<c:url value='/css/userhome.css'/>">
    <style>
        .cancellation-request {
            padding: 30px;
            max-width: 900px;
            margin: 20px auto;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .cancellation-request h2 {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 30px;
        }
        .cancellation-request p {
            margin: 10px 0;
            font-size: 16px;
            line-height: 1.5;
        }
        .cancellation-request textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 4px;
            border: 1px solid #ddd;
            font-size: 16px;
        }
        .cancellation-request button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .cancellation-request button:hover {
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

    <section class="cancellation-request">
        <h2>Request Order Cancellation</h2>

        <form action="/user/submitCancelRequest/${order.orderId}" method="post">
            <p><strong>Order ID:</strong> ${order.orderId}</p>
            <p><strong>Order Date:</strong> ${order.orderedDate}</p>
            <p><strong>Total Amount:</strong> ₹${order.totalAmount}</p>

            <label for="cancellationReason"><strong>Reason for Cancellation:</strong></label>
            <textarea name="cancellationReason" rows="6" required></textarea>

            <p><strong>Are you sure you want to cancel this order?</strong></p>
            <button type="submit">Confirm Cancellation Request</button>
        </form>
    </section>

    <footer>
        <p>&copy; 2025 Mediverse. All rights reserved.</p>
    </footer>

</body>
</html>
