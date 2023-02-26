<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<style>
table {
	border-collapse: collapse;
	width: 50%;
}

h2 {
	font-family: verdana;
}

td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(odd) {
	background-color: #f2f2f2
}

.error {
	color: red
}
</style>
</head>
<br>
	<br>
	<body align="center" font="verdana">
	<h2>Admin Login</h2>	<br>
		<form:form method="POST" modelAttribute="user" action="xcvbnm$zxcvbnm">
			<table align="center">
				<tr>
					<th><form:label path="username">UserName</form:label></th>
					<td><form:input path="username" size="16" maxlength="16" /></td>

				</tr>
				<tr>
					<th><form:label path="password">Password</form:label></th>
					<td><form:password path="password" size="16" maxlength="16" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="submit" /></td>
				</tr>
			</table>
			<form:errors path="username" cssClass="error" />
			<form:errors path="password" cssClass="error" />
		</form:form>

	</body>

</html>