<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="./css/login.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<style>
  /* Paste your CSS styles here */
</style>
</head>
<body>
<div class="banner">
  <div class="navbar">
    <img src="gb.jpg" class="logo">
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Contact us</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">FAQ</a></li>
      <li><a href="#">Login</a></li>
    </ul>
  </div>
  <div class="content">
    <h1></h1>
  </div>
</div>

<div class="container">
  <h2>Login</h2>
  <form id="loginForm" action="log" method="post" onsubmit="return validateLogin()">
    <div class="form-group">
      <label for="uid">Username</label>
      <input type="text" id="uid" name="uid" placeholder="Enter your username">
    </div>
    <div class="form-group">
      <label for="pass">Password</label>
      <input type="password" id="pass" name="pass" placeholder="Enter your password">
    </div>
    <p>If you are not a customer <a href="customerinsert.jsp">Click here</a></p>
    <div class="form-group">
      <button type="submit" name="submit">Login</button>
    </div>
  </form>
</div>

<footer class="footer">
  <div class="bb">
    <div class="row">
      <div class="footer-col">
        <h4>Company</h4>
        <ul>
          <li><a href="#">About us</a></li>
          <li><a href="#">Our services</a></li>
          <li><a href="#">Privacy policy</a></li>
          <li><a href="#">Affiliate programs</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <h4>Get help</h4>
        <ul>
          <li><a href="#">FAQ</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <h4>Follow us</h4>
        <div class="social-links">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
          <a href="#"><i class="fab fa-linkedin-in"></i></a>
        </div>
      </div>
    </div>
  </div>
</footer>



</body>
</html>
