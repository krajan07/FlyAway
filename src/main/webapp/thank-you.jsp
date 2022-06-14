<%@ page import="base.searchFlight"%>
<%@ page import="base.bookFlight"%>
<%
bookFlight.name_on_card = request.getParameter("name_on_card");
bookFlight.card_details = request.getParameter("card_details");

    if (bookFlight.name_on_card.equals("") || bookFlight.card_details.equals("")) {
        out.println("Please enter valid card details");
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Thank You - FlyAway Airlines</title>
<link rel="shortcut icon" type="image/png" href="images/favicon.png">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", sans-serif
}

body, html {
	height: 100%;
	line-height: 1.8;
}
.w3-bar .w3-button {
	padding: 16px;
}
</style>
</head>

<body>
	<div class="w3-bar w3-white w3-card" id="myNavbar">
		<a href="/FlyAway/home.jsp" class="w3-bar-item w3-button w3-wide"><img
			src="images/favicon.png" class="img-fluid" alt="image" width="18%">
			FlyAway</a>
		<div class="w3-right w3-hide-small">
			<a href="/FlyAway/login.jsp" class="w3-bar-item w3-button"><i
				class="fa fa-gear"></i> Administrator Login</a>
		</div>
	</div>
	<div class="container">
		<h2 align="center">
			<span><strong>Thank You</strong></span>
		</h2>
		<div align="center" class="col">
			<img src="images/favicon.png" class="img-fluid" alt="image">
		</div>
		<p align="center">
			<span><strong>Your ticket has been booked. The
					summary/details are as follows</strong></span>
		</p>
		<p>
			<button onclick="window.print()" class="btn btn-success btn-block">Print
				Ticket</button>
		</p>
		<br>
		<h3>Ticket Summary</h3>
		<h4>
			<strong><%=searchFlight.source%> to <%=searchFlight.destination%>
				| <%=searchFlight.date%> (<%=searchFlight.day%>)</strong>
		</h4>
		<p align="left"><%=bookFlight.flight_booking_id%>
			-
			<%=bookFlight.flight_name%>
			(Travellers
			<%=searchFlight.persons%>)
		</p>
		<br> <br>
		<h3>
			<strong>Passenger Summary</strong>
		</h3>
		<h3>
			Booking Name-<%=bookFlight.passenger_name%>
			| Email-
			<%=bookFlight.passenger_email%>
			| Phone-
			<%=bookFlight.passenger_phone%></h3>
		<br>
		<h3>
			<strong>Payment Summary</strong>
		</h3>
		<h4>
			Payment By-<%=bookFlight.name_on_card%>
			| Card No-
			<%=bookFlight.card_details%></h4>
		<br>
		<h2 align="right">
			<strong>Total Paid- Rs.<%=searchFlight.persons*bookFlight.ticket_price%></strong>
		</h2>
		<br>
		<br>
	</div>
	<div class="footer" align="center">FlyAway - Faster booking !!!</div>
</body>
</html>
