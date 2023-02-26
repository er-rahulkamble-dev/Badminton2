<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form method="POST" modelAttribute="event" action="save">
		<h2 align="center">Create an Event</h2> <br>  <br> <br> <br> <br>
		<table align="center">

			<tr>
				<th><form:label cssClass="control-label" path="date">Date(in mm/dd/yy)</form:label>
        <div class="controls">
          <form:input path="date" class="date" />
        </div></th>
			</tr>

			<tr>
				<th><form:label path="playerid1">PlayerId1</form:label></th>
				<td><form:input path="playerid1" size="15" maxlength="15" /></td>
			</tr>
			<tr>
				<th><form:label path="playerid2">PlayerId2</form:label></th>
				<td><form:input path="playerid2" size="15" maxlength="15" /></td>
			</tr>
			<%-- <tr>
				<th><form:label path="matchid">Matchid</form:label></th>
				<td><form:input path="matchid" size="15" maxlength="15" /></td>
			</tr> --%>
			<tr>

				<td><input type="submit" value="Add event" /></td>
			</tr>

		</table>
	</form:form>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</body>
</html>