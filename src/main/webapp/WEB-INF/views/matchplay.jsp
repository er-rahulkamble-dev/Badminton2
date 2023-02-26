<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title></title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.body {
	position: relative;
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

.container {
	margin: 0;
	position: absolute;
	top: 60%;
	left: 35%;
	transform: translate(-50%, -50%);
	display: grid;
	grid-template-rows: auto auto auto;
	background-color: #80808030;
	border: 1px solid black;
	padding: 30px;
	border-radius: 30px;
}

.sideResultContainer {
	margin: 0;
	position: absolute;
	top: 60%;
	left: 78%;
	transform: translate(-50%, -50%);
	display: grid;
	grid-template-rows: auto auto auto;
	background-color: #80808030;
	border: 1px solid black;
	padding: 30px;
	border-radius: 30px;
}

.row {
	display: grid;
	grid-template-columns: auto auto auto;
}

.col {
	border: 1px solid blue;
	margin: 5px;
	padding: 5px;
	height: 50px;
	width: 200px;
	text-align: center;
	font-size: 25px;
	border-radius: 100px;
	box-shadow: 6px 6px 17px -6px;
}

.labelContainer {
	position: relative;
}

.labels {
	margin: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.row.row4 {
	margin: 30px 0px 30px 0px;
}

.row.sideResultBlock {
	float: right;
}
</style>
</head>
<body>
	<div class="topheader">
		<div class="header1">
			<span class="headertitle">Score Card</span>
		</div>
	</div>
	<form action="saveMatchRecord" method="post">
	<div class="container">
		<div class="row row0">
			<input class="col" id="courtNo" type="text" value="Add matchId" name="mid">
			
			<input class="col" id="player1" type="text" value="Add player 1" name="playerid1">
			
			<input class="col" id="player2" type="text" value="Add player 2" name="playerid2">
		</div>
		<div class="row row1">
			<div class="col labelContainer ">
				<span class="labels">Set 1</span>
			</div>
			<input class="col " id="first1"> <input class="col "
				id="first2">
		</div>
		<div class="row row2">
			<div class="col labelContainer ">
				<span class="labels">Set 2</span>
			</div>
			<input class="col" id="second1"> <input class="col"
				id="second2">
		</div>
		<div class="row row3">
			<div class="col labelContainer ">
				<span class="labels">Set 3</span>
			</div>
			<input class="col" id="third1"> <input class="col"
				id="third2">
		</div>

		<div class="row row4">
			
			<button class="col" onclick="add()">Check Winner</button>
			
			<input class="col" id="answer1" name="setp1" readonly="true" > 
			
			<input class="col" id="answer2" name="setp2" readonly="true">
		</div>
	</div>
	<div class="sideResultContainer">
		<!-- <div class="col"></div> -->
		<div class="col labelContainer ">
			<span class="labels">Winner <i class="fa fa-trophy"></i>
			</span>
		</div>
		<input id="winnerId" class="col" name="winner" readonly="true">
		<input id="winDate" class="col" name="date" >
		
			
		
	</div>
	</form>
	<script>
		function add() {
			var a, b, c, d, e, f, g;
			a = Number(document.getElementById("first1").value);
			b = Number(document.getElementById("second1").value);
			c = Number(document.getElementById("third1").value);

			d = Number(document.getElementById("first2").value);
			e = Number(document.getElementById("second2").value);
			f = Number(document.getElementById("third2").value);

			g = 0;
			h = 0;
			if (a > d) {
				g = g + 1;
			} else if (d > a) {
				h = h + 1;
			}

			if (b > e) {
				g = g + 1;
			} else if (e > b) {
				h = h + 1;
			}

			if (c > f) {
				g = g + 1;
			} else if (f > c) {
				h = h + 1;
			}
			document.getElementById("answer1").value = g;
			document.getElementById("answer2").value = h;

			// ------------winner-------

			var p1 = document.getElementById("player1").value;
			var p2 = document.getElementById("player2").value;
			// console.log(p1);
			// console.log(p2);

			if (g > h) {
				document.getElementById("winnerId").value = p1;
			} else if (h > g) {
				document.getElementById("winnerId").value = p2;
			}
		}
	</script>
</body>
</html>