
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String patientHistoryID = request.getParameter("patientHistoryID");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "blueline";
	String userid = "root";
	String password = "";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<%
	try {
		connection = DriverManager.getConnection(connectionUrl + database, userid, password);
		statement = connection.createStatement();
		String sql = "select * from patienthistory where patientHistoryID=" + patientHistoryID;
		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style/UpdatePatientHistory.css">
<style type="text/css">
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<h1 class="header">Update Patient History</h1>
		<form method="post" action="updateProcessPatientHistory">
				
					<input type="hidden" name="patientHistoryID"
						value="<%=resultSet.getString("patientHistoryID")%>">
				
					<br/>
					Patient History ID
					<input type="text" name="patientHistoryID"
						value="<%=resultSet.getString("patientHistoryID")%>">
					<br/>
					First name
					 style><input type="text" name="firstname"
						value="<%=resultSet.getString("firstname")%>">
				
					Last name
					<input type="text" name="lastname"
						value="<%=resultSet.getString("lastname")%>">
				
					Gender
					<input type="text" name="gender"
						value="<%=resultSet.getString("gender")%>">
					<br/>
					Age
					<input type="text" name="age"
						value="<%=resultSet.getString("age")%>">
					<br/>
					Blood Type
					<input type="text" name="bloodtype"
						value="<%=resultSet.getString("bloodtype")%>">
					<br/>
					Allergies
					<input type="text" name="allergies"
						value="<%=resultSet.getString("allergies")%>">
					<br/>
					Treatment Details
					<textarea name="treatmentdetails""<%=resultSet.getString("treatmentdetails")%>"></textarea>
					<br/>
					Surgery Details
					<textarea name="surgerydetails""<%=resultSet.getString("surgerydetails")%>"></textarea>
				<br/>
					<input type="submit" value="submit">
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<%
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>
