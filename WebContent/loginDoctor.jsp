<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Doctor Login</title>
</head>
<link rel="stylesheet" type="text/css" href="footerStyle.css">

<style>

body {
  
    padding: 25px;
    background: url(images/background.jpg);
    background-repeat: no-repeat;
    background-size: 1400px 1000px;
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
margin-top : 150px;
	color:white;
}



</style>

<link rel="stylesheet" type="text/css" href="style/mainStyle.css">





<body>

	<jsp:include page="headerDoctor.jsp"></jsp:include>
<center>

<h1 class="reg">Doctor Login</h1>
<br><br>
<form action="doclogindb" method="post">

<table>
	
	<tr>
		<td><h3 class="log">Doctor ID:</h3></td>
		<td><input type="text" name="id" Required></td></tr>

	<tr>
		<td><h3 class="log">Password:</h3></td>
		<td><input type="password" name="password" Required></td></tr>

</table>
<br>



<button class="button button2" name="submit">Login</button></br>


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