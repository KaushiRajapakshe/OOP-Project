<%-- 
    Document   : appointmentDetails
    Created on : Apr 17, 2018, 1:17:00 PM
    Author     : Kaushi
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.oop.servlet.DBconnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
 <style type="text/css">
.home {
	padding-left: 100px;
}
table
{
font-family: arial, sans-serif;
border-collapse: collapse;
width:100%;
opacity: 0.7;
color : white;
}
td, th {
border: 3px solid #0099FF;
text-align: left;
padding: 8px;
opacity: 1;
}
tr:nth-child(even) {
background-color: #0099FF;
opacity : 0.9;
color: black;
}

</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Appointment Details</title>
	<link rel="stylesheet" type="text/css" href="style/style.css"/>
        
	</head>
	<body>
        <jsp:include page="headerpatient.jsp"></jsp:include>
	<br>
	<br> 
        <br>
        <br>
        <br>
        <br>
	<br>
        <br>
        <h1 style='color:white; font-size:30px; margin-left:140px;'> Search Your Appointment Details </h1>  <!-- Kaushi -->
        <form name="myForm4"  action="appointmentDetails" >
            <p style="font-family : Baskerville Old Face; font-size:25px; text-align :left; color:white; font-weight : bold; margin-left: 500px">Enter appointment number : 
            <input type="text" name="id"  placeholder="   Numbers Only" pattern="[0-9]+$" size="22" style="margin-left: 70px; border: none; border-radius: 3px; height: 30px; font-size:20px; text-align :left"></p>
            
        <table style="width:95%" border="1"cellspacing="1"cellpading="2"bordercolor="0033FF" align="center" valign="top" style = "margin-left : 180px">
		<tr>
                        <th> <pre>  Appointment Number  </pre></th>
			<th> <pre> Doctor Name       </pre> </th>
			<th> <pre> Hospital / Institute   </pre> </th>
			<th> <pre>    Date   </pre> </th>
		</tr>
            <%
            try{
                String nic = session.getAttribute("nic").toString();
                session.setAttribute("nic", nic);
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/blueline", "root", "");
                Statement stm = (Statement) con.createStatement();
                String SQL = "select * from appointment where (nic = '"+nic+"') ORDER BY id";
                ResultSet rs = stm.executeQuery(SQL);
                while(rs.next()){ 
            %>
                <tr>
                        <td><%=rs.getString("id")%></td>
			<td><%= rs.getString("docName")%></td>
                        <td><%= rs.getString("specialization")%></td>
                        <td><%= rs.getString("date")%></td>
                </tr>        
		 <% 
                     }
                    //out.println(rs.getString("nic")+ "           " + rs.getString("docName") + "         "+rs.getString("specialization")+ "         " + rs.getString("date"));
                }
                    catch(ClassNotFoundException ex){ 
                        out.println("Error : "+ ex);
                    }catch(SQLException ex){
                        out.println("Error : "+ ex);
                    }
                %>
            <br/>
	<br/>
        <br/></table><br>
        <br>
        <button type="submit" onclick="return validateForm()" name="update" value="1" style=" border: none; color: white; font-family : Baskerville Old Face; font-weight : bold; background-color: navy; font-size:25px; text-align: center; margin: 4px 85px; border-radius: 8px; height: 40px; width: 120px;">Update</button>
        <button type="submit" onclick="return validateForm()" name="remove" value="2"  style=" border: none; color: white; font-family : Baskerville Old Face; font-weight : bold; background-color: navy; font-size:25px; text-align: center; margin: 4px 45px; border-radius: 8px; height: 40px; width: 270px;">Remove Appointment</button>
	<input type="submit" name="continueb"  value="Continue New Appointment" style=" border: none; color: white; font-family : Baskerville Old Face; font-weight : bold; background-color: navy; font-size:25px; text-align: center; margin: 4px 45px; border-radius: 8px; height: 40px; width: 370px;">
        </form>
    <script>
    function validateForm() {
        var id = document.forms["myForm4"]["id"].value;
        if (id == "")
        {
            alert("Pleace Enter Appointment Number.. ");
            return false;
        }
        else
        {
            return true;
        }
    }
    </script>
        <div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	</body>
</html>
