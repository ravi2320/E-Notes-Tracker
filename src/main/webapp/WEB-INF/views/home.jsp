<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
<title>Home Page</title>
</head>
<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">E-Notes</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Add Notes</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Add Notes</a></li>
			</ul>
			<form class="d-flex">
				<a href="Register" class="btn btn-light me-2" type="submit">Login</a>
				<a href="login" class="btn btn-light" type="submit">Register</a>
			</form>
		</div>
	</div>
</nav>
<!-- Navbar end -->
<body>
</body>
</html>