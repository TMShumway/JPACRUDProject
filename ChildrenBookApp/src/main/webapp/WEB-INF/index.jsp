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

	<a href="createBook.do"><button>Add a book to the Database!</button></a>


	<!--  Bootstrap Bundle -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>