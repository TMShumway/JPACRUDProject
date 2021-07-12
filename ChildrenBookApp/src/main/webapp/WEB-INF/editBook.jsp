<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<title>Add book to Database</title>
</head>
<body>
	<h2>Give your kids more options! Add a book to the Database</h2>			
	<div>
		<h4>Book Id: ${book.id}</h4>
		<form action="editBookForm.do" method="POST">
			<input type="hidden" name="id" value="${book.id}">
			<input type="hidden" name="coverLink" value="https://www.bhacademic.com/wp-content/themes/useful-group/assets/svgs/placeholder-book.svg">
			<label for="title">Title</label>
			<input type="text" id="titleField" name="title" value="${book.title}" required>
			<br>
			<label for="author">Author</label>
			<input type="text" id="authorField" name="author" value="${book.author}" required>
			<br>
			<label for="description">Description</label>
			<textarea id="descriptionField" name="description" rows="3" cols="50">${book.description}</textarea>
			<br>
			<label for="pageCount">Page Count</label>
			<input type="number" id="pageCountField" name="pageCount" value="${book.description}" min="1" step="1">
			<br>
			<label for="difficultyLevel">Difficulty Level</label>
			<input type="number" id="difficultyLevelField" name="difficultyLevel" value="${book.difficultyLevel}" step="1" min="1" max="4">
			<br>
			<input type="submit" value="Submit">
		</form>
	</div>
	<br>
	<a href="home.do"><button>Home</button></a>
	
	
	<!--  Bootstrap Bundle -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>