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
			<a class="navbar-brand navbar-nav me-auto mb-2 mb-lg-0" href="/">Vocabee</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">		
				<div class="d-flex">
					<a href="/" class="btn btn-outline-light me-2">Go Back</a>		
					<a href="/login" class="btn btn-light">Login</a>	
				</div>
	  		</div>
  		</div>
	</nav>
	<div class="container">
		<form:form action="/register/validation" method="post" modelAttribute="newUser">
		    <div class="mt-5">
		        <form:label path="userName">User Name</form:label>
		        <form:input path="userName" type="text" class="form-control"/>
		        <form:errors path="userName" class="text-danger"/>
		    </div>
		    <div class="mt-3">
		        <form:label path="email">Email</form:label>
		        <form:input path="email" type="email" class="form-control"/>
		        <form:errors path="email" class="text-danger"/>
		    </div>
		    <div class="mt-3">
		        <form:label path="password">Password</form:label>
		        <form:input path="password" type="password" class="form-control"/>
		        <form:errors path="password" class="text-danger"/>
		    </div>
		    <div class="mt-3">
		        <form:label path="confirm">Confirm Password</form:label>
		        <form:input path="confirm" type="password" class="form-control"/>
		        <form:errors path="confirm" class="text-danger"/>     
		    </div>    
		    <input class="btn btn-primary mt-3" type="submit" value="Sign Up"/>
		</form:form>
	</div>
</body>
</html>