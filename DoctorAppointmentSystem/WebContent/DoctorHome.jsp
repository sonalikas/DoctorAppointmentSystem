<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="daofiles.DoctorDao,daofiles.AppointmentDao,beans.*"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor Home</title>
<style type="text/css">

.container {
	border-radius: 20px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.29);
	background-color: #f2f2f2;
	padding: 2px;
}
	.roundbox 	{
    	display: inline-block;
    	height: 40px;
    	color: yellow;
    	background-color: #9C9E9E;
    	width: 180px;
    	text-align: center;
    	line-height: 40px;
    	border-radius:30px;
    	cursor: pointer;
    	text-decoration: none;
	color:yellow;
	}
	
	.container th {
	width: 140px;
	height: 25px;
	font-size: 20px
	}
	.container td	{
  		   		text-align: center;
  		   		font-size:20px ;
  		   }
  	.container input[type="number"] {
	width: 300px;
	height: 35px;
}
  		   
  	.container input[type="submit"] {
	width: 300px;
	border-radius:30px;
	height: 35px;
	border-bottom: 2px solid black;
	}	   
	.welcome	{
  		display: inline-block;
    	float: right;
       	width: 50%;
  		line-height: 40px;
       	border-radius:30px;
      	cursor: pointer;
       }
</style>
</head>
<body bgcolor="#ADD8E6">
	<jsp:include page="Header.jsp" />
	<br>
	<div class="container">

		<ul>
			<a href="DoctorHome.jsp"> <li class="roundbox">My Appointment</li></a>
			<a href="DoctorProfileUpdate.jsp"> <li class="roundbox">Update Profile</li></a>
			
			<a href="Logout"><li class="roundbox">Logout</li></a>
 			<li class="welcome"><marquee> 
		<%  
         response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
         response.setHeader("Pragma", "no-cache");	  //HTTP 1.0    
         response.setHeader("Expires", "0");  	//	Proxies 	
				
			       if(session.getAttribute("email")==null){
 					response.sendRedirect("DoctorLogin.jsp");
 					}
 			       else if(session!=null)	{
 					String email=(String) session.getAttribute("email");
 					out.println("Hello ,  "+email);
 					}
				
		
				%> </marquee></li> 
	</ul>	
		<center>
		<form action="AppointmentCheck" method="get">
		<input type="number" name="id" placeholder="Please Enter Your Id" >
		<br><br>
		<input type="submit" value="Check">
		</form>
		
  		</center>	
	<br>	
	</div>
	<br>
	<jsp:include page="Footer.jsp" />
</body>
</html>