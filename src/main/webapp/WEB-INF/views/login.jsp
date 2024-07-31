<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/resources/components/base.jsp"%>
<title>Login page</title>
</head>
<body style="background-color: #f0f0f0;">
	<%@include file="/WEB-INF/resources/components/navbar.jsp"%>
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<c:if test="${ not empty msg }">
					<p class="fs-3 fw-bold text-danger text-center">${ msg }</p>
					<c:remove var="msg" />
				</c:if>
				<c:if test="${ not empty msg1 }">
					<p class="fs-3 fw-bold text-success text-center">${ msg1 }</p>
					<c:remove var="msg1" />
				</c:if>
				<div class="card">
					<div class="card-header text-center text-white bg-primary">
						<h1>Login Page</h1>
					</div>
					<div class="card-body">
						<form action="loginUser" method="post">

							<div class="mb-3">
								<label>Enter Email</label> <input type="email" name="email"
									class="form-control">
							</div>

							<div class="mb-3">
								<label>Enter Password</label> <input type="password"
									name="password" class="form-control">
							</div>

							<button class="btn btn-primary col-md-12">Register</button>
						</form>
					</div>
					<div class="card-footer text-center">
						<p class="fs-6">
							don't have an account <a href="register"
								class="text-decoration-none">register</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>