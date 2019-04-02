<%-- 
    Document   : registerdb
    Created on : May 11, 2018, 2:34:07 PM
    Author     : User
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>

<%

String name=request.getParameter("name");
String nic=request.getParameter("nic");
String gender=request.getParameter("gender");
String address=request.getParameter("address");
String mem_type=request.getParameter("mem_type");
String blood_group=request.getParameter("blood_group");
String status=request.getParameter("status");
String dob=request.getParameter("dob");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String password=request.getParameter("password");



try {
	 		Class.forName("com.mysql.jdbc.Driver");
		 	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blueline","root","");
			Statement st = con.createStatement();
			ResultSet rs;
			String sql = "insert into registration(name,nic,gender,address,mem_type,blood_group,status,dob,email,mobile,password ) values ('"+name+"','"+nic+"','"+gender+"','"+address+"','"+mem_type+"','"+blood_group+"','"+status+"','"+dob+"','"+email+"','"+mobile+"','"+password+"')";

			
	    	int executeUp = st.executeUpdate(sql);
			response.sendRedirect("patientlogin.jsp");
				
	    
	    
	    	
			} catch (Exception e) {
	  			 e.printStackTrace();
		}

			
	%>




</body>
</html>
