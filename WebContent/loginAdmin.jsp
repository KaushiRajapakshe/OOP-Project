<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Doctor Login</title>
</head>
<link rel="stylesheet" type="text/css" href="style/footerStyle.css">

<style>

body {
  
    padding: 25px;
    background: url(images/background.jpg);
    background-repeat: no-repeat;
    background-size: 1600px 1000px;
    margin : 0px;
    padding : 0px;
}


.log{
	color:white;
}


.button {
 
    border: none;
    color: white;
    padding: 12px 40px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 18px;
    margin: 8px 8px;
	cursor: pointer;
	border-radius:5px;
}

.button2 {background-color: #008CBA;
	 } /* Blue */





input[type="text"]{
	font-family : Arial;
	font-size : 25px;
	border-radius :9px;
	}
	
input[type="password"]{
	font-family : Arial;
	font-size : 25px;
	border-radius :9px;
	}

.reg{
	color:white;
}



</style>
<link rel="stylesheet" type="text/css" href="mainStyle.css">





<body>
<div id="back">

	<jsp:include page="headerAdmin.jsp"></jsp:include>


<br><br><br><br><br>

<center>

<h1 class="reg" >Admin Login</h1>
<br><br>
<form action="adminlogindb" method="post">

<table>
	
	<tr>
		<td><h3 class="log">Admin ID:</h3></td>
		<td><input type="text" name="id" Required></td></tr>

	<tr>
		<td><h3 class="log">Password:</h3></td>
		<td><input type="password" name="password" Required></td></tr>

</table>
<br>



<button class="button button2" name="submit">Login</button></br>

<a href=""  style="color:white;">Forget Your Password</a>

<br><br>

</form>


</center>

<br><br><br>


	
	
<footer class="footer-distributed">

	<div class="footer-left">

		<h3>
			BlueLine Health 
		</h3>

		<p class="footer-links">
			<a href="#">Home</a> · <a href="#">Blog</a> · <a href="#">Pricing</a>
			· <a href="#">About</a> · <a href="#">Faq</a> · <a href="#">Contact</a>
		</p>

		<p class="footer-company-name">Blueline Health &copy; 2018</p>
	</div>

	<div class="footer-center">

		<div>
			<i class="fa fa-map-marker"></i>
			<p>
				<span>21 Main Street</span> Colombo, Sri lanka
			</p>
		</div>

		<div>
			<i class="fa fa-phone"></i>
			<p>+94 769391251</p>
		</div>

		<div>
			<i class="fa fa-envelope"></i>
			<p>
				<a href="mailto:support@company.com">BlueLineHealth@gmail.com</a>
			</p>
		</div>

	</div>

	<div class="footer-right">

		<p class="footer-company-about">
			<span>About the company</span> We are here to help you to obtain the
			best services that can never be found any where else other than here.
		</p>



	</div>

	</footer>
	
	
	


</body>
</html>