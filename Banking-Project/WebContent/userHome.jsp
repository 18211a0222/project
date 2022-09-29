<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.monocept.pojos.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home Page</title>
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
	</div>
	<%
		User user = (User) session.getAttribute("user");
	%>
	<c:url var="emptyLink" value="login.jsp">
		<c:param name="userSession" value="empty"></c:param>
	</c:url>
	<c:url var="passbookLink" value="UserController">
		<c:param name="userOperation" value="passbook"></c:param>
		<c:param name="acc" value="${user.accountNo}"></c:param>
	</c:url>
	<c:url var="transactionLink" value="UserController">
		<c:param name="userOperation" value="transaction"></c:param>
		<c:param name="acc" value="${user.accountNo}"></c:param>
	</c:url>
	<c:if test="${empty user}">
		<c:redirect url="${emptyLink}"></c:redirect>
	</c:if>
	<center>
		<h3 class="text-primary">USER DASHBOARD</h3>
		<div class="bg-dark text-white my-4 mx-3">
			Account Number : ${user.accountNo} <br>Username :
			${user.username} <br>Full Name : ${user.fullname} <br>Email
			: ${user.email }<br>Balance : ${user.balance} Rs
		</div>
		<div>
			<c:choose>
				<c:when test="${user.status=='inactive'}">
					<button class="btn rounded bg-warning" disabled="disabled">Transaction</button>
					<button class="btn rounded bg-warning" disabled="disabled">Passbook</button>
				</c:when>
				<c:otherwise>
					<a href="${transactionLink}"><button
							class="btn rounded bg-warning">Transaction</button></a>
					<a href="${passbookLink}"><button
							class="btn rounded bg-warning">Passbook</button></a>
				</c:otherwise>
			</c:choose>
		</div>
	</center>
	<script>
		if (window.history.replaceState) {
			window.history.replaceState(null, null, "userHome.jsp");
		}
	</script>
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