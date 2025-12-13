<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Details - Mediverse</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef5f0;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #4CAF50;
            margin-top: 30px;
            font-size: 32px;
        }

        table {
            width: 95%;
            margin: 40px auto;
            border-collapse: collapse;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        th, td {
            border: 1px solid #dddddd;
            padding: 14px;
            text-align: center;
            font-size: 16px;
        }

        th {
            background-color: #4CAF50;
            color: white;
            font-size: 17px;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .back-btn {
            display: block;
            width: 150px;
            margin: 20px auto 40px;
            text-align: center;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            font-size: 16px;
        }

        .back-btn:hover {
            background-color: #45a049;
        }

        .message {
            text-align: center;
            font-size: 20px;
            color: red;
            margin-top: 40px;
        }
    </style>
</head>

<body>

<h1>Order Details</h1>

<!-- If order not found -->
<c:if test="${empty order}">
    <div class="message">Order not found!</div>
</c:if>

<!-- If order is found, show details -->
<c:if test="${not empty order}">
    <table>
        <tr>
            <th>Order ID</th>
            <th>Customer ID</th>
			<th>Quantity</th>
            <th>Total Amount</th>
            <th>Payment Status</th>
			<th>Order Status</th>
            <th>Ordered Date</th>
            <th>Insurance Claim ID</th>
        </tr>

        <tr>
            <td>${order.orderId}</td>
            <td>${order.customer.customerId}</td> <!-- Displaying Customer ID -->
			<td>${order.quantity}</td>
			<td>${order.totalAmount}</td>
            <td>${order.paymentStatus}</td>
			<td>${order.orderStatus}</td>
            <td>${order.orderedDate}</td>
            <td>${order.insuranceClaim.claimId}</td> <!-- Displaying Insurance Claim ID -->
        </tr>
    </table>
</c:if>

<!-- Back button -->
<a href="/admin/getOrderByIdPage" class="back-btn">Back</a>

</body>
</html>
