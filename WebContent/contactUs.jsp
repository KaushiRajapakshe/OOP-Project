<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style/contactUsStyle.css">
<style type="text/css">
</style>
<script>
function validateForm() {

		var firstname = document.forms["myForm"]["firstname"].value;
		var lastname = document.forms["myForm"]["lastname"].value;
		var email = document.forms["myForm"]["email"].value;
		var subject = document.forms["myForm"]["subject"].value;

		if (firstname == "" || firstname == null) {
			alert("First name cannot be Empty..");
			return false;
		} else if (lastname == "" || lastname == null) {
			alert("Last name cannot be Empty");
			return false;
		} else if (email == "" || email == null) {
			alert("Email cannot be Empty");
			return false;
		}else if(subject == "" || subject == null){
			alert("Subject cannot be Empty")
			return false;
		}

	}
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="header"></div>
	<h3 class="contactForm">Contact Form</h3>

	<div class="container">
		<form method="post" action="ContactUsCheck"
			onsubmit="return validateForm()" name="myForm">
			<label for="fname">First Name</label> <input type="text" id="fname"
				name="firstname" placeholder="Your name.."> <br /> <label
				for="lname">Last Name</label> <input type="text" id="lname"
				name="lastname" placeholder="Your last name.."><br /> <label
				for="email">Email</label> <input type="text" id="email" name="email"
				placeholder="Your Email.."> <br /> <label for="country">Country</label>
			<select id="country" name="country">
				<option value="Sri lanka">Sri lanka</option>
				<option value="India">India</option>
				<option value="Malaysia">Malaysia</option>
			</select> <br /> <label for="subject">Subject</label>
			<textarea id="subject" name="subject" placeholder="Write something.."
				style="height: 200px"></textarea>
			<br /> <input type="submit" value="Submit">
		</form>
	</div>

	<div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>