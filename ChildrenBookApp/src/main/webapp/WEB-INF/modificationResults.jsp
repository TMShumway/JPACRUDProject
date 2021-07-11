<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	
	
			
	</div>
	<br>
	<a href="home.do"><button>Home</button></a>
</body>
</html>