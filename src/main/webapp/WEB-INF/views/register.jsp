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
</style>
</head>
<body align="center" font="verdana">
	<br>
	<h2>Registration Form</h2>
	<br>
	<form id="myForm" action="savePlayer" method="post">
		<table align="center">

			<tr>
				<td>First Name</td>
			</tr>
			<tr>
				<td><input id="fname" type="text" name="firstName"  required/></td>
				<td><h6 id="wrongFname"></h6></td>
			</tr>
			<tr>
				<td>Last Name</td>
			</tr>
			<tr>
				<td><input id="lname" type="text" name="lastName" required /></td>
				<td><h6 id="wrongLname"></h6></td>
			</tr>
			<tr>
				<!--  <tr><td>Player id</td></tr>
<tr><td><input type="text" name="playerId" /></td>
</tr> -->
				<tr>
<td>Gender</td>
			</tr>
<tr>
				<td>
<input type="radio" name="gender" value="male" required>Male
<input type="radio" name="gender" value="female"  required>Female
</td>
</tr>
 <tr>
<td>Age</td>
			</tr>
<tr>
				<td><input id="crAge" type="text" name="age"  required/></td>
				<td><h6 id="wrongAge"></h6></td>
			</tr>
<tr>
<td><input type="submit" name="add" value="submit" onClick="formValidation" /></td>
</tr>

</table>
</form>

<script type="text/javascript">

let fname = document.getElementById("fname");
let wrongfname = document.getElementById("wrongFname");

let lname = document.getElementById("lname");
let wronglname = document.getElementById("wrongLname");

let crage = document.getElementById("crAge");
let wrongage = document.getElementById("wrongAge");

let form = document.getElementById("myForm");

form.addEventListener('submit',
	function formValidation(event) {
		if (fname.value == "") {
			wrongfname.innerText = "Name must be filled out";
			wrongfname.style.color = "red";
			event.preventDefault();
		}
		else
			wrongfname.innerText = "";
		
		if(lname.value ==""){
			wronglname.innerText = "Name must be filled out";
			wronglname.style.color = "red";
			event.preventDefault();
		}
		else
			wronglname.innerText = "";
		
		if(crage.value == 0){
			wrongage.innerText = "Age must be filled out";
			wrongage.style.color = "red";
			event.preventDefault();
		}
		else
			wrongage.innerText = "";		
	})

</script>
</body>
</html>
