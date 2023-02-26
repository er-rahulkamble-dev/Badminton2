<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Winner Winner chicken dinner</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
      margin-top: 3%;
       text-align: center;
        font-size: 40px !important;
        font-weight: bold;
    }
   

    .wrap2 {
      background-color: #00968878;
    }
    .newTournamentbtn {
    padding: 2%;
    }

   
    .container{
      margin-top: 3%;
    }
    .col-sm-4 {
    width: 45.333333%;
    }

   button.mngBtn {
    display: block;
    width: 85%;
    min-height: 20px;
    margin: 10px;
    padding: 10px;
  }
   
    .mngBtn.winicon {
    text-size-adjust: 40px;
    font-size: 59px;
    }
  .gold i.fa.fa-trophy {
    color: gold;
    /* border: 1px solid; */
  }
  .silver i.fa.fa-trophy {
    color: #ecb9b9;
  }
  .col-sm-4 {
    width: 45.333333%;
    border: 1px solid blue;
    border-radius: 15px;
    margin-left: 20px;
    box-shadow: 4px 6px 14px 1px;
    padding: 12px;
  }
  .winRow.plrname {
    text-align: center;
    font-size: 32px;
    font-size: 36px;
    font-weight: 600;
  }
  .winRow.plrId {
    font-weight: 600;
    font-size: 20px;
    font-style: oblique;
  }
  span.firstName {
    margin-right: 10px;
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
        <li><a href="home"><span class="glyphicon glyphicon-log-in"></span> Log Out</a></li>
      </ul>
    </div>
  </div>
</nav>
<!-- Navbar ends here -->
<div class="topwrapper">
    <div class="wrap2">
     
      <div class="newTournamentbtn" ><i class="fa fa-trophy"></i> Winners Of The Tournament <i class="fa fa-trophy"></i></div>
      
  </div>  
</div>

<div class="container text-center">    
  <div class="row">
    <div class="col-sm-4">
      <div class="mngBtn winicon gold">
        <i class="fa fa-trophy"></i> 
      </div>
      <div class="mngBtn">
        <div class=" winRow plrname"><span class="firstName">${winner.firstName }</span><span class="lastName">${winner.lastName }</span></div>
        <div class="winRow plrId"><span class="firstName">Player Id:</span><span class="lastName">${winner.playerId }</span></div>
        <div class="winRow plrId"><span class="firstName">Age:</span><span class="lastName">${winner.age }</span></div>
        <div class="winRow plrId"><span class="firstName">Gender:</span><span class="lastName">${winner.gender}</span></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="mngBtn winicon silver"><i class="fa fa-trophy"></i></div>
      <div class="mngBtn">
        <div class=" winRow plrname"><span class="firstName">${runnerup.firstName }</span><span class="lastName">${runnerup.lastName }</span></div>
        <div class="winRow plrId"><span class="firstName">Player Id:</span><span class="lastName">${runnerup.playerId }</span></div>
        <div class="winRow plrId"><span class="firstName">Age:</span><span class="lastName">${runnerup.age }</span></div>
        <div class="winRow plrId"><span class="firstName">Gender:</span><span class="lastName">${runnerup.gender}</span></div>
      </div>
    </div>
    
  </div>

</div>
</body>
</html>