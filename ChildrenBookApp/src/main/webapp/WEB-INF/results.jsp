<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<title>Book Results</title>
</head>
<body>
	<br><br>
	<c:choose>
		<c:when test="${not empty books[0]}">
		<div class="col d-flex justify-content-center mt-10 mb-10">
			<div class="card" style="width:90%;height:90%;">
				<div class="card-body">
					<h3 class="card-title">Results</h3>
					<h4 class="card-subtitle mb-2 text-muted">ABR, Always Be Reading!</h4>
					<table class="table">
					<tr>
						<th>ID</th>
						<th>Title</th>
						<th>Author</th>
						<th>Description</th>
						<th>Page Count</th>
						<th>Reading Level</th>
						<th>ISBN</th>
						<th>Purchase Link</th>
						<th>Cover Image</th>
						<th>Modify</th>
					</tr>
					<c:forEach items="${books}" var="b">
						<tr>
							<td>${b.id}</td>
							<td>${b.title}</td>
							<td>${b.author}</td>
							<td>${b.description}</td>
							<td>${b.pageCount}</td>
							<td>${b.difficultyLevel}</td>
							<td>${b.isbn}</td>
							<td><a href="${b.storeLink}"><button>Purchase Book</button></a></td>
							<td><a href="${b.coverLink}"><img alt="Image of Book Cover" src="${b.coverLink}" style="width:128px;height:128x"></a></td>
							<td>
								<form action="deleteBook.do" method="post">
								<input type="submit" value="Delete">
								<input type="hidden" name="id" value="${b.id}">
								</form><br>
								<form action="editBook.do" method="post">
								<input type="submit" value="Edit">
								<input type="hidden" name="id" value="${b.id}">
								</form><br>
							</td>
						</tr>
					</c:forEach>
					</table>
				</div>
			</div>
		</div>
			
		</c:when>
		<c:otherwise>
		<h4>Your book search did not generate any results.</h4>
		</c:otherwise>
	</c:choose>
	<br>
	<a href="home.do"><button>Home</button></a>
	
	
	<!--  Bootstrap Bundle -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>