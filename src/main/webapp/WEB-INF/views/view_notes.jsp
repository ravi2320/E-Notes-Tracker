<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/resources/components/base.jsp"%>
<title>View Notes Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body class="bg-light">
	<%@include file="/WEB-INF/resources/components/navbar.jsp"%>
	<div class="container mt-5">
		<h4 class="text-center text-primary mb-4">All Notes</h4>

		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card mb-4 shadow-sm">
					<div class="card-body text-center">
						<img alt="enotes_img"
							src="<c:url value='/resources/img/nts.png'/>"
							class="rounded-circle mb-3" width="50px" height="50px">
						<h5 class="card-title">What is Java?</h5>
						<p class="card-text">Java is a programming language.</p>
						<p class="text-muted">Publish Date: 2024-07-25</p>
						<div>
							<a href="editNotes" class="btn btn-primary btn-sm mr-2">Edit</a>
							<a href="deleteNotes" class="btn btn-danger btn-sm">Delete</a>
						</div>
					</div>
				</div>

				<!-- Repeat the card structure for additional notes -->
				<div class="card mb-4 shadow-sm">
					<div class="card-body text-center">
						<img alt="enotes_img"
							src="<c:url value='/resources/img/nts.png'/>"
							class="rounded-circle mb-3" width="50px" height="50px">
						<h5 class="card-title">What is Java?</h5>
						<p class="card-text">Java is a programming language.</p>
						<p class="text-muted">Publish Date: 2024-07-25</p>
						<div>
							<a href="editNotes" class="btn btn-primary btn-sm mr-2">Edit</a>
							<a href="deleteNotes" class="btn btn-danger btn-sm">Delete</a>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
