<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book An Appointment</title>
<style type="text/css">
	
.container {
	border-radius: 20px;
	background-color: #f2f2f2;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.29);
	padding: 2px;
}
	.roundbox 	{
    	display: inline-block;
    	height: 40px;
    	background-color: #9C9E9E;
    	width: 180px;
    	text-align: center;
    	line-height: 40px;
    	color:yellow;
    	border-radius:30px;
    	cursor: pointer;
    	text-decoration: none;
		color:yellow;
	}
			
	 .reg td	{
   		text-align: center;
   		font-size:20px ;
  		   }
  	
.text-block {
		position: absolute;
		bottom: 130px;
    	right:40px;
    	background-color: lightgreen;
    	color: white;
    	padding-left: 80px;
    	padding-right: 80px;
    	border-radius:30px;
    	font-size: 20px;
}	
  	   
	.welcome	{
  		display: inline-block;
    	float: right;
       	width: 370px;
  		line-height: 40px;
       	border-radius:30px;
      	cursor: pointer;
       }
    .reg table{
        width: 500px; height: 425px; border-style:50px;background-color:floralwhite;border-radius:20px;
        }    
    .reg input[type="tel"],input[readonly="readonly"],input[type="number"],input[type="text"],input[type="password"],input[type="date"],select {	
      width: 300px; height: 35px; 
       }
      .reg input[readonly="readonly"]	{
      	background-color: #E2EAEA;
      } 
    .reg textarea   {
    	width: 300px;
    	height: 50px;
    	resize:none;
    }
    .reg input[type="submit"]{
      width: 300px; height: 35px;  border-bottom: 2px solid black;
      border-radius:30px;
      }
      
      option	{
      	font-size:20px;
      	font-family: cursive;
      }
</style>
</head>
<body bgcolor="#ADD8E6">
	<jsp:include page="Header.jsp" />
	<br>
	<div class="container">

		<ul>
			<a href="PatientHome.jsp"> <li class="roundbox">Book An Appointment</li></a>
			<a href="PatientProfileUpdate.jsp"> <li class="roundbox">Update Profile</li></a>
			<a href="PatientViewAppointment.jsp"><li class="roundbox">View Appointment</li></a>
			<a href="Feedback.jsp"><li class="roundbox">Feedback</li></a>
			<a href="Logout"><li class="roundbox">Logout</li></a>
 			<li class="welcome"><marquee> 
		<%  
         response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
         response.setHeader("Pragma", "no-cache");	  //HTTP 1.0    
         response.setHeader("Expires", "0");  	//	Proxies 	
				
			       if(session.getAttribute("email")==null){
 					response.sendRedirect("PatientLogin.jsp");
 					}
 			       else if(session!=null)	{
 					String email=(String) session.getAttribute("email");
 					out.println("Hello ,  "+email);
 					
				
		
				%> </marquee></li> 
	</ul>
		
		<center>	
		<h1>Book An Appointment</h1>
		<div class="reg">
		<form action="AppointmentReg" method="get">
		<table>
		<tr><td></td></tr>
		<tr><td>Name:</td><td><input type="text" name="name" placeholder="Name" required></td></tr>
		
		<tr><td>Email:</td><td><input readonly="readonly" name="email" value="<%out.print(email); } %>"></td></tr>
		
		<tr><td>Contact No:</td><td><input type="tel" name="contact" pattern="^\d{10}$" placeholder="xxxxxxxxx"  required></td></tr>
		
		<tr><td>Age:</td><td><input type="number" name="age" min="1" max="100" required></td> </tr>
		
		<tr><td>Date</td><td><input type="date" name="day" max="2018-12-31" min="2018-01-02" required></td></tr>
		
		<tr><td>Specialty:</td><td><select name="specialty">
		<option disabled="disabled">Select</option>
    	<option value="General Physician">General Physician</option>
    	<option value="Bone">Bone</option>
    	<option value="Cardiology">Cardiology</option>
       	<option value="Neurology">Neurology</option>
    	<option value="Radiology">Radiology</option>
    	<option value="Dentistry">Dentistry</option>
    	<option value="Obstetrics">Obstetrics</option>
    	<option value="Gastroenterics">Gastroenterics</option>
    	<option value="Bariatric">Bariatric</option>
    	<option value="PlasticSurgery">Plastic Surgery</option>
    	<option value="Rheumatology">Rheumatology</option></select></td></tr>
		<tr><td>Description</td><td><textarea name="description" placeholder="Enter Your Health Status.." required="required"></textarea></td></tr>
		<tr><td>Doctor ID:</td><td><input type="number" name="docid" placeholder="xxx" required></td></tr>
			
		<tr><td><td><input type="submit" value="Submit"></td></tr>
	</table>
	</form>
	</div>
	</center>
	
	 <div class="text-block">
    <a href="DoctorList.jsp" target="_blank" style="text-decoration: none;"> <h2>Doctor List</h2> </a>
   </div>
	
	<hr	>
	<br>
	</div>
	<jsp:include page="Footer.jsp" />  
</body>
</html>