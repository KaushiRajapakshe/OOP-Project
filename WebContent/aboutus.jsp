<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

   
<html>
<head>
<title>About Us</title>
</head>
<link rel="stylesheet" type="text/css" href="style/footerStyle.css">

<style>

#back {
  
    padding: 25px;
    background: url(s.jpg);
    background-repeat: no-repeat;
    background-size: 1400px 1300px;
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

.header{
	width : 100%;
}

.heading{
	margin-top : 100px;
	margin-left : 550px;
	
}

.content{
	margin-left : 50px;
}
</style>

<link rel="stylesheet" type="text/css" href="mainStyle.css">




<body>

<div class = "header">
	<jsp:include page="header.jsp"></jsp:include>
</div>

<h1 class= " heading" style="color:white;font-family:Arial" >About Us</h1>
<br><br>
<div class="content">
<h2 style="color:white">Management</h2>
<p style="color:white;font-size:20px">
<b>Vision Statement</b><br>
To be the foremost and preferred Private Healthcare Facility in the Country, which will serve the Nation and her People to build a healthier community.
<br><br>
<b>Mission Statement</b><br>
To maintain exceptional and compassionate quality while offering cost effective healthcare solutions of international standards.
</p>
<br><br>
<h2 style="color:white">Director Board</h2>

<br>
<table>
<tr>
<td><img src=images/suren.jpg width=200px height=200px;>  </td>
<td><img src=images/pula.jpg width=200px height=200px padding=20px>  </td>
<td><img src=images/kaushi.jpg width=200px height=200px padding=20px>  </td>

</tr>

</table>
</div>
<br>
<h2 style="color:white;font-family:Arial; " ><center>Hot Line-0115 555 555</center></h2>





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