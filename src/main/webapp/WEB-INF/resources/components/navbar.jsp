<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>

<%@include file="/WEB-INF/resources/components/base.jsp"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><i class="fa-solid fa-book"></i>E-Notes</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<c:if test="${ not empty userObj }">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${ pageContext.request.contextPath }/home"><i class="fa-solid fa-house"></i>Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${ pageContext.request.contextPath }/user/addNotes">Add
							Notes</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${ pageContext.request.contextPath }/user/viewNotes">View
							Notes</a></li>
				</ul>
			</c:if>
			<c:if test="${ empty userObj }">
				<form class="d-flex">
					<a href="${ pageContext.request.contextPath }/login" class="btn btn-light me-2" type="submit">Login</a>
					<a href="${ pageContext.request.contextPath }/register" class="btn btn-light" type="submit">Register</a>
				</form>
			</c:if>
			<c:if test="${ not empty userObj }">
				<form class="d-flex">
					<a href="#" class="btn btn-light me-2" type="submit"><i
						class="fa-solid fa-user"></i>${ userObj.fullName }</a> <a
						href="${ pageContext.request.contextPath }/user/logout" class="btn btn-light" type="submit"><i
						class="fa-solid fa-right-from-bracket"></i>Logout</a>
				</form>
			</c:if>
		</div>
	</div>
</nav>