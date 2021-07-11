<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Results</title>
</head>
<body>
	<h2>Results</h2>
	<c:choose>
		<c:when test="${not empty books[0]}">
			<div>
				<table>
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
					<th>Delete</th>
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
			
		</c:when>
		<c:otherwise>
		<h4>Your book search did not generate any results.</h4>
		</c:otherwise>
	</c:choose>
	<br>
	<a href="home.do"><button>Home</button></a>
</body>
</html>