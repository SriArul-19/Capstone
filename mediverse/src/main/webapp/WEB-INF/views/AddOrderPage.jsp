<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mediverse Admin Dashboard - Add Order</title>
    <style>
        /* Global styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f6;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Header Section */
        .header {
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header h1 {
            margin: 0;
        }

        /* Main container for the content */
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            display: block;
        }

        input[type="text"], input[type="number"], input[type="date"], input[type="checkbox"], select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-group input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            width: 100%;
            border-radius: 4px;
        }

        .form-group input[type="submit"]:hover {
            background-color: #45a049;
        }

        .footer {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 10px;
            margin-top: 40px;
        }

        .footer a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <div class="header">
        <h1>Mediverse Admin Dashboard - Add Order</h1>
    </div>

    <!-- Main Content Section -->
    <div class="container">
        <h2>Add New Order</h2>
        <form action="./addOrder" method="POST">
            
            <!-- Customer ID -->
            <div class="form-group">
                <label for="customerId">Customer ID</label>
                <input type="number" id="customerId" name="customerId" required>
            </div>
			<div class="form-group">
			     <label for="quantity">Quantity</label>
			     <input type="number" id="quantity" name="quantity" required>
			</div>
			

            <!-- Total Amount -->
            <div class="form-group">
                <label for="totalAmount">Total Amount</label>
                <input type="number" id="totalAmount" name="totalAmount" required>
            </div>

            <!-- Payment Status -->
            <div class="form-group">
                <label for="paymentStatus">Payment Status</label>
                <select id="paymentStatus" name="paymentStatus" required>
                    <option value="Paid">Paid</option>
                    <option value="Pending">Pending</option>
                    <option value="Failed">Failed</option>
                </select>
            </div>
			<div class="form-group">
			                <label for="orderStatus">Order Status</label>
			                <select id="orderStatus" name="orderStatus" required>
			                    <option value="Booked">Booked</option>
			                    <option value="Shipped">Shipped</option>
			                    <option value="Delivered">Delivered</option>
			                </select>
			</div>
			<div class="form-group">
			                <label for="deliveryAddress">Delivery Address</label>
			                <input type="text" id="deliveryAddress" name="deliveryAddress" required>
			            </div>

            <!-- Ordered Date -->
            <div class="form-group">
                <label for="orderedDate">Ordered Date</label>
                <input type="date" id="orderedDate" name="orderedDate" required>
            </div>

            <!-- Insurance Claim -->
            <div class="form-group">
                <label for="insuranceClaimId">Insurance Claim ID (if any)</label>
                <input type="number" id="insuranceClaimId" name="insuranceClaimId">
            </div>

            <!-- Submit Button -->
            <div class="form-group">
                <input type="submit" value="Add Order">
            </div>
        </form>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2025 Mediverse | <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </div>

</body>
</html>
