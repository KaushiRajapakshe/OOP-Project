<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	margin: 0px;
	padding: 0px;
	background-image: url("images/background.jpg");
	background-size: 1400px;
	font-family: "Times New Roman"
}

.header {
	font-size: 40px;
	color: white;
	margin-left: 40px;
	margin-top: 150px;
}

input[type="text"] {
	width: 90%;
	margin-left: 40px;
	padding: 22px;
	border-radius: 25px;
	font-size: 25px;
}

input[type="submit"] {
	padding: 14px 52px;
	border-radius: 15px;
	color: white;
	background-color: green;
	margin-top: 30px;
	margin-left: 1150px;
	border-weight: 10px;
	margin-bottom: 200px;
}

.searchMain {
	height: 250px;
}

.subSearch {
	margin-right: 50px;
	float: right;
	margin-top : 75px;
	padding : 0px;
	
}

.footer{
	float : left;
	width : 100%;
	margin : 0px;
	padding : 0px;
}
</style>
</head>
<body>
	<jsp:include page="headerpatient.jsp"></jsp:include>

	<div class="searchMain">
		<form name="search" method="post" action="searchDoctordb.jsp">
			<h1 class="header">Search</h1>
			<input type="text" name="search" placeholder="Search..." /> <input
				type="submit" value="Search" />
		</form>
	</div>

	<div class="subSearch">
		<form name="subSearch" action="ViewDoc.jsp">
			<input type="submit" value="Display All Doctors">
		</form>
	</div>
	<div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>