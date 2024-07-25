<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/resources/components/base.jsp"%>
<title>Register Page</title>
</head>
<body style="background-color:#f0f0f0; ">
	<%@include file="/WEB-INF/resources/components/navbar.jsp" %>
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center text-white bg-primary">
						<h1>Register Page</h1>
					</div>
					<div class="card-body">
						<form action="">
							<div class="mb-3">
								<label>Enter Full Name</label>
								<input type="text" name="fullName" class="form-control">
							</div>
							
							<div class="mb-3">
								<label>Enter Education</label>
								<input type="text" name="education" class="form-control">
							</div>
							
							<div class="mb-3">
								<label>Enter Email</label>
								<input type="email" name="email" class="form-control">
							</div>
							
							<div class="mb-3">
								<label>Enter Password</label>
								<input type="password" name="password" class="form-control">
							</div>
							
							<button class="btn btn-primary col-md-12">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>