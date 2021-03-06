<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Travel Thru Air</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
			integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	</head>

	<body
		style="background: black url('https://jooinn.com/images/brown-background-pattern-1.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940') no-repeat scroll center; background-size: cover; height: 100vh; color: #c8cfcf;">
		<header>
			<nav class="navbar navbar-expand-md navbar-light font-weight-bold ml-auto"
				style="background-color: #D4BE94; border-bottom:20px;">
				<div>
					<a href="/UserManagement" class="navbar-brand"> Travel Thru Air </a>
				</div>

				<ul class="navbar-nav">
					<li><a href="<%=request.getContextPath()%>/list" class="nav-link">Flights</a></li>
					<li><a href="<%=request.getContextPath()%>/login" class="nav-link">Admin</a></li>
				</ul>
			</nav>
		</header>
		<div class="container col-md-5"
			style="font-size:120%; background: black url('https://jooinn.com/images/brown-background-pattern-1.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940') no-repeat scroll center; background-size: cover; height: 100vh; color: #c8cfcf;">
			<div class="card"
				style="color:black; font-family:'Courier New', Courier, monospace; font-weight:bold; font-size:120%;">
				<div class="card-body">
					<form action="filtercity" method="post">
						<caption>
							<h2>
								Filter Flight Search
							</h2>
						</caption>

						<fieldset class="form-group">
							<label>Departure city:</label> <input type="text" class="form-control"
								name="departure_city">
						</fieldset>
						<fieldset class="form-group">
							<label>Arrival city:</label> <input type="text" class="form-control" name="arrival_city">
						</fieldset>

						<fieldset class="form-group">
							<label for="time">Time:</label>
							<select name="time" class="form-control">
								<option value="day">Day</option>
								<option value="night">Night</option>
							</select>
						</fieldset>
						<button type="submit" class="btn btn-success">Filter</button>
					</form>
				</div>
			</div>
		</div>

		</div>
	</body>

	</html>