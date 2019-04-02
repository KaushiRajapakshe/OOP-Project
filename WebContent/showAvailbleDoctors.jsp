<%-- 
    Document   : showAvailbleDoctors
    Created on : May 11, 2018, 6:39:49 PM
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
        <style>
table
{
font-family: arial, sans-serif;
border-collapse: collapse;
width:60%;
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
.home {
	padding-left: 100px;
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
        <br><br><br><br>
        <h1 style='color:white; font-size:30px; margin-left:140px;'> Available Doctors </h1>  <!-- Kaushi -->
        <br>
        <br>
        <img src="images/availableDoc.gif" align="left" style ="margin-left: 45px;width: 280px; height: 210px"/>
            <form action="channel_doctor.jsp">
        <table style="width:40%; margin-right: 250px" border="1"cellspacing="1"cellpading="2"bordercolor="0033FF" align="center" valign="top" style = "margin-left : 180px">
		<tr>
			<th> <pre> Doctor Name       </pre> </th>
			<th> <pre> Date              </pre> </th>
		</tr>
            <%
            try{
                String nic = session.getAttribute("nic").toString();
                session.setAttribute("nic", nic);
                String check = session.getAttribute("check").toString();
                if(check == "Exceed"){
                    %>
                            <script type="text/javascript">
                    alert("Hello User you can not make that appointment, doctor's appointment already finish.\n Please choose another doctor or another day. \n               Thank you..!");
                    </script>
                    <%
                        }
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/blueline", "root", "");
                Statement stm = (Statement) con.createStatement();
                String SQL = "select DISTINCT docName from appointment group by docName,date having (count(docName)< 5)";
                ResultSet rs = stm.executeQuery(SQL);
                int i=1;
                while(rs.next()){ 
            %>
                <tr>
                        <td><%=rs.getString("docName")%></td>
                        <td><% out.println("2018-06-0"+(i+5));%></td>

                </tr>
		 <% i++;
                     }
                     String check1 = "NULL";
                     session.setAttribute("check1", check1);
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
        <br/>
            </table>
            <br>
            <br>
            <input type="submit" name="btnSubmit" value="Continue" style="margin-right: 40px; border: none; color: white; font-family : Baskerville Old Face; font-weight : bold; background-color: navy; font-size:25px; text-align: center; margin: 4px 740px; border-radius: 8px; height: 40px; width: 150px;">
    
      </form><%=(String)session.getAttribute("nic") %>
            <br>
        <div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
   </body>
</html>