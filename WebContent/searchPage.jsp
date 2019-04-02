<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	font-family: Arial, Helvetica, sans-serif;
	background-image: url("images/background.jpg");
	background-size: 100%;
	color: white;
	margin: 0px;
	padding: 0px;
}

.header {
	float: left;
	margin: 0px;
	padding: 0px;
}

.heading {
	font-size: 40px;
	margin-left: 600px;
}

.content {
	float: left;
	height: 500px;
}

.footer {
	float: left;
	margin: 0px;
	padding: 0px;
	width: 100%;
}

input[type="text"]{
	padding : 20px 70px;
	width : 500px;
	border-radius : 20px;
	border : 1px solid blue;
}

.search{
margin-left : 350px;
}

input[type="submit"]{
padding : 15px 50px;
border-radius : 10px;
background-color : Green;
color : white;
border : none;	
}

.searchButton{
	margin-left : 500px;
	margin-top : 20px;
}

.allSearch{
	margin-left : 440px;
	margin-top : 20px;
}
</style>
</head>
<body>
	<div class="header">
		<jsp:include page="headerpatient.jsp"></jsp:include>
	</div>
	<div class="content">
		<h1 class="heading">Search</h1>
		<div class="search">
			<form method="post" action="searchDoctordb.jsp">
				<input type="text" name="search" placeholder= "Search...">
				<br/>
				<input type="submit" value="Search" class="searchButton">
			</form>
			<form method="post" action="searchAlldb.jsp">
				<input type="submit" value="Display All Details" class="allSearch">
			</form>
		</div>
	</div>
	<div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>