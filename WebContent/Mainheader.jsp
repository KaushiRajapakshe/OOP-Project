<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style/MainheaderStyle.css" />
</head>
<body>
	<div id="container">
		<div id="header">
			<div class="logo">
				<img src="images/echannelinglogo.png" width="800px" height="150px">
			</div>
			<div class="time">
				<%=new java.util.Date()%>
			</div>
		</div>
		<div id="navigation">
			<ul>
				<li><a href="mainHomePage.jsp">E-Channeling System</a></li>
				<li class="contactUs"><a href="contactUs.jsp">Contact Us</a></li>
				<li class="aboutUs"><a href="aboutus.jsp">About Us</a></li>
				<li class="home"><a href="mainHomePage.jsp">Home</a></li>
			</ul>
		</div>
	</div>

</body>
</html>