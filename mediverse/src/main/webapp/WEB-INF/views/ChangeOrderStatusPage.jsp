<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mediverse Admin - Change Order Status</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f7f6; margin: 0; padding: 0; color: #333; }
        .header { background-color: #4CAF50; color: white; padding: 20px; text-align: center; }
        .container { max-width: 1200px; margin: 20px auto; padding: 20px; background-color: white; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); }
        h2 { color: #4CAF50; border-bottom: 2px solid #4CAF50; padding-bottom: 10px; margin-bottom: 20px; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #f2f2f2; color: #333; }
        tr:nth-child(even) { background-color: #f9f9f9; }
        select, button { padding: 8px; border-radius: 4px; border: 1px solid #ccc; }
        button { background-color: #4CAF50; color: white; cursor: pointer; border: none; transition: background-color 0.3s; }
        button:hover { background-color: #45a049; }
        .message-success { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; padding: 10px; margin-bottom: 15px; border-radius: 4px; }
        .message-error { background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; padding: 10px; margin-bottom: 15px; border-radius: 4px; }
        .back-link { display: block; margin-top: 20px; text-align: center; color: #4CAF50; text-decoration: none; font-weight: bold; }
    </style>
</head>
<body>

    <div class="header">
        <h1>Change Order Status</h1>
    </div>

    <div class="container">
        <h2>Manage All Orders</h2>
        
        <c:if test="${not empty successMessage}">
            <div class="message-success">${successMessage}</div>
        </c:if>
        <c:if test="${not empty errorMessage}">
            <div class="message-error">${errorMessage}</div>
        </c:if>

        <c:choose>
            <c:when test="${not empty orders}">
                <table>
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Customer ID</th>
                            <th>Total Amount</th>
                            <th>Ordered Date</th>
                            <th>Current Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="order" items="${orders}">
                            <tr>
                                <td>${order.orderId}</td>
                                <td>${order.customer.customerId}</td>
                                <td>$${order.totalAmount}</td>
                                <td>${order.orderedDate}</td>
                                <td><strong>${order.orderStatus}</strong></td>
                                <td>
                                    <form action="/admin/updateOrderStatus" method="POST" style="display: flex; gap: 10px;">
                                        <input type="hidden" name="orderId" value="${order.orderId}">
                                        
                                        <select name="newStatus" required>
                                            <option value="">Select New Status</option>
                                            <c:forEach var="status" items="${statuses}">
                                                <option value="${status}" 
                                                    <c:if test="${status eq order.orderStatus}">selected</c:if>>
                                                    ${status}
                                                </option>
                                            </c:forEach>
                                        </select>
                                        
                                        <button type="submit">Update</button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <p>No orders found in the system.</p>
            </c:otherwise>
        </c:choose>

        <a href="OrderManagementPage.jsp" class="back-link">&larr; Back to Order Management</a>
    </div>

</body>
</html>