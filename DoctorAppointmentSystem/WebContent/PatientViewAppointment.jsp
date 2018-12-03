<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Appointment</title>
<style type="text/css">
	
.container {
	border-radius: 20px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.29);
	background-color: #f2f2f2;
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
	 .container th	{
	     	width: 140px;
	     	height: 30px;
	     	font-size: 20px;
	     	background-color: #2874A6;
	     	color: white;
  		   }
	
	.container td	{
	   		text-align: center;
	   		font-size:20px ;
	   }
	.container tr:nth-child(even)	{
		background-color: white;
		}	
	   
	   
	.welcome	{
  		display: inline-block;
    	float: right;
       	width: 370px;
  		line-height: 40px;
       	border-radius:30px;
      	cursor: pointer;
       }
   
</style>

</head>
<body bgcolor="#ADD8E6">
		<%@page import="daofiles.*,beans.*,java.util.ArrayList" %>
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
			<% 
				String email=(String)session.getAttribute("email");
			ArrayList<AppointmentBean> list=AppointmentDao.getAppointmentbyemail(email);
				
			%>
		<center>
		<table border="1px solid black">
			<tr>
				<th>Patient Name</th>
				<th>Email</th>
				<th>Contact</th>
	       		<th>Age</th>
	       		<th>Date</th>
	       		<th>Specialty</th>
	       		<th>Description</th>
	       		<th>Cancel</th>
	       	</tr>
			<%for(AppointmentBean app:list)	{ %>
			<tr>
			<td><%=app.getName()%></td>
			<td><%=app.getEmail() %></td>
			<td><%=app.getContact() %></td>
			<td><%=app.getAge() %></td>
			<td><%=app.getDay() %></td>
			<td><%=app.getSpecialty() %></td>
			<td><%=app.getDescription() %></td>
			<td><a href="PatientCancelApointment?id=<%=app.getApid()%>">Cancel</a></td> 	
			<%} %>
 			</tr>  
		</table>
		</center>
		<br>
	</div>
	<br>
	<jsp:include page="Footer.jsp" />
</body>
</html>