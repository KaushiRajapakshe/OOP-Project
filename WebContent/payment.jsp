<%-- 
    Document   : payment
    Created on : Apr 17, 2018, 12:56:22 PM
    Author     : Kaushi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment with Credit or Debit Card</title>
	<link rel="stylesheet" type="text/css" href="style/style.css"/>
	</head>
	<body>
	<style type="text/css">
.home {
	padding-left: 100px;
}
</style>
<jsp:include page="header.jsp"></jsp:include>
	<br>
        <br>
        <br>
	<h1 style='color:white; font-size:33px; margin-left:140px;'> Pay with Credit or Debit Card </h1>    <!-- Kaushi -->
        <img src="images/credit.gif" align="left" style ="margin : 40px 55px;width: 250px; height: 200px"/>
	<form style="text-align: center; margin-left:400px; " name="myForm2" onsubmit="return validateForm()" method="POST" action="Payment"><br/>
		<table class = "form1">
			<tr>
				<td>Card Number : <br><br></td>
				<td><input type="text" name="cardNum" pattern="[0-9]{16}" placeholder="   Numbers Only" size="24" style="border: none; border-radius: 3px; margin-left: 30px; height: 30px; font-size:20px; text-align :left"/><br><br></td>
			</tr>
			<tr>
				<td>Expiration Date : <br><br></td>
				<td><input type="date" name="exDate" style="border: none;height:30px;border-radius: 3px;margin-left: 30px;font-size:20px; text-align :left" placeholder="  mm/dd/yyyy"><br><br></td>
			</tr>
			<tr>
				<td>Security Code :  <br><br></td>
				<td><input type="password" pattern="[0-9]{4}" placeholder="   Numbers Only" style="border: none; height:30px;border-radius: 3px;font-size:20px; text-align :left;margin-left: 30px;" name="secuCode" size="24"><br><br></td>
			</tr>
			<tr>
			</tr>
			<tr>
				<td><br>First Name : </td>
				<td><br><input type="text" name="firstName" placeholder="   Letters Only" pattern="[a-zA-Z]+$" size="24" style="border: none; border-radius: 3px; margin-left: 30px; height: 30px; font-size:20px; text-align :left"/><br></td>
			</tr>
				<td><br>Last Name : </td>
				<td><br><input type="text" name="lastName" placeholder="   Letters Only" pattern="[a-zA-Z]+$" size="24" style="border: none; border-radius: 3px; margin-left: 30px; height: 30px; font-size:20px; text-align :left"/><br></td>
			<tr>
				<td></td>
				<td></td>
			</tr>
			<tr>
			<td></td>
			<td><br><br><input type="reset" name="cancel" value="Cancel" style=" border: none; color: white; font-family : Baskerville Old Face; font-weight : bold; background-color: navy; font-size:25px; text-align: center; margin: 4px 95px; border-radius: 8px; height: 40px; width: 100px;"></td>
			<td><br><br><input type="submit" name="btnSubmit" value="Done" style=" border: none; color: white; font-family : Baskerville Old Face; font-weight : bold; background-color: navy; font-size:25px; text-align: center; margin: 4px 0px; border-radius: 8px; height: 40px; width: 100px;"></td>
			</tr>
        <%
            try{
                String id = session.getAttribute("id").toString();
                String nic = session.getAttribute("nic").toString();
                session.setAttribute("id", id);
                session.setAttribute("nic", nic);
                String payment = session.getAttribute("payment").toString();
                session.setAttribute("payment", payment);
            }catch(Exception ex){
                System.out.println("Error : "+ ex);
            }
        %>
		</table>
	</form>
    <script>
    function validateForm() {
        var cardNum = document.forms["myForm2"]["cardNum"].value;
        var exDate = document.forms["myForm2"]["exDate"].value;
        var secuCode = document.forms["myForm2"]["secuCode"].value;
        var firstName = document.forms["myForm2"]["firstName"].value;
        var lastName = document.forms["myForm2"]["lastName"].value;
        if ((cardNum !== "") && (exDate !== "") && (secuCode !== "") && (firstName !== "") && (lastName !== "") )
        {
            return true;
        }
        else
        {
            alert("Text Box must be filled out");
            return false;
        }
    }
    </script>
        <div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	</body>
</html>
