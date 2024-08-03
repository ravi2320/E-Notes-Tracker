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
		<c:if test="${ not empty msg }">
			<p class="fs-3 fw-bold text-success text-center mb-3">${ msg }</p>
			<c:remove var="msg" />
		</c:if>
		<h4 class="text-center text-primary mb-4">All Notes</h4>
		<div class="row justify-content-center">
			<div class="col-md-8">
				<c:forEach items="${ list }" var="n">
					<div class="card mb-4 shadow-sm">
						<div class="card-body text-center">
							<img alt="enotes_img"
								src="<c:url value='/resources/img/nts.png'/>"
								class="rounded-circle mb-3" width="50px" height="50px">
							<h5 class="card-title">${ n.title }</h5>
							<p class="card-text">${ n.description }</p>
							<p class="text-muted">Publish Date: ${ n.date }</p>
							<div>
								<a href="editNotes?id=${ n.id }" class="btn btn-primary btn-sm mr-2">Edit</a>
								<a href="deleteNotes?id=${ n.id }" class="btn btn-danger btn-sm">Delete</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>
