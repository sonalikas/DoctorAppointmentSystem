<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Specialization</title>
<style>
.con {
    border: 3px solid #4CAF50;
    padding: 5px;
    
}
	.con img	{
	width:270px;
	height:250px;
	border-radius:20px;
	}
	.con img:hover{
	opacity:0.5;
	}
	.con a{
	text-decoration: none;
	color: black;
	}	
	ul	{
		 list-style: none;
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
	<div class="topnav" class="containerh">
	<a href="Home.jsp">Home</a>
	<a href="Specialization.jsp">Specialization</a>
	<a href="Contact.jsp">Contact</a>
	<a href="About.jsp">About</a>
	</div>
	
<br>
	<div class="con">
	<table>
			<tr>
			<td><a href="https://en.wikipedia.org/wiki/Cardiology"><ul><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Heart_diagram_blood_flow_en.svg/225px-Heart_diagram_blood_flow_en.svg.png" >
			<li><h1>Cardiology</h1></li></ul></a></td>
			
			<td><a href="https://en.wikipedia.org/wiki/Neurology"><ul><img src="https://www.bmc.org/sites/default/files/Patient%20Care%20Images/Neurology-307x287.jpg" >
			<li><h1>Neurology</h1></li></ul></a></td>
			
			<td><a href="https://en.wikipedia.org/wiki/Radiology"><ul><img src="https://www.beavermedicalgroup.com/uploadedImages/Radiology.jpg" >
			<li><h1>Radiology</h1></li></ul></a></td>
			
			<td><a href="https://en.wikipedia.org/wiki/Dentistry"><ul><img src="https://s3-media2.fl.yelpcdn.com/bphoto/rWMYknycYyPapjpJr4egNg/ls.jpg" >
			<li><h1>Dentistry</h1></li></ul></a></td>
			</tr>
			
			<tr>
			<td><a href="https://en.wikipedia.org/wiki/Obstetrics"><ul><img src="https://s3-media2.fl.yelpcdn.com/bphoto/_ss_lq0RLeE5r2vr0O2iuA/ls.jpg" >
			<li><h1>Obstetrics</h1></li></ul></a></td>
			
			<td><a href="https://en.wikipedia.org/wiki/Gastroenterology"><ul><img src="https://s3-media2.fl.yelpcdn.com/bphoto/ojwFT5IDtmZFVNk31ObDxQ/ls.jpg" >
			<li><h1>Gastroenterology</h1></li></ul></a></td>
			
			<td><a href= "https://en.wikipedia.org/wiki/Bariatrics"><ul><img src="https://5.imimg.com/data5/ST/FX/MY-41409060/bariatric-surgery-250x250.jpg" >
			<li><h1>Bariatric</h1></li></ul></a></td>
			
			<td><a href="https://en.wikipedia.org/wiki/Plastic_surgery"><ul><img src="https://i.pinimg.com/474x/0a/b8/32/0ab832a9eaea6a29fbfbf40bf8f404d0--facelift-before-and-after-facials.jpg" >
			<li><h1>Plastic Surgery</h1></li></ul></a></td>
			</tr>
			
			<tr>
			<td><a href="https://en.wikipedia.org/wiki/Rheumatology"><ul><img src="http://www.cpdevent.com.au/wp-content/uploads/2016/01/RHEUMATOLOGY.jpg" >
			<li><h1>Rheumatology</h1></li></ul></a></td>
			
			<td><a href="https://en.wikipedia.org/wiki/Bone"><ul><img src="https://secure.i.telegraph.co.uk/multimedia/archive/03165/broken-leg_3165940b.jpg" >
			<li><h1>Bone</h1></li></ul></a></td>
			
			</tr>
			
	
	</table>
	</div>
<jsp:include page="Footer.jsp" />  
</body>
</html>