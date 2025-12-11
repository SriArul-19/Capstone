<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Customer Details - Mediverse</title>

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

<h1>Customer Details</h1>

<c:if test="${empty customer}">
    <div class="message">Customer ID not found!</div>
</c:if>

<c:if test="${not empty customer}">
    <table>
        <tr>
            <th>Customer ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone Number</th>
			<th>username</th>
			<th>password</th>
            <th>Address</th>
            <th>Insurance Eligibility</th>
        </tr>

        <tr>
            <td>${customer.customerId}</td>
            <td>${customer.firstName}</td>
            <td>${customer.lastName}</td>
            <td>${customer.email}</td>
            <td>${customer.phoneNumber}</td>
			<td>${customer.username}</td>
			<td>${customer.password}</td>
            <td>${customer.address}</td>
            <td>
                <c:choose>
                    <c:when test="${customer.insuranceEligibility}">
                        Yes
                    </c:when>
                    <c:otherwise>
                        No
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </table>
</c:if>

<a href="/admin/getCustomerByIdPage" class="back-btn">Back</a>

</body>
</html>
