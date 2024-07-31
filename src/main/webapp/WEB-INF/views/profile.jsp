<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="/WEB-INF/resources/components/base.jsp"%>
</head>
<body>
<%@include file="/WEB-INF/resources/components/navbar.jsp"%>
	<h1>User Login Successful : ${ userObj.fullName }</h1>
</body>
</html>