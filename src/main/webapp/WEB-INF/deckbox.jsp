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
	<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
		<div class="col">
			<a href="/dashboard" class="btn btn-outline-primary">< Back</a>	
		</div>
		<div class="col">
			<a href="/logout" class="btn btn-outline-primary">Log Out</a>		
		</div>
	</nav>
	<div class="container-md">
		<div class="row">
			<div class="mt-5 col-sm-6">
				<h2>{Deck Box Name}</h2>
				<h3>{#} Vocabularies</h3>
			</div>
			<div class="mt-5 col-sm-6">
				<a href="/{deckbox_name}/practice" class="btn btn-success">Start Practice</a>	
			</div>
		</div>
		<div class="row mt-3">
			<div class="col-sm-6">
				<div class="card">
					<h5 class="p-5 text-center">{Vocabulary}</h5>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="card">
					<h5 class="p-5">{Definition}</h5>
				</div>
			</div>
		</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Word</th>
					<th>Definition</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allUserVocabs}" var="vocabObj">
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