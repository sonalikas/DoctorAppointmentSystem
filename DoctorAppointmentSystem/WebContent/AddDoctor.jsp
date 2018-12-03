<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Doctor</title>
<style type="text/css">
.container {
	border-radius: 20px;
	background-color: #f2f2f2;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.29);
	padding: 2px;
}

.container th {
	width: 140px;
	height: 25px;
	font-size: 20px;
}

.container td {
	text-align: center;
	font-size: 20px;
}

	.roundbox 	{
    	display: inline-block;
    	height: 40px;
    	background-color: #9C9E9E;
    	width: 180px;
    	text-align: center;
    	line-height: 40px;
    	border-radius:30px;
    	cursor: pointer;
    	text-decoration: none;
    color:yellow;
    }
  .welcome	{
   		display: inline-block;
   		float: right;
   		width: 365px;
		line-height: 40px;
   		border-radius:30px;
  	 	cursor: pointer;
   }
.reg table {
	width: 500px;
	height: 425px;
	margin-left: 415px;
	border-style: 50px;
	border-radius:15px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.29);
	background-color: floralwhite;
}

.reg input[type="tel"], input[type="email"], input[type="number"], input[type="text"],
	input[type="password"], input[type="date"],select {
	width: 300px;
	height: 35px;
}
 .reg option	{
      	font-size:20px;
      	font-family: cursive;
      }

.reg input[type="submit"] {
	width: 300px;
	border-radius:30px;
	height: 35px;
	border-bottom: 2px solid black;
}
</style>
</head>
<body bgcolor="#ADD8E6">
	<jsp:include page="Header.jsp" />
	<br>
	<div class="container">
		<ul>
		<a href="AdminHome.jsp"><li class="roundbox">Doctor's Details</li></a>
		<a href="AddDoctor.jsp"><li class="roundbox">Add Doctor</li></a>
		<a href="AdPatientDetails.jsp"><li class="roundbox">Patient Details</li></a>
		<a href="FeedbackView.jsp"><li class="roundbox">Feedback View</li></a>
		<a href="Logout"><li class="roundbox">Logout</li></a>
		<li class="welcome"><marquee>
		<% 

        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
        response.setHeader("Pragma", "no-cache");	  //HTTP 1.0    
        response.setHeader("Expires", "0");  	//	Proxies 	
				
			       if(session.getAttribute("email")==null){
					response.sendRedirect("AdminLogin.jsp");
					}
			       else if(session!=null)	{
					String email=(String) session.getAttribute("email");
					out.println("Hello ,  "+email);
					}
				
		
				%> </marquee></li>
	</ul>

		<center>
			<h1>Add Doctor</h1>
		</center>
		<hr>
		<form action="DoctorReg" method="post">
			<div class="reg">
				<table>
					<tr>
						<td></td>
					</tr>
					<tr>
						<td>Doctor Name:</td>
						<td><input type="text" name="dname" placeholder="Full Name"
							required></td>
					</tr>
					<tr>
						<td>Email Id:</td>
						<td><input type="email" name="email"
							placeholder="xyz@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$"
							 required></td>
					</tr>
					<tr>
						<td>Password :</td>
						<td><input type="password" name="password"
							placeholder="*******" required></td>
					</tr>
					
					<tr><td>Specialty:</td><td><select name="specialty">
					<option disabled="disabled">---Select---</option>
			    	<option value="General Physician">General Physician</option>
			    	<option value="Bone">Bone</option>
			    	<option value="Cardiology">Cardiology</option>
			       	<option value="Neurology">Neurology</option>
			    	<option value="Radiology">Radiology</option>
			    	<option value="Dentistry">Dentistry</option>
			    	<option value="Obstetrics">Obstetrics</option>
			    	<option value="Gastroenterics">Gastroenterics</option>
			    	<option value="Bariatric">Bariatric</option>
			    	<option value="Plastic Surgery">Plastic Surgery</option>
			    	<option value="Rheumatology">Rheumatology</option></select></td></tr>
					<tr>
						<td>Contact No:</td>
						<td><input type="tel" name="contact" placeholder="xxxxxxxxx"
							pattern="^\d{10}$" required></td>
					</tr>
					<tr>
						<td>
						<td><input type="submit" value="Submit"></td>
					</tr>
				</table>
			</div>
		</form>
		<hr>
		<br>
	</div>
	<br>
	<jsp:include page="Footer.jsp" />
</body>
</html>