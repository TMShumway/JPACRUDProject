<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Children Books</title>
</head>
<body>

	<h2>Books for Children</h2>
	
	<div>
		<div>
			<form action="searchById.do" method="GET">
				<label for="id">Search by ID</label>
				<input type="number" id="idField" name="id" value="">
				<input type="submit" value="Submit">
			</form>
		</div>
	
	<br>
	
		<div>
			<form action="searchByKeyword.do" method="GET">
				<label for="keyword">Search by Keyword</label>
				<input type="text" id="keywordField" name="keyword" value="">
				<input type="submit" value="Submit">
			</form>
		</div> 
	</div>

	<br>

	<a href="createBook.do"><button>Add a book to the DataBase!</button></a>

</body>
</html>