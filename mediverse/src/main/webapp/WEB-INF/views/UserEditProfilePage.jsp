<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mediverse - Edit Profile</title>
    <link rel="stylesheet" href="<c:url value='/css/userhome.css'/>">
    <style>
        /* Specific styles for the edit form */
        .form-container {
            max-width: 700px;
            margin: 50px auto;
            padding: 30px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-container h2 {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 25px;
            border-bottom: 2px solid #f4f7f6;
            padding-bottom: 10px;
        }

        .form-group {
            margin-bottom: 20px;
            display: flex;
            align-items: center;
        }

        .form-group label {
            font-weight: bold;
            display: block;
            width: 180px; /* Aligns labels neatly */
            color: #343a40;
        }

        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group textarea {
            flex-grow: 1;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        
        /* Style for read-only fields */
        .form-group input[readonly], 
        .form-group textarea[readonly] {
            background-color: #e9ecef;
            cursor: not-allowed;
        }

        /* Checkbox styling */
        .checkbox-group {
            display: flex;
            align-items: center;
            margin-left: 180px; /* Aligns with input fields */
        }
        .checkbox-group input[type="checkbox"] {
            margin-right: 10px;
            transform: scale(1.2);
        }

        /* Button Styling */
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

        .btn-save {
            background-color: #4CAF50; /* Green */
        }
        .btn-save:hover {
            background-color: #45a049;
        }

        .btn-cancel {
            background-color: #dc3545; /* Red */
        }
        .btn-cancel:hover {
            background-color: #c82333;
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
            <li><a href="/user/logout">Logout</a></li>
        </ul>
    </nav>

    <div class="form-container">
        <h2>Edit Profile</h2>

        <c:choose>
            <c:when test="${not empty customer}">
                <form action="<c:url value='/user/updateProfile'/>" method="POST">
                    
                    <input type="hidden" name="customerId" value="${customer.customerId}">

                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" id="username" name="username" value="${customer.username}" readonly>
                    </div>

                    <div class="form-group">
                        <label for="firstName">First Name:</label>
                        <input type="text" id="firstName" name="firstName" value="${customer.firstName}" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="lastName">Last Name:</label>
                        <input type="text" id="lastName" name="lastName" value="${customer.lastName}" required>
                    </div>

                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email" value="${customer.email}" required>
                    </div>

                    <div class="form-group">
                        <label for="phoneNumber">Phone Number:</label>
                        <input type="text" id="phoneNumber" name="phoneNumber" value="${customer.phoneNumber}" required pattern="\d{10,}" title="Must be a valid phone number (e.g., at least 10 digits)">
                    </div>

                    <div class="form-group" style="align-items: flex-start;">
                        <label for="address">Address:</label>
                        <textarea id="address" name="address" rows="3" required style="resize: vertical;">${customer.address}</textarea>
                    </div>

                    <div class="form-group">
                        <label>Insurance Eligible:</label>
                        <div class="checkbox-group">
                            <input type="checkbox" id="insuranceEligibility" name="insuranceEligibility" 
                                   <c:if test="${customer.insuranceEligibility}">checked</c:if> disabled>
                            <label for="insuranceEligibility" style="width: auto; font-weight: normal; margin-bottom: 0;">
                                <c:choose>
                                    <c:when test="${customer.insuranceEligibility}">Yes, Eligible</c:when>
                                    <c:otherwise>No, Not Eligible</c:otherwise>
                                </c:choose>
                            </label>
                        </div>
                    </div>

                    <div class="profile-actions">
                        <button type="submit" class="btn btn-save">Save Changes</button>
                        <a href="<c:url value='/user/profile'/>" class="btn btn-cancel">Cancel</a>
                    </div>
                </form>
            </c:when>
            <c:otherwise>
                <div class="form-container">
                    <p style="text-align: center; color: red; font-size: 1.2em;">Customer details could not be loaded for editing.</p>
                    <div class="profile-actions">
                         <a href="<c:url value='/user/profile'/>" class="btn btn-cancel">Back to Profile</a>
                    </div>
                </div>
            </c:otherwise>
        </c:choose>
    </div>

    <footer>
        <p>&copy; 2025 Mediverse. All rights reserved.</p>
    </footer>

</body>
</html>