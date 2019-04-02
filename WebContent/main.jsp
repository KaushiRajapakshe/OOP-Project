<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Channeling</title>
<link rel="stylesheet" type="text/css" href="style/mainStyle.css" />
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
<% session.invalidate(); %>
	<div class="content">
		<div class="marquee">Welcome to Blue Health Line</div>
		<div class="sidebar">
			<a href="LoginPatient.jsp"><img class="loginbtn"
				src="images/patientlogin.png" width="300px" height="150px"></a> <a
				href="doclogin.jsp"><img class="loginbtn"
				src="images/doctorlogin.png" width="300px" height="150px"></a> <a
				href="adminlogin.jsp"><img class="loginbtn"
				src="images/adminlogin.png" width="300px" height="150px"></a>
		</div>
		<div class="slideshow">
			<jsp:include page="slideshow.jsp"></jsp:include>
		</div>
	</div>
	<div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
</html>