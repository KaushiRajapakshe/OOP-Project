<%-- 
    Document   : DoctorManagement
    Created on : May 6, 2018, 5:53:40 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Management</title>
        <link rel="stylesheet" type="text/css" href="style/maincss.css" />
        <link rel="stylesheet" type="text/css" href="style/mainStyle.css"/>
    </head>
    <body background="images/Image9.png">
        <!--Navigation bar-->
        <p class="Welcome">Welcome User :  <%=(String)session.getAttribute("id") %>
	<jsp:include page="headerDoctor.jsp"></jsp:include>
	<br><br>
	<div class="content">
		<div class="marquee">Welcome to Blue Health Line</div>
		</div>
         <!--End navigation bar-->
        <br>
        <br>
        <br>
        <!--Buttons-->
        <button class="button addDoc" onclick="location.href = 'AddDoc.jsp';">Add Doctor</button>
        <button class="button updateDoc" onclick="location.href = 'UpdateDoc.jsp';">Update Doctor Details</button>
        <button class="button deleteDoc" onclick="location.href = 'DeleteDoc.jsp';">Delete Doctor</button>
        <button class="button viewDoc" onclick="location.href = 'ViewDoc.jsp';">View Doctor Details</button>
	<div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
    </body>
</html>
