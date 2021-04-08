<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
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


	<main role="main">

		<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">Blood Bank Management System</h1>

				<p>

					<a class="btn btn-primary btn-lg" href="admin_login.jsp"
						role="button">Admin</a>
				</p>
			</div>
		</div>
	</main>



	<div id="carouselExampleSlidesOnly" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img\a.jpg" class="d-block w-100" alt="...">
			</div>
		</div>
	</div>


	<p></p>
	</br>




	<form onsubmit="return valid()" action="Request" method="post" class="container">
		<h2>&nbsp; Request for blood</h2>
		<p></p>
		<div class="container">
			<label for="exampleFormControlInput1">Name</label> <input type="text"
				required="required" class="form-control" name="name"
				id="exampleFormControlInput1" placeholder="Full Name">
		</div>
		<p></p>
		<div class="container">
			<label for="exampleFormControlInput1">Mobile</label> <input
				type="number" class="form-control" required="required" name="mob"
				id="contact" placeholder="Mobile">
		</div>
		<p></p>
		<div class="container">
			<label for="exampleFormControlInput1">Email address</label> <input
				required type="email" class="form-control" name="email"
				id="exampleFormControlInput1" placeholder="name@example.com">
		</div>
		<p></p>
		<div class="container">
			<label for="exampleFormControlSelect1">Blood Group</label> <select
				class="form-control" name="bloodgroup" palceholder="Blood Group" required
				id="exampleFormControlSelect1">
				<option></option>
				<option>A+</option>
				<option>A-</option>
				<option>B-</option>
				<option>B+</option>
				<option>AB+</option>
				<option>Ab-</option>
				<option>O+</option>
				<option>O-</option>
			</select>
		</div>

		<p></p>
		&nbsp; &nbsp;
		<button  type="submit" class="btn btn-dark">Request</button>
	</form>



	<p></p>
	</br>
	<p></p>
	</br>

	<footer></footer>
	<footer class="container">
		<p>© Blood Bank Management System 2021</p>
	</footer>

	<script type="text/javascript">
		function valid() {
			var n = document.getElementById("contact").value;
			if (n.length < 10) {
				alert('mobile no is invalid');
				return false;
			}
			else return true;

		}
	</script>

</body>
</html>