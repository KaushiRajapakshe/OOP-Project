<%-- 
    Document   : DeleteDoc
    Created on : May 7, 2018, 1:05:10 AM
    Author     : user
--%>

<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Doctor</title>
        <!--CSS-->
        <style>
            h2 {
                color: white;
                text-align: center;
            }
            h3{
                color: white;
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
                color: black;
            }

            #docdetails tr:nth-child(even){background-color: #0073e6;}
            #docdetails tr{cursor: pointer;transition: all .25s ease-in-out;}
            #docdetails tr:hover {background-color: #3399ff;}

            #docdetails th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: center;
                background-color: #004d99;
                color:white;
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            }
            body {
            color: white;
        }
        </style>
        <link rel="stylesheet" type="text/css" href="style/mainStyle.css"/>
        <!--End CSS-->
    </head>
    <body background="images/Image5.jpg">
    <jsp:include page="headerDoctor.jsp"></jsp:include>
	<br><br>
	<div class="content">
		<div class="marquee">Welcome to Blue Health Line</div>
		</div>
        <h2>Delete Doctor</h2>
        <!--Form - to enter docID-->

        <form  method="post" action="DeleteDoc">
            <table>
                <tr>
                    <td><h4>&nbsp;&nbsp;Enter Doctor ID:</h4></td>
                    <td><input type="text" id="did" name="did"></td>
                </tr>
                <tr><td></td>
                    <td>

                        <input type="submit" class="button delete" value="Delete">
                         <button type="reset" class="button resetc" value="Reset">Reset</button>
                         <button class="button back" onclick="location.href = 'DoctorManagement.jsp';">Back</button>
                    </td>
                </tr>
            </table>
        </form>
        <!--End of the form-->
        <!--Table doc details-->
        <table id = "docdetails">

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
                   
                } catch (ClassNotFoundException ex) {
                    out.println("Error : " + ex);
                } catch (SQLException ex) {
                    out.println("Error : " + ex);
                }
            %></table>
        <!--End - Table doc details-->
        <!--Click and enter data-->
        <script>
            var table = document.getElementById('docdetails'), rIndex;
            for (var i = 1; i < table.rows.length; i++) {
                table.rows[i].onclick = function () {
                    rIndex = this.rowIndex;
                    document.getElementById("did").value = this.cells[0].innerHTML;

                }
            }
        </script>
         <!--End - Click and enter data-->

		

    </body>



</html>
