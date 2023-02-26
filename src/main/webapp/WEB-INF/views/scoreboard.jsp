<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form method="POST" modelAttribute="score" action="update">
		<h2 align="center">Match Records</h2> <br>  <br> <br> <br> <br>
		<table align="center"></table>
<table>
<tr>
<td> date</td>
<td> <input type="text" name="date"></td>
</tr>
<tr>
<td> matchid</td>
<td> <input type="text" name="matchid"></td>
</tr>
<tr>
<td> playerid1</td>
<td> <input type="text" name="playerid1"></td>
</tr>
<tr>
<td> playerid2</td>
<td> <input type="text" name="playerid2"></td>
</tr>
<tr>
<td> Set won by p1</td>
<td> <input type="text" name="setp1"></td>
</tr>
<tr>
<td> Set won by p2</td>
<td> <input type="text" name="setp2"></td>
</tr>
<tr>
<td> result</td>
<td> <input type="text" name="result"></td>
</tr>
<tr>
<td> <input type="submit" value="score"></td>
</tr>

</table>

</form:form>
</body>
</html>