<!DOCTYPE html>
<html>
<head>

<title>FlyAway Bookings</title>
<link rel="shortcut icon" type="image/png" href="images/favicon.png">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/style/global.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	background-color: #f5f5f5;
	color: #3b3b3b;
	text-align: center;
}
</style>
</head>

<body>
	<div class="w3-top">
		<div class="w3-bar w3-white w3-card" id="myNavbar">
			<a href="/FlyAway/home.jsp" class="w3-bar-item w3-button w3-wide"><img
				src="images/favicon.png" class="img-fluid" alt="image" width="18%">
				FlyAway</a>
			<div class="w3-right w3-hide-small">
				<a href="/FlyAway/login.jsp" class="w3-bar-item w3-button"><i
					class="fa fa-gear"></i> Administrator Login</a>
			</div>
		</div>
	</div>
	<header class="bgimg-1 w3-display-container w3-grayscale-min" id="home">
		<br>
		<div class="w3-display-centre w3-text-white" style="padding: 48px">
			<span class="w3-jumbo w3-hide-small">****** Book your flights
				faster than ever ******</span><br> <span class="w3-large">Book
				Your Flight Tickets at best prices</span>
		</div>
		<div class="w3-display-left w3-text-white" style="padding: 48px">
			<p>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<a href="/FlyAway/search-portal.jsp"
					class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-on"><i
					class="fa fa-fighter-jet"></i> Book Flights</a>
			</p>
			<p>
				<a href="/FlyAway/login.jsp"
					class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-on"><i
					class="fa fa-gear"></i> Administrator Login</a>
			</p>
		</div>
	</header>
	<div class="footer">FlyAway - Faster booking !!!</div>
</body>
</html>