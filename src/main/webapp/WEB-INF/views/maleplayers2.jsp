<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>All Players</title>
</head>
<body>
<h1>Players Details</h1>

<table border="1">

<tr>
<th>Player Id </th>
<th>Player first name</th>
<th>Player LastName</th>
<th>Gender</th>
<th>Age</th>
</tr>
<c:forEach items="${male_players }" var="item" >
<tr>
<td>${item.playerId }</td>
<td>${item.firstName }</td>
<td>${item.lastName }</td>
<td>${item.gender}</td>
<td>${item.age}</td>
</tr>
</c:forEach>

</table>
</body>
</html>