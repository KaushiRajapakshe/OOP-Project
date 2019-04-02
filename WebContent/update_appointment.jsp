<%-- 
    Document   : update_appointment
    Created on : Apr 22, 2018, 9:22:04 AM
    Author     : Kaushi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update_Appointment</title>
	<link rel="stylesheet" type="text/css" href="style/style.css"/>
    </head>
    <body>
<jsp:include page="headerpatient.jsp"></jsp:include>
	</div>
	<br>
	<br>
        <br>
	<h1 style='color:white; font-size:35px; margin-left:120px;'> Channel Doctor </h1>   <!-- Kaushi -->
    <img src="images/gifchannel1.gif" align="left" style ="margin-left: 45px;width: 200px; height: 150px"/>
    <form style="text-align: center; margin-left:300px; " name="myForm" onsubmit="return validateForm()" method="post" action="update_appointment"><br/>
    <table class = "form1">
        
                <%
                    try{
                        String id = session.getAttribute("id").toString();
                        session.setAttribute("id", id);
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/blueline", "root", "");
                        Statement stm = (Statement) con.createStatement();
                        String SQL = "select * from appointment where (id = '"+id+"')";
                        ResultSet rs = stm.executeQuery(SQL);
                        while(rs.next()){ 
                %>
                <tr>
                    <td>Doctor Name : <br><br></td>
                    <td><input type="text" name="docName" size="28" pattern="[a-zA-Z\s-, ]+$" value = "<%=rs.getString("docName")%>" placeholder="   Last Name Only" style="border: none; border-radius: 3px; margin-left: 30px; height: 30px; font-size:15px; text-align :left" /><br><br></td>
                </tr>
		<tr>
			<td>Specialization : <br><br></td>
			<td><input type="text" name="specialization" size="28" pattern="[a-zA-Z\s-, ]+$" value = "<%=rs.getString("specialization")%>" style="border: none; border-radius: 3px; margin-left: 30px; height: 30px; font-size:15px; text-align :left" />
			</select><br><br></td>
		</tr>
		<tr>
			<td>Hospital&nbsp;/&nbsp;Institute : <br><br></td>
			<td><input type="text" name="hospital" size="28" pattern="[0-9a-zA-Z\s-, ]+$" value = "<%=rs.getString("hospital")%>" style="border: none; border-radius: 3px; margin-left: 30px; height: 30px; font-size:15px; text-align :left" />
			</select><br><br></td>
		</tr>
		<tr>
			<td>Date : <br><br></td>
			<td><input type="date" name="date"  value = "<%=rs.getString("date")%>"style="border: none;height:30px;border-radius: 3px;margin-left: 30px; font-size:15px;" placeholder="  mm/dd/yyyy"><br><br></td>
		</tr>
                            <%
                        }
                    }catch(Exception ex){
                        System.out.println("Error : "+ ex);
                    }
                %>
                <tr>
                    <td></td>
                    <td><br><input type="submit" name="btnSubmit" value="Search" style="margin-right: 40px; border: none; color: white; font-family : Baskerville Old Face; font-weight : bold; background-color: navy; font-size:25px; text-align: center; margin: 4px 140px; border-radius: 8px; height: 40px; width: 100px;"></td>
		</tr>
    </table>
    </form>
    <script>
    function validateForm() {
        var docName = document.forms["myForm"]["docName"].value;
        var specialization = document.forms["myForm"]["specialization"].value;
        var hospital = document.forms["myForm"]["hospital"].value;
        var date = document.forms["myForm"]["date"].value;
        if ((docName !== "") && (specialization !== "") && (hospital !== "") && (date !== "") ) {
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
    </body>
</html>
