<%-- 
    Document   : HeaderDefault
    Created on : May 11, 2018, 2:24:19 PM
    Author     : User
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style/headerDefaultStyle.css"/>
</head>
<body>
<div id="container">
		<div id="headerpatient">
			<div class="logo">
				<img src="images/echannelinglogo.png" width = "800px" height = "150px">
			</div>
			<div class="time">
				<%= new java.util.Date() %>
			</div>
		</div>
		<div id="navigation">
			<ul>
			<li><a href="main.jsp">E-Channeling System</a></li>
				<li class="home"><a href="#">Home</a></li>
				<li><a href="aboutus.jsp">About US</a></li>
				<li><a href="contactUs.jsp">Contact Us</a></li>	
	
			
				
			</ul>
		</div>
</div>
			
</body>
</html>
