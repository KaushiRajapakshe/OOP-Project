<html>
<head>
<title>Profile</title>
</head>
<link rel="stylesheet" type="text/css" href="style/footerStyle.css">

<style>

.button {
 
    border: none;
    color: white;
    padding: 10px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    margin: 6px 6px;
	cursor: pointer;
	border-radius:5px;
}

.button2 {background-color: #008CBA;
	margin-left: 25px; } /* Blue */

.button3{background-color: #008CBA;
	margin-left: 25px; } /* Blue */



#back {
  
    padding: 25px;
    background: url(s.jpg);
    background-repeat: no-repeat;
    background-size: 1600px 1400px;
}


.pro{
	color:white;
}

</style>
<link rel="stylesheet" type="text/css" href="style/mainStyle.css">



<body>

<div id="back">
	<jsp:include page="headerpatient1.jsp"></jsp:include>
	
	
	<h1 style="color:white">Patient Profile</h1>
	<img src="p.jpg" width="100px" height="100px">
	<br><br>
	
	

	
	<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "blueline";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
	
	<h2 style="color:white">Basic Information</h2><br>

	  <table style="width:50%" border="0"align="left" style="margin-left: 180px" >
    <%
try{ 
	String nic = session.getAttribute("nic").toString();
	session.setAttribute("nic", nic);
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/blueline", "root", "");
	Statement stm = (Statement) con.createStatement();
	String sql ="SELECT * FROM registration where (nic = '"+nic+"')";   //need session

resultSet = stm.executeQuery(sql);
while(resultSet.next()){
%>
        <tr >
            <td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name:</h3></td>
            <td><h3 class="pro"><%=resultSet.getString("name") %></h3></td>
        </tr>
        
            <tr>
            <td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NIC:</h3></td>
            <td><h3 class="pro"><%=resultSet.getString("nic") %></h3></td>
        </tr>
        
        
           <tr >
            <td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gender:</h3></td>
            <td><h3 class="pro"><%=resultSet.getString("gender") %></h3></td>
        </tr>
        
           <tr >
            <td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Type:</h3></td>
            <td><h3 class="pro"><%=resultSet.getString("mem_type") %></h3></td>
        </tr>
        
           <tr >
            <td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Blood Group:</h3></td>
            <td><h3 class="pro"><%=resultSet.getString("blood_group") %>+</h3></td>
        </tr>
        
           <tr >
            <td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Status:</h3></td>
            <td><h3 class="pro"><%=resultSet.getString("status") %></h3></td>
        </tr>
        
        
           <tr >
            <td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date Of Birth:</h3></td>
            <td><h3 class="pro"><%=resultSet.getString("dob") %></h3></td>
        </tr>
        
        
        
        
    </table>
    
    
    
    
    
	<h2 style="color:white;margin-top:300px">Contact Information</h2>
	<br>
	
	  <table style="width:50%" border="0" >
    
        <tr>
            <td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address:</td>
            <td><h3 class="pro"><%=resultSet.getString("address") %></h3></td>
  		</tr>
  		
  		<tr>
  		    <td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile No:</td>
 			<td><h3 class="pro"><%=resultSet.getString("mobile") %></h3></td> 	</tr>	
  		
  		<tr>
  		    <td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E-mail:</td>
 			<td><h3 class="pro"><%=resultSet.getString("email") %></h3></td> 	</tr>	
  		
  		<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
    </table>
    
    
    
    
    <br><br><br>
	
		<button class="button button2" onclick="window.location='editpro.jsp'">Edit Profile</button>
			<button class="button button3" onclick="window.location='profiledel.jsp'">Delete Profile</button>
	
	
	
	
	
	
	
<footer class="footer-distributed">

	<div class="footer-left">

		<h3>
			BlueLine Health 
		</h3>

		<p class="footer-links">
			<a href="#">Home</a> · <a href="#">Blog</a> · <a href="#">Pricing</a>
			· <a href="#">About</a> · <a href="#">Faq</a> · <a href="#">Contact</a>
		</p>

		<p class="footer-company-name">Blueline Health &copy; 2018</p>
	</div>

	<div class="footer-center">

		<div>
			<i class="fa fa-map-marker"></i>
			<p>
				<span>21 Main Street</span> Colombo, Sri lanka
			</p>
		</div>

		<div>
			<i class="fa fa-phone"></i>
			<p>+94 769391251</p>
		</div>

		<div>
			<i class="fa fa-envelope"></i>
			<p>
				<a href="mailto:support@company.com">BlueLineHealth@gmail.com</a>
			</p>
		</div>

	</div>

	<div class="footer-right">

		<p class="footer-company-about">
			<span>About the company</span> We are here to help you to obtain the
			best services that can never be found any where else other than here.
		</p>



	</div>

	</footer>
	
	
	
	
	
</body>
</html>