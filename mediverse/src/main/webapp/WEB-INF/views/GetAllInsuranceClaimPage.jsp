<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Insurance Claims - Mediverse</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f6;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #4CAF50;
        }

        table {
            width: 90%;
            margin: 30px auto;
            border-collapse: collapse;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        th, td {
            border: 1px solid #dddddd;
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        a.back-btn {
            display: block;
            width: 150px;
            margin: 20px auto;
            text-align: center;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
            text-decoration: none;
        }

        a.back-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <h1>All Insurance Claims</h1>

    <table>
        <tr>
            <th>Claim ID</th>
            <th>Customer ID</th>
            <th>Medicine ID</th>
            <th>Claim Amount</th>
            <th>Claim Status</th>
            <th>Claim Date</th>
        </tr>

        <!-- Iterate through the list of insurance claims -->
        <c:forEach var="claim" items="${insuranceClaims}">
            <tr>
                <td>${claim.claimId}</td>
                <td>${claim.customer.customerId}</td> <!-- Displaying Customer ID -->
                <td>${claim.medicine.medicineId}</td> <!-- Displaying Medicine ID -->
                <td>${claim.claimAmount}</td>
                <td>${claim.claimStatus}</td>
                <td>${claim.claimDate}</td>
            </tr>
        </c:forEach>
    </table>

    <!-- Back button to return to the insurance claim management page -->
    <a href="/admin/insuranceClaimManagement" class="back-btn">Back</a>

</body>
</html>
