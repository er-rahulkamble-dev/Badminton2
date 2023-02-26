<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Badminton Dashboard</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

.navbar-nav {
	float: right;
}

.topwrapper {
	margin-top: 20px;
	display: grid;
	grid-template-columns: 37% auto;
}

button.wrap1btn {
	width: 90%;
	display: block;
	padding: 4px 8px 4px 8px;
	text-align: center;
	margin: 0 0px 11px 25px;
}

.wrap2 {
	/* height: 200px; */
	/* background-color: burlywood; */
	/* width: 60%; */
	margin: 0 25px 0 0;
	/* display: inline; */
	background-color: #f5f5f5;
	border: 1px solid #e3e3e3;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgb(0 0 0/ 5%);
	box-shadow: inset 0 1px 1px rgb(0 0 0/ 5%);
}

h4.admin_name {
	display: block;
	padding: 10px;
	margin: 14px;
}

button.newTournamentbtn {
	/* height: 30px; */
	padding: 6px 6px 6px 6px;
	text-align: center;
	margin: 11px 25px 11px 22px;
}

/*.sendEvent.well, .sendMatch {
    width: 18%;
    }
    .eventDetails{
      height: auto;
    }*/
    
     a.mngBtnAnchorAdmin {
    display: inline-block;
    display: block;
    text-align: center;
    width: 30%;
    min-height: 20px;
    margin: 10px;
    background-color: #f2eded !important;
    border-radius: 4px;
    border: 1px solid black !important;
    padding: 10px;
    text-decoration: none;
}
 a.mngBtnAnchor {
    display: inline-block;
    display: block;
    text-align: center;
   	width: 90%
    min-height: 20px;
    margin: 10px;
    background-color: #f2eded !important;
    border-radius: 4px;
    border: 1px solid black !important;
    padding: 10px;
    text-decoration: none;
}



button.mngBtn {
	display: block;
	width: 85%;
	min-height: 20px;
	margin: 10px;
	/* background-color: rgb(255 255 255 / 10%) !important; */
	/* border-radius: 4px; */
	/* border: 1px solid black !important; */
	padding: 10px;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
	border: 1px solid #e3e3e3;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgb(0 0 0/ 5%);
	box-shadow: inset 0 1px 1px rgb(0 0 0/ 5%);
}
</style>
</head>
<body>
	<!-- nav bar starts here -->
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="home">Home</a></li>
					
					<li><a href="home">Logout</a></li>
				
				</ul>
			</div>
		</div>
	</nav>
	<!-- Navbar ends here -->
	<div class="topwrapper">
		<!-- <!-- <div class="wrap1">
			<button type="submit" value="tourValue" name="tourSend"
				class="wrap1btn">Send Tournament</button>
			<button type="submit" value="drawerValue" name="drawerSend"
				class="wrap1btn">Send Drawers</button>
			<button type="submit" value="setUmpire" name="umpire"
				class="wrap1btn">Set Umpire</button>
		</div> --> -->
		<div class="wrap2">
			<h4 class="admin_name">Hi Admin </h4>
			<a href="addevent" class="mngBtnAnchorAdmin">Fixture/Event</a>
		</div>
	</div>

	<div class="container text-center">
		<h3>Manage Tournament</h3>
		<br>
		<div class="row">
			<div class="col-sm-4">
				<a href="matchPlay" class="mngBtnAnchor">Battle ground</a>
				
				<a href="getAllFixtures" class="mngBtnAnchor">View Event/Fixtures</a>
				<a href="deleteform" class="mngBtnAnchor">Disqualify a Player</a>
			</div>
			<div class="col-sm-4">
				<!-- <a href="getallplayers" class="mngBtnAnchor">View All Players</a> -->
				<a href="getMalePlayers" class="mngBtnAnchor">View Male Players</a>
				<a href="getFemalePlayers" class="mngBtnAnchor">View Female Players</a>
				
					
			</div>
			<div class="col-sm-4">
				<!-- <a href="ScoreBoard" class="mngBtnAnchor">ScoreBoard</a> -->
				
				<a href="getAllMatchRecords" class="mngBtnAnchor">Records</a>
				<a href="getTheWinner" class="mngBtnAnchor">Tournament Winner</a>
			</div>
		</div>
		<br>

		<!-- <footer class="container-fluid text-center">
			<h4>Contacts</h4>
		</footer> -->
	</div>
</body>
</html>