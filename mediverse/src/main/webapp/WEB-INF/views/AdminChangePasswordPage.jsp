<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password - Mediverse</title>
    <style>
        /* Reusing and extending styles from AdminProfilePage.jsp */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f6;
            margin: 0;
            padding: 0;
            color: #333;
        }

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

        .footer {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 10px;
            margin-top: 40px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .footer a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        /* Form Specific Styles (similar to AdminEditProfile.jsp) */
        .form-container {
            max-width: 500px;
            margin: 50px auto;
            padding: 30px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .form-container h2 {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 30px;
            border-bottom: 2px solid #e0e0e0;
            padding-bottom: 10px;
        }

        .form-group {
            margin-bottom: 20px;
            display: flex;
            flex-direction: column; /* Stack label and input */
        }

        .form-group label {
            font-weight: bold;
            margin-bottom: 8px;
            color: #555;
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

        /* Button Group Styling */
        .button-group {
            text-align: center;
            margin-top: 30px;
        }
        
        .button-group button, .button-group a {
            text-decoration: none;
            color: white;
            padding: 12px 25px;
            border-radius: 5px;
            font-weight: bold;
            margin: 0 10px;
            transition: background-color 0.3s ease;
            cursor: pointer;
            display: inline-block;
        }

        .button-group button[type="submit"] {
            background-color: #4CAF50;
            border: none;
        }
        
        .button-group button[type="submit"]:hover {
            background-color: #45a049;
        }

        .button-group a {
            background-color: #f44336;
            border: none;
        }
        
        .button-group a:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Change Password</h1>
        <a href="/admin/viewProfile" style="color: white; text-decoration: none; font-weight: bold;">&#9664; Back to Profile</a>
    </div>

    <div class="form-container">
        <h2>Update Your Credentials</h2>
        
        <c:if test="${not empty message}">
            <div class="message ${messageType}"><c:out value="${message}" /></div>
        </c:if>

        <c:choose>
            <c:when test="${not empty admin}">
                <form action="/admin/updatePassword" method="POST">
                    
                    <input type="hidden" name="adminId" value="<c:out value='${admin.adminId}' />">

                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" id="username" name="username" value="<c:out value='${admin.username}' />" readonly>
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

                    <div class="button-group">
                        <button type="submit">Change Password</button>
                        <a href="/admin/viewProfile">Cancel</a>
                    </div>
                </form>
            </c:when>
            <c:otherwise>
                <p style="text-align: center; color: red;">Admin details could not be loaded. Please sign in again.</p>
            </c:otherwise>
        </c:choose>

    </div>

    <div class="footer">
        <p>&copy; 2025 Mediverse | <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </div>
    
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