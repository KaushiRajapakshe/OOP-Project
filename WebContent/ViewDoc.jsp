<%-- 
    Document   : ViewDoc
    Created on : May 14, 2018, 6:05:24 AM
    Author     : user
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View doctor details</title>
        <!--CSS-->
        <style>
            h2 {
                color: #004080;
                text-align: center;
            }
            h3{
                color:#004080;
                text-align: right;
            }
            input[type=text] {
                width: 396px;
                padding: 12px 20px;
                margin: 8px 0;
                box-sizing: border-box;
                border: none;
                background-color: #cce6ff;
                color: #004080;
                border-radius: 12px;
                float: right;
            }

            .button {
                background-color: #004080;
                color: #cce6ff;
                font-size: 16px;
                border: none;
                padding: 10px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                margin: 2px 1px;
                cursor: pointer;
                border-radius: 12px;
                float: left;
            }
            #docdetails {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 25%;
                float:right;

            }

            #docdetails td, #docdetails th {
                border: 1px solid  #145252;
                padding: 4px;
                color: white;
                font-size: 15px;
            }


            #docdetails tr:hover {background-color: #3399ff;}

            #docdetails th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: center;
                background-color: #004d99;
                color: white;
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            }
            .button {
                background-color: #004080;
                color: #cce6ff;
                font-size: 16px;
                border: none;
                padding: 10px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                margin: 2px 1px;
                cursor: pointer;
                border-radius: 12px;
                
            }
			body {
            color: white;
        }
        </style>
        <!--End CSS-->
        <link rel="stylesheet" type="text/css" href="style/mainStyle.css"/>
    </head>
    <body background="images/Image20.jpg">
<jsp:include page="headerDoctor.jsp"></jsp:include>
	<br><br>
	<div class="content">
		<div class="marquee">Welcome to Blue Health Line</div>
		</div>
        <h2 style="color:white">Doctor Details</h2>
        <br>
        <br>
        <!--Table doc details-->
        <div style="float:right">
        <table id = "docdetails" style = "font-color: white; margin-right: 150px">

            <tr>
                <th> <pre>DoctorID </pre></th>
                <th> <pre>Name </pre> </th>
                <th> <pre>Status </pre> </th>
                <th> <pre>Email </pre> </th>
                <th> <pre>NIC Number </pre> </th>
                <th> <pre>Telephone<br>Number </pre> </th>
                <th> <pre>MC Reg<br>Number </pre> </th>
                <th> <pre>Qualifications</pre> </th>
                <th> <pre>Specialization</pre> </th>
                <th> <pre>Working<br>Experience</pre> </th>
                 
            </tr>
            
            <%
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/blueline", "root", "");
                    Statement stm = (Statement) con.createStatement();
                    String SQL = "select * from doctor";
                    ResultSet rs = stm.executeQuery(SQL);
                    while (rs.next()) {
            %>
            <tr>
                <td><%=rs.getString("Doctor_ID")%></td>
                <td><%= rs.getString("Name")%></td>
                <td><%= rs.getString("Status")%></td>
                <td><%= rs.getString("Email")%></td>
                <td><%= rs.getString("NIC_Number")%></td>
                <td><%= rs.getString("Telephone_Number")%></td>            
                <td><%= rs.getString("MC_Registration_Number")%></td>
                <td><%= rs.getString("Qualification")%></td>
                <td><%= rs.getString("Specialization")%></td>
                <td><%= rs.getString("Working_experience")%></td>
            </tr>        
            <%
                    }
                    //out.println(rs.getString("nic")+ "           " + rs.getString("docName") + "         "+rs.getString("specialization")+ "         " + rs.getString("date"));
                } catch (ClassNotFoundException ex) {
                    out.println("Error : " + ex);
                } catch (SQLException ex) {
                    out.println("Error : " + ex);
                }
            %>
        
    </table>
        </div>
        
    <!--End - Table doc details-->
    <table style="float:right; margin: 50px 200px"><tr><td><button class="button back" onclick="location.href = 'DoctorManagement.jsp';">Back</button> </td></tr></table>


</body>
</html>
