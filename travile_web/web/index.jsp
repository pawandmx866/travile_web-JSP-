<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelX</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        @font-face {
            font-family: 'Matemasie';
            src: url('fonts/Matemasie-Regular.ttf') format('truetype');
        }

        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        #map {
            height: 400px;
            width: 100%;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 50px;
            background-image: url('NV1.jpeg'); /* Path to your header image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .logo h1 {
            font-size: 24px;
            font-weight: bold;
            margin: 0;
            font-family: 'Matemasie', serif; /* Apply custom font here */
        }

        .logo .dot {
            color: #007BFF;
            font-size: 24px;
        }

        nav {
            border-bottom: 2px solid #007BFF; /* Add border to the bottom of the nav bar */
        }

        .nav-links {
            display: flex;
            gap: 30px;
            padding: 10px 0; /* Adjust padding to align with border */
        }

        .nav-links li {
            list-style: none;
        }

        .nav-links a {
            text-decoration: none;
            color: #fff;
            font-size: 16px;
        }

        .cart-section {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .cart {
            position: relative;
            text-decoration: none;
            color: #fff;
        }

        .cart-icon {
            font-size: 20px;
        }

        .cart-count {
            position: absolute;
            top: -10px;
            right: -10px;
            background-color: red;
            color: #fff;
            padding: 2px 6px;
            border-radius: 50%;
            font-size: 12px;
        }

        .book-now {
            text-decoration: none;
            color: #fff;
            background-color: #007BFF;
            padding: 10px 20px;
            border-radius: 30px;
        }

        .menu-icon {
            font-size: 24px;
            cursor: pointer;
            color: #fff;
        }

        .main-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 100px 50px;
            background-color: #fdfdfd;
        }

        .content {
            max-width: 50%;
        }

        .subtitle {
            color: #007BFF;
            font-size: 18px;
            margin-bottom: 10px;
        }

        .title {
            font-size: 60px;
            font-weight: bold;
            line-height: 1;
            font-family: 'Matemasie', serif; /* Apply custom font here */
            color: #00BFFF; /* Water blue color */
        }

        .explore-btn {
            display: inline-block;
            margin-top: 20px;
            padding: 15px 30px;
            background-color: #007BFF;
            color: #fff;
            text-decoration: none;
            border-radius: 50px;
            font-size: 16px;
            font-weight: bold;
        }

        .explore-btn .arrow-icon {
            margin-left: 10px;
            font-size: 16px;
        }

        .destination-image img {
            width: 500px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            transform: rotate(-5deg);
        }

        .price-table {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 20px;
            padding: 50px;
            border: 2px solid #000;
            border-radius: 10px;
            background-image: url('bg2.jpeg'); /* Path to your background image */
            background-size: cover; /* Ensures the image covers the whole section */
            background-position: center; /* Centers the image */
            background-repeat: no-repeat; /* Prevents repeating the image */
            background-color: rgba(255, 255, 255, 0.8); /* Optional: semi-transparent white overlay for better text visibility */
            margin: 50px 0;
        }

        .price-option {
            width: 250px;
            padding: 20px;
            text-align: center;
            border: 1px solid #007BFF;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .price-option.featured {
            background-color: #007BFF;
            color: #fff;
        }

        .price-option h3 {
            margin-top: 0;
            font-size: 24px;
            font-weight: bold;
        }

        .price-option h4 {
            margin: 10px 0;
            font-size: 36px;
            color: #007BFF;
        }

        .price-option.featured h4 {
            color: #fff;
        }

        .price-option ul {
            list-style-type: none;
            padding: 0;
            margin: 20px 0;
        }

        .price-option ul li {
            margin-bottom: 10px;
            font-size: 16px;
        }

        .price-option button {
            padding: 10px 20px;
            border: none;
            border-radius: 30px;
            background-color: #007BFF;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
        }

        .price-option.featured button {
            background-color: #fff;
            color: #007BFF;
        }

        .footer {
            display: flex;
            justify-content: center;
            background-color: red;
            padding: 20px 0;
        }

        .footer-links {
            display: flex;
            gap: 40px;
        }

        .footer-link {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
            font-size: 18px;
        }

        .search-container {
            margin: 20px 0;
        }

        .search-box {
            display: flex;
            gap: 10px;
            margin-bottom: 20px;
        }

        .search-box input {
            width: 250px;
            padding: 10px;
            border: 1px solid #007BFF;
            border-radius: 5px;
        }

        .search-box button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #007BFF;
            color: #fff;
            cursor: pointer;
        }

        .custom-map-control-button {
            background-color: #fff;
            border: 0;
            border-radius: 2px;
            box-shadow: 0 1px 4px -1px rgba(0, 0, 0, 0.3);
            margin: 10px;
            padding: 0 0.5em;
            font: 400 18px Roboto, Arial, sans-serif;
            overflow: hidden;
            height: 40px;
            cursor: pointer;
        }

        .custom-map-control-button:hover {
            background: rgb(235, 235, 235);
        }
    </style>
</head>
<body>
    <header class="header">
        <div class="logo">
            <h1>TravelX<span class="dot">.</span></h1>
        </div>
        <nav>
            <ul class="nav-links">
                <li><a href="#">HOME</a></li>
                <li><a href="#">ABOUT</a></li>
                <li><a href="#">DESTINATIONS</a></li>
                <li><a href="#">BLOG</a></li>
                <li><a href="#">CONTACT</a></li>
            </ul>
        </nav>
        <div class="cart-section">
            <a href="#" class="cart"><i class="fas fa-shopping-cart cart-icon"></i><span class="cart-count">2</span></a>
            <a href="#" class="book-now">BOOK NOW</a>
            <div class="menu-icon"><i class="fas fa-bars"></i></div>
        </div>
    </header>

    <section class="main-content">
        <div class="content">
            <h2 class="subtitle">YOUR NEXT ADVENTURE AWAITS</h2>
            <h1 class="title">EXPLORE THE WORLD.</h1>
            <a href="#" class="explore-btn">EXPLORE NOW <span class="arrow-icon">?</span></a>
        </div>
        <div class="destination-image">
            <img src="${pageContext.request.contextPath}/p1.png" alt="Destination Image">
        </div>
    </section>

    <section class="price-table">
        <div class="price-option">
            <h3>PERSONAL</h3>
            <h4>260$</h4>
            <ul>
                <li>Customized Itineraries</li>
                <li>Personalized Travel Plans</li>
                <li>Exclusive Travel Deals</li>
                <li>24/7 Customer Support</li>
            </ul>
            <button>Book Now</button>
        </div>
        <div class="price-option featured">
            <h3>BUSINESS</h3>
            <h4>500$</h4>
            <ul>
                <li>Group Travel Plans</li>
                <li>Priority Support</li>
                <li>Luxury Accommodations</li>
                <li>Exclusive Access to VIP Events</li>
            </ul>
            <button>Book Now</button>
        </div>
        <div class="price-option">
            <h3>FAMILY</h3>
            <h4>350$</h4>
            <ul>
                <li>Family Packages</li>
                <li>Kid-Friendly Activities</li>
                <li>Discounted Family Rates</li>
                <li>Flexible Booking Options</li>
            </ul>
            <button>Book Now</button>
        </div>
    </section>

    <div class="search-container">
        <h2>Find a Location</h2>
        <div class="search-box">
            <input type="text" id="location-input" placeholder="Enter a location">
            <button onclick="geocodeAddress()">Search</button>
        </div>
        <div id="map"></div>
        <button class="custom-map-control-button" onclick="panToCurrentLocation()">Go to My Location</button>
    </div>

    <footer class="footer">
        <div class="footer-links">
            <a href="#" class="footer-link">Privacy Policy</a>
            <a href="#" class="footer-link">Terms of Service</a>
            <a href="#" class="footer-link">Support</a>
        </div>
    </footer>

    <script>
        let map;
        let geocoder;

        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: -34.397, lng: 150.644 },
                zoom: 8
            });
            geocoder = new google.maps.Geocoder();
        }

        function geocodeAddress() {
            const address = document.getElementById('location-input').value;
            geocoder.geocode({ address: address }, (results, status) => {
                if (status === 'OK') {
                    map.setCenter(results[0].geometry.location);
                    new google.maps.Marker({
                        map: map,
                        position: results[0].geometry.location
                    });
                } else {
                    alert('Geocode was not successful for the following reason: ' + status);
                }
            });
        }

        function panToCurrentLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition((position) => {
                    const pos = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };
                    map.setCenter(pos);
                    new google.maps.Marker({
                        position: pos,
                        map: map
                    });
                }, () => {
                    handleLocationError(true, map.getCenter());
                });
            } else {
                handleLocationError(false, map.getCenter());
            }
        }

        function handleLocationError(browserHasGeolocation, pos) {
            alert(browserHasGeolocation ?
                'Error: The Geolocation service failed.' :
                'Error: Your browser doesn\'t support geolocation.');
        }
    </script>

    <script 
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAnoPkWDHSOf9LBpCQlVH_eFatyZ11MPi4&libraries=places&callback=initMap" async defer>
    </script>
</body>
</html>
