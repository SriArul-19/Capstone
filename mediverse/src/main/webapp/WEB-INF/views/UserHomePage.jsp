<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mediverse - User Home</title>
    <link rel="stylesheet" href="<c:url value='/css/userhome.css'/>">
</head>
<body>

    <!-- Navbar -->
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
        <div class="search-container">
            <!-- Search form -->
            <form action="/user/search" method="get">
                <input type="text" name="searchQuery" placeholder="Search for Medicine Name or Category" class="search-input" required>
                <button type="submit" class="search-btn">Search</button>
            </form>
        </div>
    </nav>

    <!-- Hero Section with Search -->
    <section class="hero">
        <div class="hero-text">
            <h1>What are you looking for?</h1>
            <p>Find the best medicine and healthcare services at your fingertips.</p>
        </div>
        <div class="hero-search">
            <form action="/user/search" method="get">
                <input type="text" name="searchQuery" placeholder="Search for Medicine Name or Category" class="search-input" required>
                <button type="submit" class="search-btn">Search</button>
            </form>
        </div>
    </section>

    <!-- Categories Section -->
    <section class="categories">
        <h2>Shop by Category</h2>
        <div class="category-items">
            <div class="category-item">
                <img src="<c:url value='/images/medicine.jpg'/>" alt="Medicine">
                <p>Medicine</p>
                <p>Save 24%</p>
            </div>
            <div class="category-item">
                <img src="<c:url value='/images/lab_tests.jpg'/>" alt="Lab Tests">
                <p>Lab Tests</p>
                <p>Upto 70% Off</p>
            </div>
            <div class="category-item">
                <img src="<c:url value='/images/doctor_consult.jpg'/>" alt="Doctor Consult">
                <p>Doctor Consult</p>
                <p>From ₹199</p>
            </div>
            <div class="category-item">
                <img src="<c:url value='/images/branded_substitute.jpg'/>" alt="Branded Substitute">
                <p>Branded Substitute</p>
                <p>Upto 50% Off</p>
            </div>
            <div class="category-item">
                <img src="<c:url value='/images/healthcare.jpg'/>" alt="Healthcare">
                <p>Healthcare</p>
                <p>Upto 80% Off</p>
            </div>
            <div class="category-item">
                <img src="<c:url value='/images/health_blogs.jpg'/>" alt="Health Blogs">
                <p>Health Blogs</p>
            </div>
        </div>
    </section>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2025 Mediverse. All rights reserved.</p>
    </footer>

</body>
</html>
