<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vocabee</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
		<div class="col">
		</div>
		<div class="col">
			<a href="/logout" class="btn btn-outline-primary">Log Out</a>		
		</div>
	</nav>
	<div class="container">
		<h1>Welcome back to Vocabee, ${loggedInUser.userName}</h1>
		<div class="row mt-5">
			<h4 class="col">
				<a href="/{deckbox_name}">Today</a>
				<p>card # holder</p>
			</h4>
			<h4 class="col">
				<a href="">1 Day</a>
				<p>card # holder</p>
			</h4>
			<h4 class="col">
				<a href="">7 Days</a>
				<p>card # holder</p>
			</h4>
			<h4 class="col">
				<a href="">1 Month</a>
				<p>card # holder</p>
			</h4>
			<h4 class="col">
				<a href="">3 Months</a>
				<p>card # holder</p>
			</h4>
			<h4 class="col">
				<a href="">Retired</a>
				<p>card # holder</p>
			</h4>
		</div>
		<div>
			
		</div>
	</div>
</body>
</html>