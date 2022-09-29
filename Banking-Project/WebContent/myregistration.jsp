<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body class="bg-dark">
	<div class="container bg-light pb-5">
		<h1 class="text-center my-3">REGISTRATION FORM</h1>
		<form action="UserController">
			<div class="form-group my-3">
				<label>UserName : </label>
				<div class="input-group has-validation my-3">
					<span class="input-group-text">@</span> <input type="text"
						name="userName" class="form-control" placeholder="Enter UserName"
						required>
					<div class="invalid-feedback">Please choose a UserName.</div>
				</div>
			</div>
				<input type="hidden" name="userOperation" value="register" />
			<div class="form-group my-3">
				<label>Password: </label> <input type="password"
					class="form-control my-3" name="password"
					placeholder="Enter Password" required>
			</div>
			<div class="form-group my-3">
				<label>FirstName : </label> <input type="text"
					class="form-control my-3" name="firstName"
					placeholder="Enter FirstName" required>
			</div>
			<div class="form-group my-3">
				<label>LastName : </label> <input type="text"
					class="form-control my-3" name="lastName"
					placeholder="Enter lastName" required>
			</div>
			<div class="form-group my-3">
				<label>Email : </label> <input type="email" class="form-control my-3"
					name="email" placeholder="Enter Email" required>
			</div>
			<div class="form-group my-3">
				<label>Mobile Number : </label>
				<div class="input-group has-validation my-3">
					<span class="input-group-text">+91</span> <input type="number"
						name="mobileNumber" class="form-control" placeholder="Enter Mobile Number"required>
				</div>
			</div>


			<div class="form-check my-3">
				<input class="form-check-input" type="checkbox" value="" required>
				<label class="form-check-label"> Agree to terms and
					conditions </label>
				<div class="invalid-feedback">You must agree before
					submitting.</div>
			</div>
			<button type="submit" class="btn btn-primary" value="register" >Register</button>
		</form>
	</div>
</body>
</html>