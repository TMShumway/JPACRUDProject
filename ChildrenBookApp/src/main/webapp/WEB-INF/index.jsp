<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

				<link href="https://fonts.googleapis.com/css?family=Roboto:100" rel="stylesheet">
				<p id='head1' class='header'>Children who read...</p>
				<p id='head2' class='header'>are happy children.</p>
				<p id='head3' class='header'>Always Be Reading!</p>
				  <div class='light x1'></div>
				  <div class='light x2'></div>
				  <div class='light x3'></div>
				  <div class='light x4'></div>
				  <div class='light x5'></div>
				  <div class='light x6'></div>
				  <div class='light x7'></div>
				  <div class='light x8'></div>
				  <div class='light x9'></div>

<!-- MY CSS STYLESHEET  -->
<link href="MYCSS1.css" rel="stylesheet"/>


<title>Children Books</title>
</head>
<body>

	<div class="container">
		<div class="row" style="heght: 100rem">
		<br>
		<br>
		<br>		
		</div>
		<div class="row">
			<div class="col">1</div>
			<div class="col-6">
				<div class="card" style="">
					<div class="card-body">
						<h5 class="card-title">Search for children books</h5>
						<div>
							<div>
								<form action="searchById.do" method="GET">
									<label for="id">Search by ID</label> <input type="number"
										id="idField" name="id" value=""> <input class="btn btn-primary" type="submit" value="Submit">
								</form>
							</div>
							<br>
							<div>
								<form action="searchByKeyword.do" method="GET">
									<label for="keyword">Search by Keyword</label> <input
										type="text" id="keywordField" name="keyword" value="">
									<input class="btn btn-primary" type="submit" value="Submit">
								</form>
							</div>
						</div>
						<br> 
							<a class="btn btn-primary" href="showAllBooks.do" style="margin-right: 0.5rem" role="button">Show all books</a>
							<a class="btn btn-primary" href="createBook.do" tyle="margin-right: 0.5rem" role="button">Add a book to the Database</a>
					</div>
				</div>
			</div>
			<div class="col"></div>
		</div>
		<div class="row">
		</div>
	</div>








	<!--  Bootstrap Bundle -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>