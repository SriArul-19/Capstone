<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mediverse - User Orders</title>
    <link rel="stylesheet" href="<c:url value='/css/userorder.css'/>">
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar">
        <div class="logo">
            <a href="/user/home">Mediverse</a>
        </div>
        <ul>
            <li><a href="/user/home">Home</a></li>
            <li><a href="/user/orders" class="active">Orders</a></li>
            <li><a href="/user/profile">Profile</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </nav>

    <!-- Orders Section -->
    <section class="orders-section">
        <h1>My Orders</h1>

        <!-- Check if the user has any orders -->
        <c:if test="${empty orders}">
            <p>You have no orders yet.</p>
        </c:if>

        <!-- Orders Table -->
        <c:if test="${not empty orders}">
            <table class="orders-table">
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Order Date</th>
                        <th>Status</th>
                        <th>Total Price</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Loop through orders and display them -->
                    <c:forEach var="order" items="${orders}">
                        <tr>
                            <td><c:out value="${order.id}"/></td>
                            <td><c:out value="${order.orderDate}"/></td>
                            <td><c:out value="${order.status}"/></td>
                            <td>₹<c:out value="${order.totalPrice}"/></td>
                            <td>
                                <a href="/user/orders/${order.id}" class="btn">View Details</a>
                                <c:if test="${order.status == 'Pending'}">
                                    <a href="/user/orders/cancel/${order.id}" class="btn cancel-btn">Cancel Order</a>
                                    <a href="/user/orders/modify/${order.id}" class="btn modify-btn">Modify Order</a>
                                </c:if>
                                <c:if test="${order.status == 'Delivered'}">
                                    <a href="/user/orders/return/${order.id}" class="btn return-btn">Request Return</a>
                                </c:if>
                                <a href="/user/orders/track/${order.id}" class="btn track-btn">Track Order</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 Mediverse. All rights reserved.</p>
    </footer>

</body>
</html>
