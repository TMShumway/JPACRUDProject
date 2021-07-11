<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
 	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<title>Modification Results</title>
</head>
<body>
	<div>
		<c:if test="${createFlag}">
			<c:choose>
				<c:when test="${not empty book}">
					<h2>Your book was successfully added to the database!</h2>
					<a href="searchById.do?id=${book.id}"><button>See new book</button></a>
				</c:when>
				<c:otherwise>
					<h2>Book creation unsuccessful.</h2>
				</c:otherwise>
			</c:choose>
		</c:if>
		<c:if test="${deleteFlag}">
			<c:choose>
				<c:when test="${containsFlag}">
					<h2>The book was successfully deleted from the database!</h2>
				</c:when>
				<c:otherwise>
					<h2>Book deletion unsuccessful.</h2>
				</c:otherwise>
			</c:choose>
		</c:if>
		<c:if test="${editFlag}">
			<c:choose>
				<c:when test="${not empty book}">
					<h2>The book was successfully edited</h2>
					<a href="searchById.do?id=${book.id}"><button>See edited book</button></a>
				</c:when>
				<c:otherwise>
					<h2>Book edit unsuccessful.</h2>
				</c:otherwise>
			</c:choose>
		</c:if>
	
	
			
	</div>
	<br>
	<a href="home.do"><button>Home</button></a>
	
	
	<!--  Bootstrap Bundle -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>