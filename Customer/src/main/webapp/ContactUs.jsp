<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact us </title>
<link rel="stylesheet" type="text/css" href="customer.css">
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

		<div class="form-container">
		<form action="feed" class="ProblemForm" border="1" method="post">
		<fieldset>
		<legend>Enter your details :-</legend>
		<div class="form-flex">
			<div>
				<label for="Name"><b>First Name : </b></label>
				<input type="text" name="Name" id="Name" class="FName" placeholder="* Enter the Name" required>
			</div>
			
			<br>
			<div>
				<label for="Mail_Address"><b>Email :</b></label>
				<input type="email" name="Mail" id="Mail_Address" class="MailAddress" placeholder="*Enter the email address" maxlength="25" minlength="15" required>
			</div>
			<br>
			
			
			<div>
				<label for="Phone_Number"><b>Contact Number :</b></label>
				<input type="tel" name="YourNumber" id="Phone_Number" class="PhoneNumber" placeholder="*Enter the contact number" maxlength="10" minlength="10" required>
			</div>
			<br>
			<div>
				<p><b>Fill the below text area with your problems :</b></p>
				<textarea class="problem" name="YourProblem">How can we help you?....</textarea>
			</div>
			<br>
			<div class="BTN" align="center">
				<button type="submit" name="submit" class="CustomButton" >Submit</button>
				<button type="reset" class="CustomButton">Reset</button>
			</div>
		</div>
		</fieldset>
		</form>
		<br>
		<div>

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
</body>
</html>

