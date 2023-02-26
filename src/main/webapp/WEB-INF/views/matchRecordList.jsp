<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
	
	 <title>MatchRecordList</title>
 

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
		<div class="header1"><span class="headertitle">Played Matches</span></div>
	</div>
<div class="container">
	<table class=" row0">
			<tr class="tbrow0">
				<td class="col rwcol">Match Id</td>
				<td class="col rwcol">Match Date</td>
				<td class="col rwcol">Player-1 Id</td>
				<td class="col rwcol">Player-2 Id</td>
				<td class="col rwcol">Own sets of Player-1</td>
				<td class="col rwcol">Own sets of Player-2</td>
				<td class="col rwcol">Winner</td>
				
			</tr>
			<c:forEach items="${matchRecords}" var="item">
			<tr class="tbrow1">
				<td class="col">${item.currentMatch.matchid }</td>
				<td class="col">${item.date }</td>
				<td class="col">${item.playerid1 }</td>
				<td class="col">${item.playerid2}</td>
				<td class="col">${item.setp1}</td>
				<td class="col">${item.setp2}</td>
				<td class="col">${item.winner}</td>
			</tr>
			</c:forEach>
			<tr></tr>
	</table>
</div>
</body>
</html>