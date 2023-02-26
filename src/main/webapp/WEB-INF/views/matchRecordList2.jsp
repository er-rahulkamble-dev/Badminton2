<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>All Match Records</title>
</head>
<body>
	<h1>Match Details</h1>
	<table border="1">
		<tr>
			<th>Match Id</th>
			<th>Match Date</th>
			<th>Player-1 Id</th>
			<th>Player-2 Id</th>
			<th>Own sets of Player-1</th>
			<th>Own sets of Player-2</th>
			<th>Winner</th>
		</tr>
		<c:forEach items="${matchRecords}" var="item">
			<tr>
				<td>${item.currentMatch.matchid }</td>
				<td>${item.date }</td>
				<td>${item.playerid1 }</td>
				<td>${item.playerid2}</td>
				<td>${item.setp1}</td>
				<td>${item.setp2}</td>
				<td>${item.winner}</td>
			</tr>
		</c:forEach>

	</table>
</body>