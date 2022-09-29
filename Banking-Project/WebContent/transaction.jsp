<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.monocept.pojos.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous"> 
</head>
<body>
	<div class="mx-2 my-2">
		<form action="UserController" method="post">
			<input type="hidden" name="userOperation" value="logout" /> <input
				type="submit" class="bg-danger text-white" value="LOG OUT" />
		</form>
		<%
			User user = (User) session.getAttribute("user");
		%>
		<center>
			<h2>Welcome ${user.fullname}</h2>
			<br>
			<h2>Balance : ${user.balance}</h2>

			<span>
				<h4>Transaction</h4>
				<form action="UserController" method="post">
					<div class="form-check">
						<input type="hidden" name="acc" value="${user.accountNo}" /> <input
							class="form-check-input" type="radio" name="userOperation"
							id="flexRadioDefault1" value="deposit" checked> <label
							class="form-check-label" for="flexRadioDefault1">Deposit
						</label> <br> <input class="form-check-input" type="radio"
							name="userOperation" id="flexRadioDefault2" value="withdraw">
						<label class="form-check-label" for="flexRadioDefault2">Withdraw
						</label>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Amount</label> <input type="text"
							class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Enter Amount"
							name="amount">
					</div>
	</div>
	<button type="submit" class="btn btn-primary">Submit</button>
	</form>
	</span>
	</center>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>