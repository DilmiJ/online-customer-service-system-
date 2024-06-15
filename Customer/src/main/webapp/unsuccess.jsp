<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Unsuccess</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<style>
  /* CSS Styles */
  @charset "UTF-8";
  
  body {
    width: 100%;
    height: 135vh;
    background-image: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.75)), url(bg.jpg);
    background-position: bottom;
    background-size: cover;
    margin: 0;
    padding: 0;
    color: white;
    font-family: Arial, sans-serif;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    min-height: 100vh;
  }

  .banner {
    width: 100%;
    height: 10vh;
    background-color: white;
  }

  .navbar {
    width: 85%;
    margin: auto;
    padding: 10px 0;
    display: flex;
    align-items: center;
    justify-content: space-between;
  }

  .logo {
    width: 120px;
    cursor: pointer;
  }

  .navbar ul {
    display: flex;
    list-style: none;
  }

  .navbar ul li {
    list-style: none;
    display: inline-block;
    margin: 0 20px;
    position: relative;
  }

  .navbar ul li a {
    text-decoration: none;
    color: black;
    text-transform: uppercase;
  }

  .navbar ul li::after {
    content: '';
    display: block;
    height: 3px;
    width: 0;
    background: #009688;
    position: absolute;
    left: 0;
    bottom: -10px;
    transition: width 0.3s;
  }

  .navbar ul li:hover::after {
    width: 100%;
  }

  .content {
    width: 100%;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    text-align: center;
    color: white;
  }

  .content h1 {
    font-size: 70px;
    margin-top: -80px;
  }

  .content p {
    margin: 20px auto;
    font-weight: 100;
    line-height: 25px;
  }

  button {
    width: 200px;
    padding: 15px 0;
    text-align: center;
    border-radius: 25px;
    font-weight: bold;
    border: 2px solid #009688;
    background: transparent;
    color: #fff;
    cursor: pointer;
    position: relative;
    overflow: hidden;
  }

  span {
    background: #009688;
    height: 100%;
    width: 0;
    border-radius: 25px;
    position: absolute;
    left: 0;
    bottom: 0;
    z-index: -1;
    transition: 0.5s;
  }

  button:hover span {
    width: 100%;
  }

  button:hover {
    border: none;
  }
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
  </div>

  <div class="content">
    <h1>Unsuccessful</h1>
  </div>
</body>
</html>
