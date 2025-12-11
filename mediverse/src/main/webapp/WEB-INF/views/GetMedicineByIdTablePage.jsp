<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medicine Details - Mediverse</title>
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

<h1>Medicine Details</h1>

<!-- If medicine not found -->
<c:if test="${empty medicine}">
    <div class="message">Medicine not found!</div>
</c:if>

<!-- If medicine is found, show details -->
<c:if test="${not empty medicine}">
    <table>
        <tr>
            <th>Medicine ID</th>
            <th>Name</th>
            <th>Category</th>
            <th>Price</th>
            <th>Stock Quantity</th>
            <th>Expiry Date</th>
        </tr>

        <tr>
            <td>${medicine.medicineId}</td>
            <td>${medicine.name}</td>
            <td>${medicine.category}</td>
            <td>${medicine.price}</td>
            <td>${medicine.stockQuantity}</td>
            <td>${medicine.expiryDate}</td>
        </tr>
    </table>
</c:if>

<!-- Back button -->
<a href="/admin/getMedicineByIdPage" class="back-btn">Back</a>

</body>
</html>
