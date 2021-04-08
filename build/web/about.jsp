<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
</head>
<body>

	<!-- Nav Bar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp">Home</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						href="pending_stocks.jsp">Pending_stocks</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="contact.jsp">Contact Us</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="about.jsp" tabindex="-1" aria-disabled="true">About</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="about-section">
		<h1>About Us...</h1>
		<p>This project is designed by Mr. Ocean Prajapati and Mr.
			Nishchay Pal.</p>
		<p>Resize the browser window to see that this page is responsive
			the browser window to see that this page is responsive the browser
			window to see that this page is responsive the browser window to see
			that this page is responsive by the way.</p>
	</div>
	<p></p>
	</br>
	<p></p>
	<h2 style="text-align: center">Our Team</h2>
	<p></p>

	<div class="row">
		<div class="column">
			<div class="card">

				<div class="container">
					<h2>Ocean Prajapati</h2>
					<p class="title">Project Role</p>
					<p>Some text that describes me lorem ipsum ipsum lorem.</p>
					<p>oceanprajapati@gmail.com</p>

				</div>
			</div>
		</div>

		<div class="column">
			<div class="card">

				<div class="container">
					<h2>Nishchay Pal</h2>
					<p class="title">Project Role</p>
					<p>Some text that describes me lorem ipsum ipsum lorem.</p>
					<p>nichchaypal1999@gmail.com</p>

				</div>
			</div>
		</div>


	</div>


	<!-- CSS Styling -->

	<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
}

html {
	box-sizing: border-box;
}

*, *:before, *:after {
	box-sizing: inherit;
}

.column {
	float: left;
	width: 33.3%;
	margin-bottom: 16px;
	padding: 0 8px;
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	margin: 8px;
}

.about-section {
	padding: 50px;
	text-align: center;
	background-color: #474e5d;
	color: white;
}

.container {
	padding: 0 16px;
}

.container::after, .row::after {
	content: "";
	clear: both;
	display: table;
}

.title {
	color: grey;
}

.button {
	border: none;
	outline: 0;
	display: inline-block;
	padding: 8px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
}

.button:hover {
	background-color: #555;
}

@media screen and (max-width: 650px) {
	.column {
		width: 100%;
		display: block;
	}
}
</style>

	<p></p>
	</br>
	<p></p>
	</br>
	<footer class="container">
		<p>© Blood Bank Management System 2021</p>
	</footer>

</body>
</html>