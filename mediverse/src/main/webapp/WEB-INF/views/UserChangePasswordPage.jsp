<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mediverse - Change Password</title>
    <link rel="stylesheet" href="<c:url value='/css/userhome.css'/>">
    <style>
        /* Reusing profile and form styles */
        .form-container {
            max-width: 500px; /* Slightly smaller for password forms */
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
            flex-direction: column; 
        }

        .form-group label {
            font-weight: bold;
            margin-bottom: 8px;
            color: #343a40;
        }

        .form-group input[type="text"],
        .form-group input[type="password"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        
        /* Style for read-only fields */
        .form-group input[readonly] {
            background-color: #e9ecef;
            cursor: not-allowed;
        }
        
        /* Message Styling */
        .message {
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 4px;
            text-align: center;
            font-weight: bold;
        }
        .success {
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
        }
        .error {
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
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
            background-color: #4CAF50; 
        }
        .btn-save:hover {
            background-color: #45a049;
        }

        .btn-cancel {
            background-color: #dc3545; 
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
        <h2>Change Password</h2>
        
        <c:if test="${not empty message}">
            <div class="message ${messageType}"><c:out value="${message}" /></div>
        </c:if>

        <c:choose>
            <c:when test="${not empty customer}">
                <form action="<c:url value='/user/updatePassword'/>" method="POST">
                    
                    <input type="hidden" name="customerId" value="${customer.customerId}">

                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" id="username" name="username" value="${customer.username}" readonly>
                    </div>

                    <div class="form-group">
                        <label for="oldPassword">Old Password:</label>
                        <input type="password" id="oldPassword" name="oldPassword" required>
                    </div>

                    <div class="form-group">
                        <label for="newPassword">New Password:</label>
                        <input type="password" id="newPassword" name="newPassword" required pattern=".{8,}" title="Password must be 8 characters or more">
                    </div>
                    
                    <div class="form-group">
                        <label for="confirmPassword">Confirm New Password:</label>
                        <input type="password" id="confirmPassword" name="confirmPassword" required>
                    </div>

                    <div class="profile-actions">
                        <button type="submit" class="btn btn-save">Change Password</button>
                        <a href="<c:url value='/user/profile'/>" class="btn btn-cancel">Cancel</a>
                    </div>
                </form>
            </c:when>
            <c:otherwise>
                <div class="form-container">
                    <p style="text-align: center; color: red; font-size: 1.2em;">Customer details could not be loaded for password change.</p>
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
    
    <script>
        document.querySelector('form').addEventListener('submit', function(event) {
            const newPassword = document.getElementById('newPassword').value;
            const confirmPassword = document.getElementById('confirmPassword').value;

            if (newPassword !== confirmPassword) {
                alert('Error: New Password and Confirm New Password must match.');
                event.preventDefault(); // Stop form submission
            }
        });
    </script>
</body>
</html>