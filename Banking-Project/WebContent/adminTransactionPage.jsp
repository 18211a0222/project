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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body
	style="background-image: linear-gradient(to right, #ff512f, #f09819);">
	<form action="AdminController" method="post">
		<div class="container pt-3 text-end">
			<input type="hidden" name="op" value="logout" /> <input
				type="submit" class="btn btn-danger" value="Logout">
		</div>
	</form>
	<div class="container pb-3">
		<h1 class="text-center text-white my-4">
			<u>All User Transactions</u>
		</h1>
		<div class="container ">
			<form action="AdminController">
				<div class="row">
					<div class="col-6 px-0">
						<input type="search" name="search" class="form-control rounded-0"
							placeholder="Search Account Number" />
					</div>
					<div class="col px-0">
						<a href="AdminController"><button
								class="btn btn-primary rounded-0">
								<i class="fa fa-search"></i>
							</button></a> <input type="hidden" name="op" value="searchtrans">
					</div>
					<div class="col text-end">
						<c:url var="reload" value="AdminController">
							<c:param name="op" value="trans"></c:param>
						</c:url>
						<button type="reset" class="btn btn-primary rounded-0 mx-4"
							onclick="window.location.href='${reload}'">
							<i class="fa fa-refresh"></i>
						</button>
					</div>
				</div>
			</form>
		</div>
		<table class="table table-dark table-hover mt-4">
			<thead>
				<tr class="text-center">
					<th scope="col">AccountNo</th>
					<th scope="col">Type</th>
					<th scope="col">Amount</th>
					<th scope="col">Transaction_id</th>
					<th scope="col">Date</th>
					<th scope="col">Time</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="trans" items="${transactionList}">
					<tr class="text-center">
						<td>${trans.accountNo}</td>
						<td>${trans.transaction_type}</td>
						<td>${trans.amount}</td>
						<td>${trans.id}</td>
						<td>${trans.date}</td>
						<td>${trans.time}</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</body>
</html>