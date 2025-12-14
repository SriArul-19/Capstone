<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Mediverse</title>
    <link rel="stylesheet" href="<c:url value='/css/landing.css'/>">
    <style>
        /* Container for content */
        .contact-container {
            max-width: 700px;
            margin: 80px auto; /* Increased top margin for better spacing */
            padding: 40px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .contact-container h2 {
            color: #343a40; 
            font-size: 32px;
            margin-bottom: 30px;
            border-bottom: 2px solid #00C853;
            padding-bottom: 10px;
            display: inline-block;
        }

        .contact-info {
            margin-top: 30px;
            font-size: 1.1em;
            text-align: left;
            display: inline-block; /* Keeps content centered as a block */
        }

        .contact-item {
            display: flex;
            align-items: center;
            margin-bottom: 25px;
        }

        .contact-item strong {
            display: inline-block;
            width: 150px; 
            font-weight: bold;
            color: #343a40;
            font-size: 18px;
        }

        .contact-item span, .contact-item a {
            color: #007bff; /* Blue for links/data */
            text-decoration: none;
            font-size: 18px;
        }
        
        .contact-item a:hover {
            text-decoration: underline;
        }
        
        .icon {
            margin-right: 15px;
            color: #00C853; /* Green icon color */
            font-size: 24px;
        }

        /* Ensuring the footer is not fixed if content is long */
        .footer {
            position: static;
        }
    </style>
    </head>

<body>

<nav class="navbar">
    <div class="logo">
        <a href="/">Mediverse</a>
    </div>
    <ul>
        <li><a href="/mediverse/about">About</a></li>
        <li><a href="/mediverse/contact">Contact</a></li>
        <li><a href="./roleselection" class="btn">Sign Up</a></li>
        <li><a href="./roleselectionlogin" class="btn">Sign In</a></li>
    </ul>
</nav>

<div class="contact-container">
    <h2>Contact Mediverse Support</h2>

    <p style="color: #555; margin-bottom: 40px;">We are here to help you with all your pharmacy and system inquiries.</p>

    <div class="contact-info">
        
        <div class="contact-item">
            <span class="icon">📞</span>
            <strong>Phone Number:</strong> 
            <a href="tel:1122334455">1122334455</a>
        </div>

        <div class="contact-item">
            <span class="icon">📧</span>
            <strong>Email ID:</strong> 
            <a href="mailto:mediverse@contact.com">mediverse@contact.com</a>
        </div>
        
        <div class="contact-item">
            <span class="icon">🏢</span>
            <strong>Address:</strong> 
            <span>Mediverse Pharmacy Headquarters, City, State, 12345</span>
        </div>
        
        <div class="contact-item">
            <span class="icon">🕒</span>
            <strong>Support Hours:</strong> 
            <span>Mon - Fri: 9:00 AM - 6:00 PM (IST)</span>
        </div>

    </div>
</div>

<footer class="footer">
    <p>© 2025 Mediverse. All rights reserved.</p>
</footer>

</body>
</html>