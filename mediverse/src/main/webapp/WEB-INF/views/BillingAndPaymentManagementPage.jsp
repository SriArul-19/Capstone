<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mediverse Admin Dashboard - Payment Management</title>
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

        /* Profile Section (in header) */
        .profile {
            display: flex;
            align-items: center;
            cursor: pointer;
        }

        .profile img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .profile-dropdown {
            display: none;
            position: absolute;
            top: 60px;
            right: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 200px;
            padding: 10px;
        }

        .profile:hover .profile-dropdown {
            display: block;
        }

        .profile-dropdown a {
            color: #4CAF50;
            text-decoration: none;
            display: block;
            padding: 8px;
            font-weight: bold;
        }

        .profile-dropdown a:hover {
            background-color: #4CAF50;
            color: white;
        }

        /* Main container for the content */
        .container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        /* Each module card */
        .module-card {
            background-color: white;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease;
        }

        .module-card:hover {
            transform: translateY(-5px);
        }

        .module-card h3 {
            color: #4CAF50;
            margin-bottom: 10px;
        }

        .module-card p {
            font-size: 16px;
            color: #555;
        }

        .module-card a {
            display: inline-block;
            margin-top: 10px;
            color: #4CAF50;
            font-weight: bold;
            text-decoration: none;
            border: 2px solid #4CAF50;
            padding: 8px 15px;
            border-radius: 4px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .module-card a:hover {
            background-color: #4CAF50;
            color: white;
        }

        /* Footer */
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
        <h1>Welcome to Mediverse Admin Dashboard - Payment Management</h1>

        <!-- Profile Icon Section -->
        <div class="profile">
            <img src="https://www.w3schools.com/howto/img_avatar.png" alt="Profile Icon">
            <span>Admin</span>
            <div class="profile-dropdown">
                <a href="#">View Profile</a>
                <a href="#">Sign Out</a>
            </div>
        </div>
    </div>

    <!-- Main Container -->
    <div class="container">
        <!-- Add Payment Card -->
        <div class="module-card">
            <h3>Add Payment</h3>
            <p>Click to add a new payment to the system.</p>
            <a href="/admin/payment/add">Go to Add Payment</a>
        </div>

        <!-- Update Payment Card -->
        <div class="module-card">
            <h3>Update Payment</h3>
            <p>Click to update payment details.</p>
            <a href="/admin/payment/update">Go to Update Payment</a>
        </div>

        <!-- Delete Payment Card -->
        <div class="module-card">
            <h3>Delete Payment</h3>
            <p>Click to delete an existing payment.</p>
            <a href="/admin/payment/delete">Go to Delete Payment</a>
        </div>

        <!-- View All Payments Card -->
        <div class="module-card">
            <h3>View All Payments</h3>
            <p>Click to view the list of all payments.</p>
            <a href="/admin/payments">Go to View Payments</a>
        </div>

        <!-- Find Payment by ID Card -->
        <div class="module-card">
            <h3>Find Payment by ID</h3>
            <p>Search for a payment using its unique ID.</p>
            <a href="/admin/payment/findById">Go to Find Payment by ID</a>
        </div>

        <!-- Find Payments by Order Card -->
        <div class="module-card">
            <h3>Find Payments by Order</h3>
            <p>Search for payments using order ID.</p>
            <a href="/admin/payment/findByOrder">Go to Find Payments by Order</a>
        </div>

        <!-- Find Payments by Status Card -->
        <div class="module-card">
            <h3>Find Payments by Status</h3>
            <p>Search for payments based on their status.</p>
            <a href="/admin/payment/findByStatus">Go to Find Payments by Status</a>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2025 Mediverse | <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </div>

</body>
</html>
