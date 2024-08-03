<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/resources/components/base.jsp"%>
<title>Edit Notes page</title>
</head>
<body style="background-color: #f0f0f0;">
	<%@include file="/WEB-INF/resources/components/navbar.jsp"%>
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center text-white bg-primary">
						<h1>Edit Notes</h1>
					</div>
					<div class="card-body">
						<form action="updateNotes" method="post"></label> 
								
							<div class="mb-3"> <label>Enter
									Title</label> <input type="text" name="title" value="${ notes.title }"
									class="form-control">
							</div>

							<div class="mb-3">
								<label>Enter Description</label>
								<textarea rows="6" cols="10" name="description"
									class="form-control">${ notes.description }</textarea>
							</div>

							<input type="hidden" value="${ notes.id }" name="id"
								class="form-control">
								
							<button class="btn btn-primary col-md-12">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>