<%-- 
    Document   : LoginPatient
    Created on : Apr 17, 2018, 12:05:14 PM
    Author     : Kaushi
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Patient login</title>
</head>
<link rel="stylesheet" type="text/css" href="style/mainStyle.css">
<link rel="stylesheet" type="text/css" href="style/style.css">
<style>



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


.button1 {
 
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

.button3 {background-color: blue;
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



</style>




<body>
<div id="back">


<jsp:include page="header.jsp"></jsp:include>


<br><br><br><br><br>

<center>

<h1 style="color:white;font-family:Arial" >Patient Login</h1>   <!-- Kaushi -->

<br><br>
<form action ="LoginPatient">
<table>
	<tr>
		<td><h3 class="log">NIC:</h3></td>
		<td><input type="text" name="nic" Required></td></tr>

	<tr>
		<td><h3 class="log">Password:</h3></td>
		<td><input type="password" name="password" Required></td></tr>

</table>
<br>



<br><br>
<button class="button button2" name="submit">Login</button></br>

<a href="https://accounts.google.com/signin/v2/identifier?hl=en&continue=https%3A%2F%2Fmail.google.com%2Fmail&service=mail&flowName=GlifWebSignIn&flowEntry=AddSession"  style="color:white;">Forget Your Password</a>
<br><br>

<button class="button1 button3" onclick="window.location='register.jsp'">Register Free</button></br></br>

</form>

</center>

	<div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	


</body>
</html>