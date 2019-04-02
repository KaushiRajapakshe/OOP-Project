<%-- 
    Document   : channel_doctor
    Created on : Apr 17, 2018, 12:07:04 PM
    Author     : Kaushi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Channel_Doctor</title>
	<link rel="stylesheet" type="text/css" href="style/style.css"/>
    </head>
    <body>
    <style type="text/css">
.home {
	padding-left: 100px;
}
</style>
<jsp:include page="headerpatient.jsp"></jsp:include>
	<br>
	<br>
        <br>
	<h1 style='color:white; font-size:35px; margin-left:120px;'> Channel Doctor </h1>   <!-- Kaushi -->
    <img src="images/gifchannel1.gif" align="left" style ="margin-left: 45px;width: 200px; height: 150px"/>
   
    <form style="text-align: center; margin-left:300px; " name="myForm" onsubmit="return validateForm()" method="post" action="CreatAppointment"><br/>
    <table class = "form1">
        <tr>
            <td>Doctor Name : <br><br></td>
            <td><input type="text" name="docName" size="24" pattern="[a-zA-Z\s-, ]+$" placeholder="   Last Name Only" style="border: none; border-radius: 3px; margin-left: 30px; height: 30px; font-size:20px; text-align :left" /><br><br></td>
        </tr>
		<tr>
			<td>Specialization : <br><br></td>
			<td><select name="specialization" style="border: none; height:30px; border-radius: 3px;margin-left: 30px" >
			<option value="Any" size="28">&nbsp;&nbsp;&nbsp;&nbsp;Any &nbsp;  &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;</option>
			<option value="Allergy And Asthma Specialist" size="28">&nbsp;&nbsp;&nbsp;&nbsp;Allergy And Asthma Specialist &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</option>
			<option value="Children Dentist" size="28">&nbsp;&nbsp;&nbsp;&nbsp;Children Dentist</option>
			<option value="Counselling" size="28">&nbsp;&nbsp;&nbsp;&nbsp;Counseling</option>
			<option value="Eye Surgeon" size="28">&nbsp;&nbsp;&nbsp;&nbsp;Eye Surgeon </option>
			<option value="Neuro Surgeono" size="28">&nbsp;&nbsp;&nbsp;&nbsp;Neuro Surgeon</option>
			<option value="Plastic Surgeon" size="28">&nbsp;&nbsp;&nbsp;&nbsp;Plastic Surgeon </option>
			</select><br><br></td>
		</tr>
		<tr>
			<td>Hospital&nbsp;/&nbsp;Institute : <br><br></td>
			<td><select name="hospital" style="border: none; height:30px; border-radius: 3px;margin-left: 30px" >
			<option value="Any" size="28">&nbsp;&nbsp;&nbsp;&nbsp;Any &nbsp;  &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;</option>
			<option value="Arogya Hospital - Gampaha" size="28">&nbsp;&nbsp;&nbsp;&nbsp;Arogya Hospital - Gampaha &nbsp; </option>
			<option value="Asiri Central Hospital - Colombo 5" size="28">&nbsp;&nbsp;&nbsp;&nbsp;Asiri Central Hospital - Colombo 5</option>
			<option value="Dental Service - Colombo 5" size="28">&nbsp;&nbsp;&nbsp;&nbsp;Dental Service - Colombo 5</option>
			<option value="Leesons Hospital (Pvt) Ltd - Ragama" size="28">&nbsp;&nbsp;&nbsp;&nbsp;Leesons Hospital (Pvt) Ltd - Ragama </option>
			<option value="Nawaloka Hospital - Colombo" size="28">&nbsp;&nbsp;&nbsp;&nbsp;Nawaloka Hospital - Colombo</option>
			<option value="Vision Care Eye Clinic" size="28">&nbsp;&nbsp;&nbsp;&nbsp;Vision Care Eye Clinic </option>
			</select><br><br></td>
		</tr>
		<tr>
			<td>Date : <br><br></td>
			<td><input type="date" name="date"  style="border: none;height:30px;border-radius: 3px;margin-left: 30px" placeholder="  mm/dd/yyyy"><br><br></td>
		</tr>
		<tr>
                    <td></td>
                    <td><br><input type="submit" name="btnSubmit" value="Search" style="margin-right: 40px; border: none; color: white; font-family : Baskerville Old Face; font-weight : bold; background-color: navy; font-size:25px; text-align: center; margin: 4px 140px; border-radius: 8px; height: 40px; width: 100px;"></td>
		</tr>
                
                <%
                    try{String check = "NULL";
                        String nic = session.getAttribute("nic").toString();
                        session.setAttribute("nic", nic);
                        session.setAttribute("check", check);
                        //response.sendRedirect("showAvailbleDoctors.jsp");
                        
                    }catch(Exception ex){
                        System.out.println("Error : "+ ex);
                    }
                %>
                
    </table>
    </form>
  <script>
    function validateForm() {
        var docName = document.forms["myForm"]["docName"].value;
        var specialization = document.forms["myForm"]["specialization"].value;
        var hospital = document.forms["myForm"]["hospital"].value;
        var date = document.forms["myForm"]["date"].value;
        if ((docName !== "") && (specialization !== "Any") && (hospital !== "Any") && (date !== "") ) {
            return true;
        }
        else
        {
            alert("Text Box must be filled out");
            return false;
        }
    }
    </script>

<br>
        <div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
    </body>
</html>



    

	
