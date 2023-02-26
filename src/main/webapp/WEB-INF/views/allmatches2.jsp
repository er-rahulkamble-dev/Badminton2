<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>All Matches/Events</title>
</head>
<body>
<h1>Event Details</h1>

<table border="1">

<tr>
<th>Date</th>
<th>MatchID</th>
<th>PlayerId1</th>
<th>PlayerId2</th>
</tr>
<c:forEach items="${events }" var="item" >
<tr>
<td>${item.date }</td>
<td>${item.matchid }</td>
<td>${item.playerid1 }</td>
<td>${item.playerid2}</td>

</tr>
</c:forEach>

</table>
</body>
</html>