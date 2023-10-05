<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
		
</head>
<body>
	<div class="d-flex justify-content-around align-items-center bold text-white w-full p-4 bg-primary shadow">
		My Cool App
		
		<a class="text-white btn btn-success" href="/comments/new">+ create comment</a>
		
		<a class="text-white btn btn-info" href="/dashboard">Dashboard</a>
		
		<a class="text-white btn btn-danger" href="logout">Logout</a>
	</div>
	
	<div class="rounded h-fit w-50 border p-4">
		<h2>ID <c:out value="${comment.id}"></c:out></h2>
		<h2>Image</h2>
		<img style="height: 100px; width:100px;"class="rounded" src="${comment.imgUrl}" alt="comment Image" />
		<h2>Comment <c:out value="${comment.text}"></c:out></h2>
		<h2>User <c:out value="${comment.user.firstName}"></c:out></h2>
	</div>
	
	

</body>
</html>