<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mediverse Admin Dashboard - Add Insurance Claim</title>
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

        input[type="text"], input[type="number"], input[type="date"], select {
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
        <h1>Mediverse Admin Dashboard - Add Insurance Claim</h1>
    </div>

    <!-- Main Content Section -->
    <div class="container">
        <h2>Add New Insurance Claim</h2>
        <form action="./addInsuranceClaim" method="POST">
            
            <!-- Customer ID -->
            <div class="form-group">
                <label for="customerId">Customer ID</label>
                <input type="number" id="customerId" name="customerId" required>
            </div>

            <!-- Medicine ID -->
            <div class="form-group">
                <label for="medicineId">Medicine ID</label>
                <input type="number" id="medicineId" name="medicineId" required>
            </div>

            <!-- Claim Amount -->
            <div class="form-group">
                <label for="claimAmount">Claim Amount</label>
                <input type="number" id="claimAmount" name="claimAmount" required>
            </div>

            <!-- Claim Status -->
            <div class="form-group">
                <label for="claimStatus">Claim Status</label>
                <select id="claimStatus" name="claimStatus" required>
                    <option value="Approved">Approved</option>
                    <option value="Pending">Pending</option>
                    <option value="Rejected">Rejected</option>
                </select>
            </div>

            <!-- Claim Date -->
            <div class="form-group">
                <label for="claimDate">Claim Date</label>
                <input type="date" id="claimDate" name="claimDate" required>
            </div>

            <!-- Submit Button -->
            <div class="form-group">
                <input type="submit" value="Add Insurance Claim">
            </div>
        </form>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2025 Mediverse | <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </div>

</body>
</html>
