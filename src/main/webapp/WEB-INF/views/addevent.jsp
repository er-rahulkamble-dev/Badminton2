<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	
	 <title>Create Fixture</title>
 
	
	<style type="text/css">

    /*-==================================*/
		.body{

 			 padding: 0;
 			 margin: 0;

		}
		.topheader {
   			margin-bottom: 10px;
    		background-color: #00968878;
		}
		.header1 {
   			 padding: 30px;
   			 text-align: center;
		}
		span.headertitle {
    		font-size: 40px;
		}

		/*New styles for player list*/
		.container {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50% ,-50%);
	}
		
		.col {
    		background-color: white;
    		border: 1px solid blue;
    		padding: 10px 10px 10px 10px;
    		text-align: center;
    		font-size: 16px;
    		border-radius: 8px;
    		box-shadow: 6px 6px 17px -6px;
		}
		
		.rwcol {
    		background-color: #8080803b;
    		font-size: 20px;
    		font-weight: bold;
		}
    	input.col.rwcol.inp {
    		background-color: white;
		}
	</style>
	
</head>
<body>
	<div class="topheader">
		<div class="header1"><span class="headertitle">Create Fixture/Event</span></div>
	</div>
<div class="container">
<form:form method="POST" modelAttribute="event" action="save">
	<table class=" row0">
			<tr class="tbrow0">
				<td class="col rwcol">Date: </td>
				<td ><form:input class="col rwcol inp" type="text" value= "add Date(in mm/dd/yy)" path="date"/></td>
			</tr>
			<%-- <tr class="tbrow0">
				<td class="col rwcol">Match ID:</td>
				<td ><form:input path="matchid" size="15" maxlength="15"  class="col rwcol inp" type="number" /></td>
			</tr> --%>
			<tr class="tbrow0">
				<td class="col rwcol">Player-1 ID:</td>
				<td ><form:input path="playerid1" size="15" maxlength="15" class="col rwcol inp" type="number" /></td>
			</tr>
			<tr class="tbrow0">
				<td class="col rwcol">Player-2 ID:</td>
				<td><form:input path="playerid2" size="15" maxlength="15" class="col rwcol inp" type="number"/></td>
			</tr>
			<tr class="tbrow0">
				<td><input class="col rwcol" type="submit" value="Create Event" name=""></td>
			</tr>
	</table>
	</form:form>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</div>
</body>
</html>