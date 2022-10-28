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
<title>Insert title here</title>
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
		<div class="d-flex">
			<div class="col-sm-6 mt-5">
				<h2>${box}</h2>
				<h3>{#} Vocabularies</h3>
			</div>
		</div>
		<a href="/{deckbox_name}/practice" class="btn btn-success">Start Practice</a>	
		<div class="row mt-3">
			<div class="col-sm-6">
				<c:forEach items="${allUserVocabs}" var="vocabObj">
					<div class="card">
						<h5 class="p-5 text-center">${vocabObj.word}</h5>
					</div>
				</c:forEach>
			</div>
			<div class="col-sm-6">
				<c:forEach items="${allUserVocabs}" var="vocabObj">
					<div class="card">
						<h5 class="p-5 text-center">${vocabObj.definition}</h5>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>