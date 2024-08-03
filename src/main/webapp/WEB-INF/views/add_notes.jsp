<%@page import="com.springmvc.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/resources/components/base.jsp"%>
<title>Add Notes page</title>
</head>
<body style="background-color: #f0f0f0;">
	<%@include file="/WEB-INF/resources/components/navbar.jsp"%>
	
	<div class="container mt-5">
		<div class="row">
			<c:if test="${ not empty msg }">
				<p class="fs-3 fw-bold text-success text-center">${ msg }</p>
				<c:remove var="msg" />
			</c:if>
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center text-white bg-primary">
						<h1>Add Your Notes</h1>
					</div>
					<div class="card-body">
						<form action="saveNotes" method="post">

							<div class="mb-3">
								<label>Enter Title</label> <input type="text" name="title"
									class="form-control">
							</div>

							<div class="mb-3">
								<label>Enter Description</label>
								<textarea rows="6" cols="10" name="description"
									class="form-control"></textarea>
							</div>

							<button class="btn btn-primary col-md-12">Save</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>