<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style/patientHistory.css" />
<script>
	function validateForm() {
		var firstname = document.forms["myForm"]["firstname"].value;
		var lastname = document.forms["myForm"]["lastname"].value;
		var gender = document.forms["myForm"]["gender"].value;
		var age = document.forms["myForm"]["age"].value;
		var bloodtype = document.forms["myForm"]["bloodtype"].value;
		var allergies = document.forms["myForm"]["allergies"].value;
		var treatmentdetails = document.forms["myForm"]["treatmentdetails"].value;
		var surgerydetails = document.forms["myForm"]["surgerydetails"].value;

		if (firstname == "" || firstname == null) {
			alert("Firstname cannot be Empty");
			return false;
		} else if (lastname == "" || lastname == null) {
			alert("Lastname cannot be Empty");
			return false;
		} else if (gender == "" || gender == null) {
			alert("Gender cannot be Empty");
			return false;
		} else if (age == "" || age == null) {
			alert("Age cannot be Empty");
			return false;
		} else if (bloodtype == "" || bloodtype == null) {
			alert("Blood Type cannot be Empty");
			return false;
		} else if (allergies == "" || allergies == null) {
			alert("Allergies cannot be Empty");
			return false;
		} else if (treatmentdetails == "" || treatmentdetails == null) {
			alert("Treatment Details cannot be Empty");
			return false;
		}
		if (surgerydetails == "" || surgerydetails == null) {
			alert("surgery details cannot be Empty");
			return false;
		}
	}
</script>
</head>
<body>
	<jsp:include page="headerDoctor.jsp"></jsp:include>

	<h1 class="mainHeader">Patient History</h1>
	<div class="container">
		<form method="post" action="PatientFormCheck"
			onsubmit="return validateForm()" name="myForm">

			<label for="firstname">First Name</label> <input type="text"
				id="firstname" name="firstname" placeholder="Patient name..">
			<br /> <label for="lastname">Last Name</label> <input type="text"
				id="lastname" name="lastname" placeholder="Patient last name..">
			<br /> <label for="gender">Gender</label> <select id="gender"
				name="gender">
				<option value="Male">Male</option>
				<option value="Female">Female</option>
			</select> <br /> <label for="age">Age</label> <input type="text" id="age"
				name="age" placeholder="Age of Patient.."> <br /> <label
				for="bloodtype">Blood Type</label> <input type="text" id="bloodtype"
				name="bloodtype" placeholder="Patient blood type.."> <br />
			<label for="allergies">Allergies</label> <input type="text"
				id="allergies" name="allergies" placeholder="if have any..">
			<label for="treatmentdetails">Treatment Details</label>
			<textarea id="treatmentdetails" name="treatmentdetails"
				placeholder="Write something.." style="height: 200px" maxlength=10></textarea>
			<label for="surgerydetails">Surgery Details</label>
			<textarea id="surgerydetails" name="surgerydetails"
				placeholder="Enter the information.." style="height: 200px"></textarea>
			<input type="submit" value="Submit">
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>