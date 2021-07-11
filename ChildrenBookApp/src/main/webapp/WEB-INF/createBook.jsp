<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add book to Database</title>
</head>
<body>
	<h2>Give your kids more options! Add a book to the Database</h2>			
	<div>
		<form action="createBookForm.do" method="POST">
			<label for="title">Title</label>
			<input type="text" id="titleField" name="title" value="" required>
			<br>
			<label for="author">Author</label>
			<input type="text" id="authorField" name="author" value="" required>
			<br>
			<label for="description">Description</label>
			<textarea id="descriptionField" name="description" rows="3" cols="50">Description!</textarea>
			<br>
			<label for="pageCount">Page Count</label>
			<input type="number" id="pageCountField" name="pageCount" value="1" min="1" step="1">
			<br>
			<label for="difficultyLevel">Difficulty Level</label>
			<input type="number" id="difficultyLevelField" name="difficultyLevel" value="1" step="1" min="1" max="4">
			<br>
			<input type="submit" value="Submit">
		</form>
	</div>
	<br>
	<a href="home.do"><button>Home</button></a>
</body>
</html>