<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mediverse - User Profile</title>
    <link rel="stylesheet" href="<c:url value='/css/userhome.css'/>">
    <style>
        /* Specific styles for the profile card */
        .profile-container {
            max-width: 700px;
            margin: 50px auto;
            padding: 30px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .profile-container h2 {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 25px;
            border-bottom: 2px solid #f4f7f6;
            padding-bottom: 10px;
        }

        .profile-details p {
            font-size: 1.1em;
            margin: 15px 0;
            padding: 10px;
            border-bottom: 1px dotted #ddd;
        }

        .profile-details strong {
            display: inline-block;
            width: 150px; /* Aligns the data points */
            color: #343a40;
        }
        
        .profile-details span {
            color: #6c757d;
        }

        .profile-actions {
            text-align: center;
            margin-top: 30px;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin: 0 10px;
            font-size: 16px;
            text-decoration: none;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-edit {
            background-color: #007bff; /* Blue */
        }
        .btn-edit:hover {
            background-color: #0056b3;
        }

        .btn-password {
            background-color: #6c757d; /* Gray */
        }
        .btn-password:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>

    <nav class="navbar">
        <div class="logo">
            <a href="/user/home">Mediverse</a>
        </div>
        <ul>
            <li><a href="/user/home">Home</a></li>
            <li><a href="/user/profile">Profile</a></li>
            <li><a href="/user/order">Orders</a></li>
            <li><a href="/user/prescriptions">Prescriptions</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </nav>

    <div class="profile-container">
        <h2>Customer Profile Details</h2>

        <div class="profile-details">
            <p><strong>Customer ID:</strong> <span>${customer.customerId}</span></p>
            <p><strong>First Name:</strong> <span>${customer.firstName}</span></p>
            <p><strong>Last Name:</strong> <span>${customer.lastName}</span></p>
            <p><strong>Email:</strong> <span>${customer.email}</span></p>
            <p><strong>Phone Number:</strong> <span>${customer.phoneNumber}</span></p>
            <p><strong>Address:</strong> <span>${customer.address}</span></p>
			<p><strong>Insurance Eligibility:</strong> <span>${customer.insuranceEligibility}</span></p>
        </div>

        <div class="profile-actions">
            <a href="/user/editProfile" class="btn btn-edit">Edit Profile</a>
            
            <a href="/user/changePassword" class="btn btn-password">Change Password</a>
        </div>
    </div>

    <footer>
        <p>&copy; 2025 Mediverse. All rights reserved.</p>
    </footer>

</body>
</html>