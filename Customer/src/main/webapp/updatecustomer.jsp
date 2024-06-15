<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Updatecustomer</title>
<link rel="stylesheet" type="text/css" href="css/deletecustomer.css">
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

	<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String phone=request.getParameter("phone");
	String userName=request.getParameter("uname");
	String password=request.getParameter("pass");

	%>

<form action="update" method="post">
<table>

	<tr>
		<td>Customer ID</td>
		<td><input type="text" name="cusid" value="<%= id %>"readonly></td>
	</tr>
	
	<tr>
		<td>Name</td>
		<td><input type="text" name="name" value="<%= name %>"></td>
	</tr>
	<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr>
		<td>Phone Number</td>
		<td><input type="text" name="phone" value="<%= phone %>"></td>
	</tr>
	<tr>
		<td>User Name</td>
		<td><input type="text" name="uname" value="<%= userName %>"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="text" name="pass" value="<%= password %>"></td>
	</tr>
	
	
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Data"><br>
	</form>
</body>
</html>