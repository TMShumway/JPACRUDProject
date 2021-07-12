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

	<!-- MY CSS STYLESHEET  -->
	<link href="MYCSS1.css" rel="stylesheet"/>

<title>Add book to Database</title>
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
						<h5 class="card-title"></h5>
						<div>							
							
							<h2>Give your kids more options! Add a book to the Database</h2>			
							<div>
								<form action="createBookForm.do" method="POST">
									<input type="hidden" name="coverLink" value="https://www.bhacademic.com/wp-content/themes/useful-group/assets/svgs/placeholder-book.svg">
									<input type="hidden" name="storeLink" value="https://www.barnesandnoble.com/">
									<input type="hidden" name="isbn" value="Coming Soon">
									<label for="title">Title</label>
									<input type="text" id="titleField" name="title" value="" required>
									<br>
									<label for="author">Author</label>
									<input type="text" id="authorField" name="author" value="" required>
									<br>
									<label for="description">Description</label>
									<textarea placeholder="Enter a description of the book" id="descriptionField" name="description" rows="3" cols="50" required></textarea>
									<br>
									<label for="pageCount">Page Count</label>
									<input type="number" id="pageCountField" name="pageCount" value="1" min="1" step="1">
									<br>
									<label for="difficultyLevel">Difficulty Level</label>
									<input type="number" id="difficultyLevelField" name="difficultyLevel" value="1" step="1" min="1" max="4">
									<br>
									<input class="btn btn-primary" type="submit" value="Submit">
								</form>
							</div>
							
						</div>
						<br> 
							<a class="btn btn-primary" href="home.do" style="margin-right: 0.5rem" role="button">Home</a>
							<a class="btn btn-primary" href="showAllBooks.do" style="margin-right: 0.5rem" role="button">Show all books</a>
					</div>
				</div>
			</div>
			<div class="col"></div>
		</div>
		<div class="row">
		</div>
	</div>





	
	<!--  Bootstrap Bundle -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>