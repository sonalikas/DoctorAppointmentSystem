<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
<style>
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
	
.container {
	border-radius: 20px;
	background-color: #f2f2f2;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.29);
	padding: 2px;
}
input[type=text], input[type="tel"], input[readonly="readonly"],textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
}
.welcome	{
  		display: inline-block;
    	float: right;
       	width: 370px;
  		line-height: 40px;
       	border-radius:30px;
      	cursor: pointer;
       }
.container input[readonly="readonly"]	{
	background-color: #E2EAEA;
}		
input[type=submit] {
	background-color: #4CAF50;
	color: white;
	padding: 15px 100px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
	input[placeholder],textarea[placeholder] {
	text-align: center;
	}

input[type=submit]:hover {
	background-color: #45a049;
}

.size {
	color: red;
	font-size: 26px;
}

label {
	font-family: cursive;
}

h1 {
	font-family: cursive;
	text-align: center;
	font-weight: bold;
}

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
	<h1>Feedback Form</h1>

		<form action="Feedbackdb" method="get">
				<label class="size">Name</label> <input type="text" name="name"
				placeholder="Your name.." required="required">
				
				 <label	class="size">Email</label> <input readonly="readonly" name="email"
				 value="<%out.print(email);}%>" placeholder="abc@xyz.com" required="required">
		   		
		   		<label class="size">Contact</label> <input type="tel" name="contact" 
				 placeholder="xxxxxxxx" pattern="^\d{10}$"	 required="required">
				 
				<label	class="size">Suggestion</label>
				<textarea id="subject" name="suggestion" placeholder="Write something.." required
				style="height: 200px"></textarea>

				<input type="submit" value="Submit">
		</form>
	</center>
	<br>
	</div>
	<br>
	<jsp:include page="Footer.jsp" />

</body>
</html>