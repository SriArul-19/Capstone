<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Confirmed - Payment Pending - Mediverse</title>
    <%-- Reusing the same CSS file, which will need a small update (see section 2) --%>
    <link rel="stylesheet" href="<c:url value='/css/paymentpending.css'/>"> 
</head>
<body>

    <div class="container success-container">
        <%-- Icon for Pending/Caution (e.g., Exclamation Mark or Clock) --%>
        <div class="pending-icon">
            &#9888; 
        </div>

        <h1>Order Confirmed!</h1>
        <p class="message">
            Your order has been placed successfully. **Payment is currently pending** and will be collected upon delivery (Cash on Delivery).
        </p>

        <div class="order-details">
            <h2>Order Summary</h2>
            <table>
                <tr>
                    <td><strong>Order ID:</strong></td>
                    <td>${OrderDetail.orderId}</td>
                </tr>
                <tr>
                    <td><strong>Medicine(s):</strong></td>
                    <td>
                        <c:forEach var="medicine" items="${OrderDetail.medicines}">
                            ${medicine.name} <br>
                        </c:forEach>
                    </td>
                </tr>
                <tr>
                    <td><strong>Quantity:</strong></td>
                    <td>${OrderDetail.quantity}</td>
                </tr>
                <tr>
                    <td><strong>Total Amount Due:</strong></td>
                    <td>**₹ ${OrderDetail.totalAmount}**</td>
                </tr>
                <tr>
                    <td><strong>Order Status:</strong></td>
                    <td>${OrderDetail.orderStatus}</td>
                </tr>
                <tr>
                    <td><strong>Payment Status:</strong></td>
                    <%-- Highlight the payment status as Pending --%>
                    <td class="status-pending">${OrderDetail.paymentStatus}</td>
                </tr>
                <tr>
                    <td><strong>Order Date:</strong></td>
                    <td>${OrderDetail.orderedDate}</td>
                </tr>
                <tr>
                    <td><strong>Delivery Address:</strong></td>
                    <td>${OrderDetail.deliveryAddress}</td>
                </tr>
            </table>
        </div>

        <p class="footer-message">
            You will receive a confirmation email shortly.
            <br>
            Estimated delivery in 3-5 business days. Please keep the total amount ready.
        </p>

        <a href="<c:url value='/user/home'/>" class="btn back-btn">
            Continue Shopping
        </a>
    </div>
    
</body>
</html>