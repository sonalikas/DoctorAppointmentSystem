<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact</title>
<style>
h1 {
	margin-top: 40px;
	font-size: 100;
	margin-left: 40%;
}

.contact table {
	width: 500px;
	height: 350px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.29);
	border-style: inset;
	margin-left: 400px;
	padding: 20px 30px;
	background-color: #f2f2f2;
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
		<a href="Home.jsp">Home</a> <a href="Specialization.jsp">Specialization</a>
		<a href="Contact.jsp">Contact</a> <a href="About.jsp">About</a>
	</div>

	<br>
	<form>
		<div class="contact">
			<table>
				<tr>
					<td>Name:</td>
					<td>NewLife Hospital</td>
				</tr>
				<tr>
					<td>Site:</td>
					<td>www.doctorappointment.com</td>
				</tr>
				<tr>
					<td>Person:</td>
					<td>Manpreet, Kartik</td>
				</tr>
				<tr>
					<td>Contact:</td>
					<td>+9876 543 210</td>
				</tr>
				<tr>
					<td>Address:</td>
					<td>New Delhi, India</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td>appointment@example.com</td>
				</tr>
			</table>
		</div>
	</form>
	<br><br>
	<jsp:include page="Footer.jsp" />
</body>
</html>