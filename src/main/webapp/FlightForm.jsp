<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<html>

		<head>
			<title>Travel Thru Air</title>
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
				integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
				crossorigin="anonymous">
		</head>

		<body
			style="background: black url('https://jooinn.com/images/brown-background-pattern-1.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940') no-repeat scroll center; background-size: cover; height: 100vh; color: #c8cfcf;">
			<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate" );
				if(session.getAttribute("username")==null){ response.sendRedirect("Login.jsp"); } %>
				<header>
					<nav class="navbar navbar-expand-md navbar-light font-weight-bold ml-auto"
						style="background-color: #D4BE94; border-bottom:20px;">
						<div>
							<a href="/UserManagement" class="navbar-brand"> Travel Thru Air </a>
						</div>

						<ul class="navbar-nav">
							<li><a href="<%=request.getContextPath()%>/list" class="nav-link">Flights</a></li>
							<li><a href="<%=request.getContextPath()%>/logout" class="nav-link">Logout</a></li>
						</ul>
					</nav>
				</header>

				<div class="container col-md-5"
					style="font-size:120%; background: black url('https://jooinn.com/images/brown-background-pattern-1.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940') no-repeat scroll center; background-size: cover; height: 100vh; color: #c8cfcf;">
					<div class="card"
						style="color:black; font-family:'Courier New', Courier, monospace; font-weight:bold; font-size:120%;">
						<div class="card-body">
							<c:if test="${flight != null}">
								<form action="update" method="post">
							</c:if>
							<c:if test="${flight == null}">
								<form action="insert" method="post">
							</c:if>

							<caption>
								<h2>
									<c:if test="${flight != null}">
										Edit Flight
									</c:if>
									<c:if test="${flight == null}">
										Add New Flight
									</c:if>
								</h2>
							</caption>

							<c:if test="${flight != null}">
								<input type="hidden" name="id" value="<c:out value='${flight.id}' />" />
							</c:if>

							<fieldset class="form-group">
								<label>Departure City</label> <input type="text"
									value="<c:out value='${flight.departure_city}' />" class="form-control"
									name="departure_city" required="required">
							</fieldset>

							<fieldset class="form-group">
								<label>Arrival City</label> <input type="text"
									value="<c:out value='${flight.arrival_city}' />" class="form-control"
									name="arrival_city">
							</fieldset>

							<fieldset class="form-group">
								<label>Cost</label> <input type="text" value="<c:out value='${flight.cost}' />"
									class="form-control" name="cost">
							</fieldset>

							<fieldset class="form-group">
								<label>Start time</label> <input type="time"
									value="<c:out value='${flight.start_time}' />" class="form-control"
									name="start_time">
							</fieldset>

							<fieldset class="form-group">
								<label>End Time</label> <input type="time" value="<c:out value='${flight.end_time}' />"
									class="form-control" name="end_time">
							</fieldset>

							<fieldset class="form-group">
								<label>Departure Time</label> <input type="time"
									value="<c:out value='${flight.departure_time}' />" class="form-control"
									name="departure_time">
							</fieldset>

							<fieldset class="form-group">
								<label>Arrival Time</label> <input type="time"
									value="<c:out value='${flight.arrival_time}' />" class="form-control"
									name="arrival_time">
							</fieldset>


							<fieldset class="form-group">
								<label>Legs</label> <input type="text" value="<c:out value='${flight.legs}' />"
									class="form-control" name="legs">
							</fieldset>



							<fieldset class="form-group">
								<label>Intermediate Haults</label> <input type="text"
									value="<c:out value='${flight.path}' />" class="form-control" name="path">
							</fieldset>

							<button type="submit" class="btn btn-success">Save</button>
							</form>
						</div>
					</div>
				</div>
		</body>

		</html>