<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Admin Dashboard</title>

    <!-- Open Sans Font -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/dashboard.css">
    
    <style type="text/css">

    	
    </style>
  </head>
  <body>
     <div class="grid-container">
     
<!-- Header start -->
<header class="header">
    <div class="header-left">
        <!-- Update the logout button with an id -->
        <button id="logoutButton" class="logout-button" title="Logout">
            <span class="material-icons-outlined">exit_to_app</span>
        </button>
    </div>
    <div class="header-center" id="user-email"></div>
    <div class="header-right">
        <span class="material-icons-outlined">notifications</span>
        <span class="material-icons-outlined">search</span>
        <span class="material-icons-outlined">email</span>
        <div class="dropdown dropdown-profile">
            <button class="dropbtn material-icons-outlined">account_circle</button>
            <div class="dropdown-content" id="profileDropdownContent">
                <div class="profile-info">
                    <p>User Profile</p>
                    <p>Email: <span class="profile-email" id="userEmail"></span></p>
                    
                </div>
                
                <a href="#" class="profile-action" onclick="logout()">Logout</a>
            </div>
        </div>
    </div>
</header>
<!-- Header End -->




      <!-- Sidebar -->
      <aside id="sidebar">
        <div class="sidebar-title">
          <div class="sidebar-brand">
               <img src="images/logo-no-background.png" alt="Logo" class="logo-icon">
          </div>
          <span class="material-icons-outlined" onclick="closeSidebar()">close</span>
        </div>

        <ul class="sidebar-list">
          <li class="sidebar-list-item">
            <a href="#">
              <span class="material-icons-outlined">dashboard</span> Dashboard
            </a>
          </li>
          </li>
          
          <li class="sidebar-list-item">
            <a href="support.jsp">
              <span class="material-icons-outlined">phone</span> Support
            </a>
          </li>
          <li class="sidebar-list-item">
            <a href="#">
              <span class="material-icons-outlined">email</span> Messages
            </a>
          </li>
          <li class="sidebar-list-item">
            <a href="#">
              <span class="material-icons-outlined">poll</span> Reports
            </a>
          </li>
          
        </ul>
      </aside>
      <!-- End Sidebar -->

        </ul>
      </aside>
      <!-- End Sidebar -->

      <!-- Main -->
      <main class="main-container">
        <div class="main-title">
          <h2>DASHBOARD</h2>
        </div>

        <div class="main-cards">

          <div class="card">
            <div class="card-inner">
              <h2>LIKES</h2>
              <span class="material-icons-outlined">thumb_up</span>
            </div>
            <h1>4,021</h1>
          </div>

          <div class="card">
            <div class="card-inner">
              <h2>SUBSCRIBERS</h2>
              <span class="material-icons-outlined">subscriptions</span>
            </div>
            <h1>8,731</h1>
          </div>

          <div class="card">
            <div class="card-inner">
              <h2>FOLLOWERS</h2>
              <span class="material-icons-outlined">groups</span>
            </div>
            <h1>3,841</h1>
          </div>

          <div class="card">
            <div class="card-inner">
              <h2>MESSAGES</h2>
              <span class="material-icons-outlined">forum</span>
            </div>
            <h1>1,962</h1>
          </div>

        </div>

        <div class="products">

          <div class="product-card">
            <h2 class="product-description">Latest Updates</h2>
            <p class="text-secondary">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce laoreet facilisis nulla, consectetur pulvinar diam. Aliquam tempus vel quam.
            </p>
            <button type="button" class="product-button">
              <span class="material-icons-outlined">add</span>
            </button>
          </div>

          <div class="social-media">
            <div class="product">

              <div>
                <div class="product-icon background-red">
                  <i class="bi bi-twitter"></i>
                </div>
                <h1 class="text-red">+274</h1>
                <p class="text-secondary">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
  
              <div>
                <div class="product-icon background-green">
                  <i class="bi bi-instagram"></i>
                </div>
                <h1 class="text-green">+352</h1>
                <p class="text-secondary">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
  
              <div>
                <div class="product-icon background-orange">
                  <i class="bi bi-facebook"></i>
                </div>
                <h1 class="text-orange">-126</h1>
                <p class="text-secondary">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
  
              <div>
                <div class="product-icon background-blue">
                  <i class="bi bi-linkedin"></i>
                </div>
                <h1 class="text-blue">+102</h1>
                <p class="text-secondary">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
              
            </div>
          </div>

        </div>
      </main>
      <!-- End Main -->

    </div>

    <!-- Scripts -->
    <!-- Custom JS -->
    <script src="js/scripts.js"> </script>
    
    <script>
        // Get the element where the user email will be displayed
        const userEmailElement = document.getElementById('user-email');

        // Set the logged-in user's email directly in JavaScript using JSP EL
        const loggedInUserEmail = "${loggedInUserEmail}";

        // Set the content of the user email element
        userEmailElement.textContent = loggedInUserEmail;
    </script>
    
    <!-- JavaScript for logout functionality -->
<script>
    // Function to handle logout action
    function logout() {
        // Perform logout actions here, such as clearing session data
        // For now, simply redirect to the homepage.jsp file
        window.location.href = "homepage.jsp";
    }

    // Attach event listener to the logout button
    document.getElementById("logoutButton").addEventListener("click", logout);
</script>

<script>
    // Function to fetch user information and update profile dropdown
    function updateProfileDropdown() {
        // Assuming you have a function to fetch user details from the backend
        // and it returns an object with keys: email, mobileNumber, and name
        const user = {
            email: "${loggedInUserEmail}",
            mobileNumber: "${loggedInUserMobileNumber}",
            name: "${loggedInUserName}"
        };

        // Update user information in the profile dropdown
        document.getElementById('userEmail').textContent = user.email;
        document.getElementById('userMobileNumber').textContent = user.mobileNumber;
        document.getElementById('userName').textContent = user.name;
    }

    // Call the function to update the profile dropdown on page load
    window.onload = updateProfileDropdown;

    // Function to handle logout action
    function logout() {
        // Perform logout actions here, such as clearing session data
        // For now, simply redirect to the homepage.jsp file
        window.location.href = "homepage.jsp";
    }
</script>

  </body>
</html>
