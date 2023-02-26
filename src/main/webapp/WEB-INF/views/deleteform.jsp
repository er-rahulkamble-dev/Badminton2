<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action= "getinfo">
<table border="1">
<tr>
<td>Player Id</td>
<td><input type="text" name="playerId"/></td>
<td><input type="submit" value="fetch"></td>
</tr>
</table>
</form>

<c:if test="${player != null }">
<h1>Players Info</h1>

<table border="1">
<tr>
<th>Player ID</th>
<th>Player FirstName</th>
<th>Player LastNmae</th>
<th>Player Gender</th>
<th>Player Age  </th>
</tr>
<tr>
<td>${player.playerId }</td>
<td>${player.firstName }</td>
<td>${player.lastName}</td>
<td>${player.gender }</td>
<td>${player.age}</td>
</tr>
</table>

<form action="delete/${player.playerId }">
<input type="submit" value= "delete"/>
</form>

</c:if>


</body>
</html>