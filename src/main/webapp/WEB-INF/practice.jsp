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
<link href="<c:url value="/resources/static/css/styles.css" />" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
		<div class="container">
			<div class="collapse navbar-collapse" id="navbarSupportedContent">		
				<a class="navbar-brand" href="/dashboard">Vocabee</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item">
					    <a class="nav-link active" aria-current="page" href="/dashboard">Home</a>
					</li>
				</ul>
				<div class="d-flex">
					<a href="/logout" class="btn btn-outline-light me-2">Log Out</a>
				</div>
	  		</div>
  		</div>
	</nav>
	<div class="container">
		<div class="row mt-3">
			<div class="col-sm-6 mt-5">
				<div class="flipper">
					<div class="card">
						<div class="front">
							<h5 class="p-5 text-center">{Vocabulary}</h5>
						</div>
						<div class="back">
							<h5 class="p-5 text-center">{Definition}</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="mt-3">		
			<button class="btn btn-danger">Incorrect</button>
			<button class="btn btn-warning" style="color:#fff;">Partially</button>
			<button class="btn btn-success">Correct</button>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<script src="<c:url value="/resources/static/js/scripts.js"/>"></script>
</html>