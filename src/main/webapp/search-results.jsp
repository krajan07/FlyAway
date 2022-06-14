<%@page import="java.sql.*"%>
<%@ page import="base.searchFlight"%>
<%
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "flyaway";
String userId = "root";
String password = "Root@123";

    String query = searchFlight.getQuery();
    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Search Results - FlyAway Airlines</title>
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
			<span><strong>Search Results</strong></span>
		</h2>
		<p align="center">
			<span><strong> Showing available flights from <%=searchFlight.source%>
					to <%=searchFlight.destination%> <br> Date of travel : <%=searchFlight.date%>
					(<%=searchFlight.day%>) <br> No of travellers : <%=searchFlight.persons%>
					<br>
		</p>
		<table class="table table-hover table-striped">
			<thead>
				<tr>
					<th scope="col">Flight</th>
					<th scope="col">Source</th>
					<th scope="col">Destination</th>
					<th scope="col">Date</th>
					<th scope="col">Ticket Price</th>
					<th scope="col">Select</th>
				</tr>
			</thead>
			<tbody>
				<br>
				<p align="center">
					<span><strong>Select a flight</strong></span>
				</p>
				<br>
				<%
            try{
                connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                statement=connection.createStatement();
                resultSet = statement.executeQuery(query);
                while(resultSet.next()){
        %>
				<tr bgcolor="#F5F5F5">
					<td><%=resultSet.getString("name") %></td>
					<td><%=resultSet.getString("source") %></td>
					<td><%=resultSet.getString("destination") %></td>
					<td><%=searchFlight.date%></td>
					<td><%=resultSet.getString("ticket_price") %></td>
					<td>
						<form
							action="${pageContext.request.contextPath}/bookingDetails.jsp"
							method="post">
							<input type="hidden" id="name" name="name"
								value="<%=resultSet.getString("name")%>"> <input
								type="hidden" id="ticket_price" name="ticket_price"
								value="<%=resultSet.getString("ticket_price")%>"> <input
								type="hidden" id="flight_id" name="flight_id"
								value="<%=resultSet.getString("flight_id")%>"> <input
								type="submit" class="btn btn-success" value="Book This Flight">
						</form>
					</td>
				</tr>
				<%
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
			</tbody>
		</table>
	</div>
	<div class="footer" align="center">FlyAway - Faster booking !!!</div>
</body>
</html>