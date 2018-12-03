<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Registration</title>
    <style>
        .reg table{width: 500px; height: 425px;margin-left: 415px; border-radius:20px;}     
        .reg input[type="tel"],input[type="email"],input[type="number"],input[type="text"],input[type="password"],input[type="date"]{ width: 300px; height: 35px;  }
        .reg input[type="submit"]{ width: 300px; height: 35px;  border-bottom: 2px solid black;}
    	.reg input[type="reset"]{width:100px; height:35px; border-bottom: 2px solid black;}
    	.reg td
    	{font-size: 20px;}
    	.topnav {
			overflow: hidden;
			background-color: #21618C;
			}
		
		.topnav a {
			float: left;
			display: block;
			color: #f2f2f2;
			text-align: center;
			padding: 14px 16px;
			text-decoration: none;
			font-size: 17px;
		}
		
		.topnav a:hover {
			background-color: gray;
			color: black;
		}
    	
    </style>
    </head>
<body bgcolor="#ADD8E6">
	<jsp:include page="Header.jsp" />  
	<div class="topnav" class="containerh">
		<a href="Home.jsp">Home</a> <a href="Specialization.jsp">Specialization</a>
		<a href="Contact.jsp">Contact</a> <a href="About.jsp">About</a>
	</div>		
			
	<br><script>
	function myFunction() {
	    var x = document.getElementById("mypassword");
	    if (x.type === "password") {
	        x.type = "text";
	    } else {
	        x.type = "password";
	    }
	}
</script>
<center><font size=20><b>Patient Registration Form</b></font></center>
<hr>
	<form action="PatientReg" method="post">
	<div class="reg">
	<table bgcolor="#f2f2f2" cellspacing="15px">
		<tr><td></td></tr>
		<tr><td>Full Name:</td><td><input  type="text" name="name" placeholder="Full Name" required="required"></td></tr>
		
		<tr><td>D.O.B:</td><td><input type="date" name="dob" required="required"></td></tr>
		
		<tr><td>Address:</td><td><textarea rows="4" cols="40" name="address" placeholder="Enter your full address ............" required="required"></textarea></td></tr>
		
		<tr><td>Gender:</td><td><input type="radio" name="gender" value="Male" required="required">Male
		
		<input type="radio" name="gender" value="Female" required="required">Female
		
		<input type="radio" name="gender" value="Other" required="required">Other</td></tr>
		
		<tr><td>Contact No:</td><td><input type="tel" name="contact"  pattern="^\d{10}$" placeholder="xxxxxxxxx"  required="required"></td></tr>
		
		<tr><td>Email Id:</td><td><input type="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$" placeholder="xyz@gmail.com" ></td></tr>
		
		<tr><td>Password :</td><td><input type="password" name="password" placeholder="****" required="required" id="mypassword"></td></tr>
		
		<tr><td></td><td><input type="checkbox" onclick="myFunction()">Show Password</td></tr>
		
		<tr><td><input type="reset"><td><input type="submit" name="submit" value="Submit"></td></td></tr>
		
		<tr><td></td></tr>
	</table>
	</div>
	</form>
	<hr><jsp:include page="Footer.jsp" />
</body>
</html>