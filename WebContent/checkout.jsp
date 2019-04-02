<%-- 
    Document   : checkout
    Created on : Apr 17, 2018, 12:48:42 PM
    Author     : Kaushi
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
	<link rel="stylesheet" type="text/css" href="style/style.css"/>
	</head>
	<body>
<jsp:include page="header.jsp"></jsp:include>
	</br>

        <br>
        <br>
	<h1 style='color:white; font-size:35px; margin-left:140px;'> Pay with </h1> <!-- Kaushi -->
        <img src="images/checkout.gif" align="right" style ="margin-right: 500px;width: 250px; height: 175px"/>
        <form name="myForm1" onsubmit="return validateForm()" action="checkout" >
	<p style="color: white;font-family : Baskerville Old Face;font-weight : bold;font-size:22px; ">
	<input type="radio" style="margin-left:150px;" name="payment1" value ="1" >&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<img src="images/download.jpg" width="30px" height="26px">&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;PayPal<br><br>
	<input type="radio" style="margin-left:150px;" name="payment1" value ="2">&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<img src="images/p1.jpg" width="30px" height="26px">&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;Credit or Debit card
	<br>
        </p><br><br>
	<h2 style="margin-left:140px; font-family:Constantia;text-align : left; color:white; font-size:31px;">Review Appointment ... </h2>

        
}
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
        %><br>
	<table style = "margin-left : 180px">
            <tr>
		<td> Appointment ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
		<td> <pre><% 
                        try{
                            String id = session.getAttribute("id").toString();
                            out.print(id);
                        }catch(Exception ex){
                            System.out.println("Error : " + ex);
                        }
                        %></td>
	</tr>
	<tr>
		<td> Doctor Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
		<td> <% 
                        try{
                            String docName = session.getAttribute("docName").toString();
                            out.print(docName);
                        }catch(Exception ex){
                            System.out.println("Error : " + ex);
                        }
                        %></td>
	</tr>
	<tr>
		<td> Hospital/Institute&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
		<td> <% 
                        try{
                            String hospital = session.getAttribute("hospital").toString();
                            out.print(hospital);
                        }catch(Exception ex){
                            System.out.println("Error : " + ex);
                        }
                        %></td>
	</tr>
	<tr>
		<td> Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
		<td> <% 
                        try{
                            String date = session.getAttribute("date").toString();
                            out.print(date);
                        }catch(Exception ex){
                            System.out.println("Error : " + ex);
                        }
                        %></pre></td>
	</tr>
	<tr>
		<td></td>
		<td> <br>Total : Rs. 
                    <% 
                        try{
                            String payment = session.getAttribute("payment").toString();
                            out.print(payment);
                        }catch(Exception ex){
                            System.out.println("Error : " + ex);
                        }
                    %>.00/= 
                </td>
                <td> <br><input type="submit" name="btnSubmit" value="Confirm and Pay" style=" border: none; color: white; font-family : Baskerville Old Face; font-weight : bold; background-color: navy; font-size:25px; text-align: center; margin: 4px 150px; border-radius: 8px; height: 40px; width: 200px;"></td>
	
        </tr>
        
</table>
        
</form>
        
    <script>
    //function validateForm() {
        var payment = document.forms["myForm1"]["payment"].value;
        if (payment !== "")
        {
            alert("Please choose a payment method... ");
            return false;
        }
        else
        {
            return true;
        }
    //}
    </script>
        <div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
    </body>
</html>
