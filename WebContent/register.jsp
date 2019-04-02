<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>

</head>


<style>

.reg{
	color:white;
}


body{
	font-color : white;
	}

.button {
 
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 18px;
    margin: 8px 8px;
	cursor: pointer;
	border-radius:5px;
}

.button2 {background-color: #008CBA;
	margin-left: 200px; } /* Blue */

#back {
  
    padding: 25px;
    background: url(s.jpg);
    background-repeat: no-repeat;
    background-size: 1400px 1200px;
}

input[type="text"]{
	font-family : Arial;
	font-size : 25px;
	border-radius :9px;
	}
input[type="list"]{
	font-family : Arial;
	font-size : 25px;
	border-radius :9px;
	}

input[type="password"]{
	font-family : Arial;
	font-size : 25px;
	border-radius :9px;
	}
	
	input[type="date"]{
	font-family : Arial;
	font-size : 23px;
	border-radius :9px;
	}
	

select{
	font-family : Arial-Black;
	font-size : 25px;
	border-radius :9px;
	
	}
	
select:invalid { color: gray; }
	
	
</style>

<link rel="stylesheet" type="text/css" href="style/mainStyle.css">



<body>
		
<div id="back">
	<jsp:include page="header.jsp"></jsp:include>
		
		
	
<form action="registerdb" method="post">


<table>
<br><br>
	<h1 class="reg">REGISTER</h1><br>

	<tr>
		<td><h3 class="reg">Name:</h3></td>
		<td><input type="text" name="name" required></td></tr>

	<tr>
		<td><h3 class="reg">NIC:</h3></td>
		<td><input type="text" name="nic" value="" placeholder="xxxxxxxxxV"required></td></tr>

	<tr>
		<td><h3 class="reg">Gender:</h3></td>
		<td><h3 class="reg"><input type="radio" name="gender" value="male"> Male
			<input type="radio" name="gender" value="female" /> Female </h3></td></tr>

	<tr>
		<td><h3 class="reg">Address:</h3></td>
		<td><input type="text" name="address" required></td></tr>

	<tr>
		<td><h3 class="reg">Type:</h3></td>
		<td><select name = "mem_type">
 			<option value=" disabled selected hidden">Please Choose...........</option>
 			<option value="Patient">Patient</option></select></td></tr>

	<tr>
		<td><h3 class="reg">Blood Group:</h3></td>
		<td><select name = "blood_group">
 			<option value="disabled selected hidden">Please Choose...........</option>
			<option value="A+">A+</option>
			<option value="A-">A-</option>
			<option value="B+">B+</option>
			<option value="B-">B-</option>
			<option value="AB+">AB+</option>
			<option value="AB-">AB-</option>
			<option value="O+">O+</option>
			<option value="O-">O-</option></select></td></tr>

	<tr>
		<td><h3 class="reg">Status:</h3></td>
		<td><select name = "status">
 			<option value="" disabled selected hidden>Please Choose...........</option>
  			<option value="Single">Single</option>
 			<option value="married">Married</option></select></td></tr>

	<tr>
		<td><h3 class="reg">Date of Birth:</h3></td>
		<td><input type="date" name="dob"required></td></tr>

	<tr>
		<td><h3 class="reg">E-mail:</h3></td>
		<td><input type="text" name="email" placeholder="xxxxxxxxxxx@xxx.com"></td></tr>
	
	<tr>
		<td><h3 class="reg">Mobile No:</h3></td>
		<td><input type="text" name="mobile" placeholder="07XXXXXXXX" required ></td></tr>

	<tr>
		<td><h3 class="reg">Password:</h3></td>
		<td><input type="password" name="password" required ></td></tr>

	
	
	

</table>
<button class="button button2" name="submit">Register</button>

</form>








</body>
</html>