<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Profile Update</title>
<style type="text/css">
.container {
		border-radius: 20px;
		background-color: #f2f2f2;
		box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.29);
		padding: 2px;
}
.roundbox 	{
		display: inline-block;
		color:yellow;
    	height: 40px;
    	background-color: #9C9E9E;
    	width: 180px;
    	text-align: center;
    	line-height: 40px;
    	border-radius:30px;
    	cursor: pointer;
    	text-decoration: none;
}
.reg td	{
		text-align: center;
   		font-size:20px ;
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
		width: 500px; 
		height: 425px; 
		border-style:50px;
		background-color:floralwhite;
		border-radius:20px;
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
<script>
		function myFunction() {
    	var x = document.getElementById("mypassword");
    	if (x.type === "password") {
        x.type = "text";
    	} else {
        x.type = "password";
    }
}
</script>
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
 					
 			       }
		
				%> </marquee></li> 
	</ul>
	<center>
		<h1>Update Profile</h1>
		<hr>
		
	<%@page import="java.sql.*,dba.ConnectionProvider" %>
 		<% 
			try{
			Connection conn=ConnectionProvider.getConnection();
			Statement stat=conn.createStatement();
 			String e=(String)session.getAttribute("email");
 			ResultSet prs=stat.executeQuery("select * from patients where email='"+e+"'");
 			while(prs.next()){
 		%> 
 	<form action="PatientReg" method="get">		
	<div class="reg">
	
	<table>
		<tr><td></td></tr>
		<tr><td>Name</td><td><input  type="text" value="<%=prs.getString("name")%>" name="name" placeholder="Full Name" required="required"></td></tr>
		<tr><td>D.O.B:</td><td><input readonly="readonly" value="<%=prs.getString("dob")%>" name="dob" required="required"></td></tr>
		<tr><td>Address:</td><td><textarea rows="4" cols="40" name="address" placeholder="Enter your full address ............" required="required"><%=prs.getString("address")%></textarea></td></tr>
		<tr><td>Gender:</td><td><input readonly="readonly" value="<%=prs.getString("gender")%>" required="required">
		<tr><td>Contact No:</td><td><input type="tel" value="<%=prs.getString("contact")%>" pattern="^\d{10}$" name="contact" placeholder="xxxxxxxxx"  required="required"></td></tr>
		<tr><td>Email Id:</td><td><input readonly="readonly" value="<%=prs.getString("email")%>" name="email" placeholder="xyz@gmail.com" ></td></tr>
		<tr><td>Password :</td><td><input type="password" value="<%=prs.getString("password")%>" name="password" placeholder="****" required="required" id="mypassword"></td></tr>
		<tr><td></td><td><input type="checkbox" onclick="myFunction()">Show Password</td></tr>
		
		<tr><td><td><input type="submit" name="submit" value="Update"></tr>

	</table>
	</div>
	</form>
	</center>
		<%
		}
 			conn.close();
			}
 				catch(Exception e){
 				e.printStackTrace();			
 			}
 		%> 
	<br>
	</div>
	
	<br>
	
 		<jsp:include page="Footer.jsp" /> 
</body>
</html>