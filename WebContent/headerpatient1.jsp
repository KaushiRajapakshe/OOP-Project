<%-- 
    Document   : headerpatient1
    Created on : May 11, 2018, 7:44:34 PM
    Author     : User
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style/headerstylepatient.css"/>
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
				<li class="home"><a href="patientMain.jsp">Home</a></li>
				<li><a href="aboutus.jsp">About Us</a></li>
				<li><a href="contactUs.jsp">Contact Us</a></li>
				<li><a href="patientpro.jsp">Profile</a></li>
                                <li><a href="appointmentDetails.jsp">Appointment Details</a></li>
				<li><a href="channel_doctor.jsp">Channel a Doctor</a></li>
				<li><a href="main.jsp">LogOut</a></li>
				
			</ul>
		</div>
</div>
			
</body>
</html>
