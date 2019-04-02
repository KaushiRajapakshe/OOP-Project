<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DElte Profile</title>
</head>
<body>

<%@page import="java.sql.*"%>
<%
	try{
		String nic = session.getAttribute("nic").toString();
		session.setAttribute("nic", nic);
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blueline","root","");
		Statement stmt = conn.createStatement();
		String sql = "delete from registration where nic = '"+ nic+"'";
		PreparedStatement ps = conn.prepareStatement(sql);
	
	int execute = ps.executeUpdate();
	
	response.sendRedirect("main.jsp");
	}catch(Exception e){
		e.printStackTrace();
	}
%>




</body>
</html>