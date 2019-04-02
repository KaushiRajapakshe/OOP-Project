<%-- 
    Document   : docReport
    Created on : May 6, 2018, 8:32:32 PM
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
        <title>Doctor Report</title>
	<link rel="stylesheet" type="text/css" href="style/style.css"/>
        
	</head>
	<body>
         <jsp:include page="headerDoctor.jsp"></jsp:include>
	<br>
	<br> 
        <br>
        <br>
        <br>
        <br>
	<br>
        <br>
        <h1 style='color:white; font-size:30px; margin-left:140px;'> Payment Report for Doctor </h1>  <!-- Kaushi -->
                  <img src="images/docreport.gif" align="left" style ="margin-left: 45px;width: 230px; height: 200px"/>
        <form name="myForm4" onsubmit="return validateForm()" action="appointmentDetails" >
 
        <table style="width:75%" border="1"cellspacing="1"cellpading="2"bordercolor="0033FF" align="center" valign="top" style = "margin-left : 380px">
		<tr>
			<th> <pre> Doctor Name       </pre> </th>
			<th> <pre> Total Payments   </pre> </th>
		</tr>
            <%
            try{
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/blueline", "root", "");
                Statement stm = (Statement) con.createStatement();
                String SQL = "select a.docName,SUM(p.payment) AS Payment from appointment a, payment p where a.id = p.id group by a.docName";
                ResultSet rs = stm.executeQuery(SQL);
                while(rs.next()){ 
            %>
                <tr>
			<td><%= rs.getString("docName")%></td>
                        <td><%= rs.getString("Payment")%></td>
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
        </form>
            <jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>
