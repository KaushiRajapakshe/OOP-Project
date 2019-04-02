<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Channeling</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
.slideshow{
	margin-left : 260px;
}
.Welcome{
color : white;
}
.home {
	padding-left: 100px;
}
</style>
<link rel="stylesheet" type="text/css" href="style/mainStyle.css"/>
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
				<li><a href="search.jsp">Search </a></li>
				<li><a href="aboutus.jsp">About Us</a></li>
				<li><a href="contactUs.jsp">Contact Us</a></li>
				<li><a href="patientpro.jsp">Profile</a></li>
				<li><a href="channel_doctor.jsp"> <c:set var="nic" value="${param.nic}" scope="session"/> Channel Doctor</a></li>
				<li><a href="main.jsp">LogOut</a></li>
				
			</ul>
		</div>
</div>
	<p class="Welcome">Welcome User :  <%=(String)session.getAttribute("nic") %>
	
	
	<div class="content">
		<div class="marquee">Welcome to Blue Health Line</div>
	<center>
		<div class="slideshow">
			<jsp:include page="pageSlideShow.jsp"></jsp:include>
		</div>
	</div></center>
	<div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
</html>