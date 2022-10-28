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
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
		<div class="container">
			<a class="navbar-brand" href="/dashboard">Vocabee</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
				<div class="d-flex">
					<a href="/logout" class="btn btn-outline-light me-2">Log Out</a>
				</div>
	  		</div>
  		</div>
	</nav>
	<div class="container">
		<h1 class="col-sm-6 mt-5">Welcome back, ${loggedInUser.userName}</h1>
		<div class="row mt-5">
			<h4 class="col">
				<a href="/deck/{box}">Today</a>
				<br>
				# of cards
			</h4>
			<h4 class="col">
				<a href="/deck/1_day">1 Day</a>
				<br>
				# of cards
			</h4>
			<h4 class="col">
				<a href="/deck/7_days">7 Days</a>
				<br>
				# of cards
			</h4>
			<h4 class="col">
				<a href="/deck/1_month">1 Month</a>
				<br>
				# of cards
			</h4>
			<h4 class="col">
				<a href="/deck/3_months">3 Months</a>
				<br>
				# of cards
			</h4>
			<h4 class="col">
				<a href="/deck/retired">Retired</a>
				<br>
				# of cards
			</h4>
		</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Word</th>
					<th>Definition</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allVocabs}" var="vocabObj">
					<tr>
						<td>${vocabObj.word}</td>
						<td>${vocabObj.definition}</td>						
					</tr>
				</c:forEach>			
			</tbody>				
		</table>
	</div>
</body>
</html>