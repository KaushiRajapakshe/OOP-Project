<%-- 
    Document   : UpdateDoc
    Created on : May 7, 2018, 1:08:11 AM
    Author     : user
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Doctor Details</title>
        <style>
            input[type=text], input[type=textarea], input[type=password], input[type=email], select[type=text]
            {
                width: 296px;
                padding: 12px 20px;
                margin: 8px 0;
                box-sizing: border-box;
                border: none;
                background-color: #cce6ff;
                color: #004080;
                border-radius: 12px;
            }

            h2 {
                color: #004080;
                text-align: center;
            }
            h4{
            	color : white;
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
                float: center;
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
            }}
            body {
            color: white;
        }
        </style>
        <link rel="stylesheet" type="text/css" href="style/mainStyle.css"/>
    </head>
    <body background="images/Image4.jpg">
    <jsp:include page="headerDoctor.jsp"></jsp:include>
	<br><br>
	<div class="content">
		<div class="marquee">Welcome to Blue Health Line</div>
		</div>
        <h2>Update Doctor Details</h2>
        (Click on the row needed to be updated in the table.)
        <form style ="align:'right'" method="post" action="UpdateDocDetails">
            <table>
                <tr>
                    <td><h4>&nbsp;&nbsp;Enter Doctor ID:</h4></td>
                    <td><input type="text" id="did" name="did"></td>
                </tr>

                <tr>
                    <td><h4>&nbsp;&nbsp;Name :</h4></td>
                    <td><input type="text" id="name" name="name"></td>
                </tr>
                <tr>
                    <td>
                        <h4>&nbsp;&nbsp;Status :</h4>
                    </td>
                    <td><select type="text" id="status" name="status">
                            <option value="Please choose" selected>Please choose</option>
                            <option value="Mr.">Mr.</option>
                            <option value="Mrs.">Mrs.</option>
                            <option value="Miss.">Miss</option>
                        </select></td>
                </tr>
                <tr>
                    <td><h4>&nbsp;&nbsp;Email :</h4></td>
                    <td><input type="email" id="email" name="email" /></td>
                </tr>

                <tr>
                    <td><h4>&nbsp;&nbsp;NIC Number :</h4></td>
                    <td><input type="text" id="nic" name="nic"></td>
                </tr>
                <tr>
                    <td><h4>&nbsp;&nbsp;Telephone Number :</h4></td>
                    <td><input type="text" id="telephoneNumber" name="telephoneNumber" /></td>
                </tr>
                <tr>
                    <td><h4>&nbsp;&nbsp;Password:</h4></td>
                    <td><input type="password"  name="password"  id = "pwd"  ></td><br></tr>
                <tr><td></td> <td><input type="checkbox" name="checkpwd" onclick="pwdFuntion()">Show password</td>
                </tr>
                <tr>
                    <td><h4>&nbsp;&nbsp;MC Registration Number:</h4></td>
                    <td><input type="text" id="mcRegistrationNumber" name="mcRegistrationNumber"></td>
                </tr>
                <tr>
                    <td><h4>&nbsp;&nbsp;Qualifications:</h4></td>
                    <td><input type="text" id="qualification" name="qualification"></td>
                </tr>

                <tr>
                    <td><h4>&nbsp;&nbsp;Specialization:</h4></td>
                    <td><input type="text" id="specialization" name="specialization"></td>
                </tr>
                <tr>
                    <td><h4>&nbsp;&nbsp;Working experience:</h4></td>
                    <td><input type="text" id="workingExperience" name="workingExperience"></td>
                </tr>
            </table>
            <button type="update" class="button Doctor" value="Submit">Update</button>
             <button type="reset" class="button resetc" value="Reset">Reset</button>
             <button class="button back" onclick="location.href = 'DoctorManagement.jsp';">Back</button>
        </form>
        <!--End form-->
        <!--Table doc details-->
        <table id = "docdetails" style= "font-color:white">

            <tr>
                <th> <pre>DoctorID </pre></th>
                <th> <pre>Name </pre> </th>
                <th> <pre>Status </pre> </th>
                <th> <pre>Email </pre> </th>
                <th> <pre>NIC Number </pre> </th>
                <th> <pre>Telephone<br>Number </pre> </th>
                <th> <pre>Password </pre> </th>
                <th style="width:13px"> <pre>MC Reg<br>Number </pre> </th>
                <th> <pre>Qualifi-<br>cations</pre> </th>
                <th> <pre>Speciali-<br>zation</pre> </th>
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
                <td><%= rs.getString("Password")%></td>
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

        <script>
                    // <!--view pwd-->
                    function pwdFuntion() {
                        var pd = document.getElementById("pwd");
                            if (pd.type == "password") {
                        pd.type = "text";
                            } else {
                        pd.type = "password";
                    }

                    }
                    //<!-- End - view pwd-->
                    // <!--Click and enter data-->
                    var table = document.getElementById('docdetails'), rIndex;
                    for (var i = 1; i < table.rows.length; i++) {
                        table.rows[i].onclick = function () {
                            rIndex = this.rowIndex;
                            document.getElementById("did").value = this.cells[0].innerHTML;
                            document.getElementById("name").value = this.cells[1].innerHTML;
                            document.getElementById("status").value = this.cells[2].innerHTML;
                            document.getElementById("email").value = this.cells[3].innerHTML;
                            document.getElementById("nic").value = this.cells[4].innerHTML;
                            document.getElementById("telephoneNumber").value = this.cells[5].innerHTML;
                            document.getElementById("pwd").value = this.cells[6].innerHTML;
                            document.getElementById("mcRegistrationNumber").value = this.cells[7].innerHTML;
                            document.getElementById("qualification").value = this.cells[8].innerHTML;
                            document.getElementById("specialization").value = this.cells[9].innerHTML;
                            document.getElementById("workingExperience").value = this.cells[10].innerHTML;
                }
            }
             // <!--End - Click and enter data-->
        </script>
        <!--End view password -->

	
    </body>
</html>
