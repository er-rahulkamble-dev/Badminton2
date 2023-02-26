<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
	
	 <title>Female Players</title>
 

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
		.mycontainer {
    		margin: 0;
    		position: absolute;
    		/*top: 41%;*/
    		/* left: 50%; */
    		/* transform: translate(-50%, -50%); */
    		/* display: grid; */
    		/* grid-template-rows: auto auto auto; */
    		background-color: #80808030;
    		border: 1px solid black;
    		padding: 4px;
    		border-radius: 10px;
		}
		
		
		.col {
    		background-color: white;
    		border: 1px solid blue;
    		/* margin: 0px; */
    		padding: 5px 5px 5px 5px;
    		/* height: 39px; */
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
    	
	</style>
	
</head>
<body>
	<div class="topheader">
		<div class="header1"><span class="headertitle">Female Players Details</span></div>
	</div>
<div class="container">
	<table class=" row0">
			<tr class="tbrow0">
				<td class="col rwcol">Player Id </td>
				<td class="col rwcol">Player first name</td>
				<td class="col rwcol">Player LastName</td>
				<td class="col rwcol">Gender</td>
				<td class="col rwcol">Age</td>
				
			</tr>
			<c:forEach items="${female_players }" var="item">
			<tr class="tbrow1">
				<td class="col">${item.playerId }</td>
				<td class="col">${item.firstName }</td>
				<td class="col">${item.lastName }</td>
				<td class="col">${item.gender}</td>
				<td class="col">${item.age}</td>
			</tr>
			</c:forEach>
			<tr></tr>
	</table>
</div>
</body>
</html>