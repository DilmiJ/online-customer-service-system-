<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customerinsert</title>
<link rel="stylesheet" type="text/css" href="customerinsert.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body>
	<div class="banner">
	<div class="navbar">
		<img src="gb.jpg" class="logo">
		<ul>
			<li><a href="#">Home</a><li>
			<li><a href="#">Contact us</a><li>
			<li><a href="#">About</a><li>
			<li><a href="#">FAQ</a><li>
			<li><a href="#">Login</a></li>
		</ul>
	</div>
	<div class="content">
		<h1></h1>
	</div>
	</div>

<form name="myForm" action="Insert" method="post" onsubmit="return validateForm()">
		Name<input type="text" name="name" required oninput="filterNameInput(event)"><br>
		Email<input type="text" name="email" required><br>
		Phone Number<input type="text" name="phone" required><br>
		User Name<input type="text" name="uid" required><br>
		Password<input type="password" name="psw" required><br>
		<input type="submit" name="submit" value="Create Customer" required>
</form>

<footer class="footer">
	<div class="container">
		<div class="row">
			<div class="footer-col">
			<h4>Company</h4>
				<ul>
					<li><a href="#">about us</a></li>
					<li><a href="#">our services</a></li>
					<li><a href="#">privacy policy</a></li>
					<li><a href="#">affiliate programs</a></li>
				</ul>
			</div>
			<div class="footer-col">
			<h4>Get help</h4>
				<ul>
					<li><a href="#">FAQ</a></li>
				</ul>
			</div>		
			<div class="footer-col">
			<h4>follow us</h4>
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
<script>
function validateForm() {
    var phoneNumber = document.forms["myForm"]["phone"].value;
    var email = document.forms["myForm"]["email"].value;

    // Validate phone number length
    if (phoneNumber.length < 10) {
        alert("Phone number must be at least 10 digits.");
        return false;
    }

    // Validate email presence
    if (email.trim() === "") {
        alert("Email is required.");
        return false;
    }

    return true;
    
}
function filterNameInput(event) {
    var input = event.target.value;
    // Replace any character that is not a letter or space
    event.target.value = input.replace(/[^A-Za-z\s]/g, '');
}
</script>

</body>
</html>
