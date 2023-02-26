<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>New Registration</title>
<style>
table {
  
  border-collapse: collapse;
  width: 50%;
}
h2{
  font-family: verdana;}
td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(odd){background-color: #f2f2f2}


</style>
</head>
<body align="center" font="verdana">
<br>
<h2>Registration Form</h2>
<br>
<form action="savePlayer" method="post">
<table align="center">
  
 <tr><td>First Name</td></tr>
<tr><td><input type="text" name="firstName" /></td>
</tr>
  <tr>
<td>Last Name</td></tr>
<tr><td><input type="text" name="lastName" /></td>
</tr>
  <tr>
 <!--  <tr><td>Player id</td></tr>
<tr><td><input type="text" name="playerId" /></td>
</tr> -->
  <tr>
<td>Gender</td></tr>
<tr><td>
<input type="radio" name="gender" value="male">Male
<input type="radio" name="gender" value="female">Female
</td>
</tr>
 <tr>
<td>Age</td></tr>
<tr><td><input type="text" name="age" /></td></tr>
<tr>
<td><input type="submit" name="add" value="submit"/></td>
</tr>

</table>
</form>

</body>
</html>
