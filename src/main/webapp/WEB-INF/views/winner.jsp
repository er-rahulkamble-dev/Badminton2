<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Winner Winner chicken dinner</title>
</head>
<body>
<h1>The winner is</h1>

<table border="1">

<tr>
<th>Winner: (Gold Medal) </th>
</tr>
<%-- <c:forEach items="${winner }" var="item" > --%>
<tr>
<td>${winner.playerId }</td>
<td>${winner.firstName }</td>
<td>${winner.lastName }</td>
<td>${winner.gender}</td>
<td>${winner.age }</td>
</tr>
<%-- </c:forEach> --%>

<tr>
<th>Winner: (Silver Medal) </th>
</tr>
<%-- <c:forEach items="${winner }" var="item" > --%>
<tr>
<td>${runnerup.playerId }</td>
<td>${runnerup.firstName }</td>
<td>${runnerup.lastName }</td>
<td>${runnerup.gender}</td>
<td>${runnerup.age }</td>
</tr>
<%-- </c:forEach> --%>

</table>
</body>
</html>