<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style/mainStyle.css">
<style type="text/css">
.container{
	border-radius: 5px;
	background-color: #000037;
	padding: 20px;
	width: 1200px;
	opacity: 0.8;
	margin-left : 50px;
	margin-top : 150px;
	color : white;
}

a{
	text-decoration : none;
	color : green;
}

a:hover{
	background-color : yellow;
}
</style>
</head>
<body>
	<jsp:include page="headerDoctor.jsp"></jsp:include>
	<div class="container">
	<%
	try{
		
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc.mysql.//localhost:3306/blueline";
	String username = "root";
	String password = "";
	
	Class.forName(driver);
	
	}catch(Exception e){
		e.printStackTrace();
	}

	Connection connection = null;
	Statement statement = null;
	ResultSet resultset = null;

	%>
	<h2 class = "patient" align="center">
		<font><strong>Patient Record History</strong></font>
	</h2>
	<table align="center" cellpadding="15" cellspacing="5" border="1">
		<tr>
		
 		
 	

		</tr>
		<tr>
			<td><b>PatientHistoryID</b></td>
			<td><b>firstname</b></td>
			<td><b>lastname</b></td>
			<td><b>gender</b></td>
			<td><b>age</b></td>
			<td><b>bloodtype</b></td>
			<td><b>allergies</b></td>
			<td><b>treatmentdetails</b></td>
			<td><b>surgerydetails</b></td>
			<td><b><a href="patientHistory.jsp">Add New Data</a></b></td>
			<td><b><a href="DeletePatientHistory.jsp">Delete Records</a></b></td>
			
		</tr>
		<%
		

		try{ 
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/blueline" , "root" ,""); 
		statement = connection.createStatement(); 
		String sql = "SELECT* FROM patienthistory"; 
		resultset = statement.executeQuery(sql); 
		while(resultset.next()){

		%>

		<tr >
			<td><%= resultset.getString("patientHistoryID") %></td>
			<td><%= resultset.getString("firstname") %></td>
			<td><%= resultset.getString("lastname") %></td>
			<td><%= resultset.getString("gender") %></td>
			<td><%= resultset.getString("age") %></td>
			<td><%= resultset.getString("bloodtype") %></td>
			<td><%= resultset.getString("allergies") %></td>
			<td><%= resultset.getString("treatmentdetails") %></td>
			<td><%= resultset.getString("surgerydetails") %></td>
			<td><a href="UpdatePatientHistory.jsp?patientHistoryID=<%=resultset.getString("patientHistoryID")%>">Update</a></td>
			<td><a href="DeletePatientHistory.jsp?patientHistoryID=<%=resultset.getString("patientHistoryID")%>">Delete</a></td>
		</tr>



		<%
		}
		
		}catch(Exception e)
		{ e.printStackTrace();}
		%>
	</table>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>