<%@page import="repository.manageStudent"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Volunteer Sign up form</title>
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
	<link rel="stylesheet" href="../css/styleRegister.css">
</head>
<body>
	<div class="testbox">
		<form action="helloServlet" method=post>
			<div class="banner">
				<img src="img\volunteer.jpg" height=100% width=100%>
				<h1>Register account</h1>
			</div>
			<br />
			<p>Please help me testing my website by register and leave comment</p>
			<br />
			<div class="colums">
				<div class="item">
					<label for="name">Name<span>*</span></label> <input id="name"
						type="text" name="name" required />
				</div>
				<div class="item">
					<label for="eaddress">Email Address<span>*</span></label> <input
						id="eaddress" type="text" name="eaddress" required />
				</div>
				<div class="item">
					<label for="phone">Phone<span>*</span></label> <input id="phone"
						type="tel" name="phone" required />
				</div>
				<div class="item">
					<label for="street">Account<span>*</span></label> <input id="street"
						type="text" name="street" required />
				</div>
				<div class="item">
					<label for="city">Password<span>*</span></label> <input id="city"
						type="password" name="password" required />
				</div>
				<div class="item">
					<label for="state">Confirm password<span>*</span></label> <input id="state"
						type="text" name="state" required />
				</div>

			</div>
			<div class="btn-block">
						<button type="submit" >Submit</button>
			</div>
		</form>
	</div>
</body>
</html>