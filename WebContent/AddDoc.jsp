<%-- 
    Document   : newjsp
    Created on : May 6, 2018, 7:21:33 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Add Doctor</title>
    <!--CSS-->
    <style>
        input[type=text], input[type=textarea], input[type=email],input[type=password], select[type=text]
        {
            width: 396px;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: none;
            background-color: #b3cce6;
            color: #004080;
            border-radius: 12px;
        }

        h1 {
            color: white;
            text-align: center;
            font-family: "Times New Roman", Times, serif;
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
        #passwd {
            border: none;
            background-color: #b3cce6;
            color: #004080;
            border-radius: 12px;

        }
        body {
            color: white;
        }
    </style>
    <!--End CSS-->
    <!--Validation-->
    <script>
        function validateForm(event) {
            
            var fdid = document.forms["Dform"]["did"].value;
            var fname = document.forms["Dform"]["name"].value;
            var fstatus = document.forms["Dform"]["status"].value;
            var femail = document.forms["Dform"]["email"].value;
            var fnic = document.forms["Dform"]["nic"].value;
            var fpassword = document.forms["Dform"]["password"].value;
            var fmcRegistrationNumber = document.forms["Dform"]["mcRegistrationNumber"].value;


            // validate did
            var vdid = !isEmpty(fdid);           
            // validate name
            var vname = !isEmpty(fname, document.forms["Dform"]["name"]);           
            // validate status
            var vstatus = isValidStatus(fstatus,document.forms["Dform"]["status"]);  
            // validate email 	
            var vemail = !isEmpty(femail,document.forms["Dform"]["email"])&&  emailValidation(femail);           
            // validate nic Number ( not empty && alphanumeric )
            var vnic = !isEmpty(fnic, document.forms["Dform"]["nic"]) && isAlphaNumeric(fnic);          
            // validate user password ( have characters between 5-8)
            var vpassword = !isEmpty(fpassword, document.forms["Dform"]["password"]) && pwdValidation(fpassword);           
            // validate mc Reg Number ( not empty && alphanumeric )
            var vmcRegistrationNumber = !isEmpty(fmcRegistrationNumber, document.forms["Dform"]["mcRegistrationNumber"]) ;
            // if each field is valid return				
            return vdid && vname && vstatus && vemail && vnic && vpassword && vmcRegistrationNumber;
        }

        function isEmpty(eleValue, field) {
            if (eleValue == "" || eleValue == null) {
                alert(" You cannot leave '" + field.name + "' field empty.");
                return true;
            } else {
                return false;
            }
        }

        function isAlphebatic(eleValue) {
            var exp = /^[a-zA-Z]+$/;
            if (!isEmpty(eleValue, "Name")) {
                if (eleValue.match(exp)) {
                    return true;
                } else {
                    alert("Enter only letters.");
                    return false;
                }
            } else {
                return false;
            }
        }

        function isAlphaNumeric(eleValue) {
            var exp = /^[0-9a-zA-Z]+$/;
            if (!isEmpty(eleValue, "Doctor ID ")) {
                if (eleValue.match(exp)) {
                    return true;
                } else {
                    alert("Enter only numbers & letters.");
                    return false;
                }
            } else {
                return false;
            }

        }

        function isNumeric(eleValue) {
            if (!isEmpty(eleValue, "MC Registration Number")) {
                var exp = /^[0-9a-zA-Z]+$/;

                if (eleValue.match(exp)) {
                    return true;
                } else {
                    alert("Enter only numbers.");
                    return false;
                }
            } else {
                return false;
            }
        }



        function isValidStatus(eleValue) {
            if (eleValue == "Please choose") {
                alert("Choose a status");
                return false;
            } else {
                return true;
            }
        }

        function pwdValidation(eleValue) {
            if (!isEmpty(eleValue, "Password")) {
                if (eleValue.length >= 5 && eleValue.length <= 8) {
                    return true;
                } else {
                    alert(" Enter password in between 5 and 8 characters.");
                    return false;
                }
            } else {
                return false;
            }
        }



        function emailValidation(eleValue) {
            if (!isEmpty(eleValue, "Email")) {
                var atops = eleValue.indexOf("@");
                var dotops = eleValue.indexOf(".");

                if (atops < 1 || dotops + 2 >= eleValue.length || atops + 2 > dotops) {
                    alert(" Enter valid email address.");
                    return false;
                } else {
                    return true;
                }
            } else {
                return false;
            }
             return true;
        }
    </script>
    <link rel="stylesheet" type="text/css" href="style/mainStyle.css"/>
    <!--End validation-->
</head>
<body background="images/Image4.jpg">
<jsp:include page="headerDoctor.jsp"></jsp:include>
	<br><br>
	<div class="content">
		<div class="marquee">Welcome to Blue Health Line</div>
		</div>
    <h1>Add Doctor</h1>
    <!--Application-->
    <form method="post" action="AddDoc" name="Dform" onSubmit="return validateForm()">
          <table>
            <tr>
                <td><h4>&nbsp;&nbsp;Doctor ID:</h4></td>
                <td><input type="text" name="did" >
                </td>
            </tr>
            <tr>
                <td><h4>&nbsp;&nbsp;Name :</h4></td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>
                    <h4>&nbsp;&nbsp;Status :</h4>
                </td>
                <td><select type="text" name="status">
                        <option value="Please choose" selected>Please choose</option>
                        <option value="Mr.">Mr.</option>
                        <option value="Mrs.">Mrs.</option>
                        <option value="Miss.">Miss</option>
                    </select></td>
            </tr>
            <tr>
                <td><h4>&nbsp;&nbsp;Email :</h4></td>
                <td><input type="text" name="email" /></td>
            </tr>
            <tr>
                <td><h4>&nbsp;&nbsp;NIC Number :</h4></td>
                <td><input type="text" name="nic"></td>
            </tr>

            <tr>
                <td><h4>&nbsp;&nbsp;Telephone Number :</h4></td>
                <td><input type="text" name="telephoneNumber" /></td>
            </tr>


            <tr>
                <td><h4>&nbsp;&nbsp;Password:</h4></td>
                <td><input type="password" name="password"  id = "pwd"  ></td><br>
            <td><input type="checkbox" name="checkpwd" onclick="pwdFuntion()">Show password</td>
            </tr>
            <tr>
                <td><h4>&nbsp;&nbsp;MC Registration Number:</h4></td>
                <td><input type="text" name="mcRegistrationNumber"></td>
            </tr>
            <tr>
                <td><h4>&nbsp;&nbsp;Qualification:</h4></td>
                <td><input type="text" name="qualification"></td>
            </tr>

            <tr>
                <td><h4>&nbsp;&nbsp;Specialization:</h4></td>
                <td><input type="text" name="specialization"></td>
            </tr>
            <tr>
                <td><h4>&nbsp;&nbsp;Working experience:</h4></td>
                <td><input type="text" name="workingExperience"></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button type="submit" class="button Doctor" value="Submit">Add</button>
                    <button type="reset" class="button resetc" value="Reset">Reset</button>
                    
                </td>
            </tr>
        </table>

    </form>
    <!--End Application-->
    <!--view pwd-->
    <script>
        function pwdFuntion() {
            var pd = document.getElementById("pwd");
            if (pd.type == "password") {
                pd.type = "text";
            } else {
                pd.type = "password";
            }

        }
    </script>
    <!--End view password -->

</body>
</html>