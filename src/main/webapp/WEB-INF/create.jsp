<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css/"/>
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script defer src="/js/script.js"></script>

</head>
<body class="h-fit">
	<div class="bold text-white w-full p-4 bg-primary shadow">
	My Cool App
	</div>
	<div class="w-full min-vh-100 h-fit bg-light p-4 d-flex justify-content-center">
	
		<div class="rounded h-fit w-50 border p-4">
			<h2>Create Comment</h2>
			<form:form class="d-flex flex-column gap-2" action="/comments" modelAttribute="comment">
			
				<div class="w-full d-flex flex-column">
					<form:errors class=" m-1 p-1 text-white rounded bg-danger"  path="user"></form:errors>
				</div>
				<div class="w-full d-flex flex-column">
					<form:label path="text">Comment:</form:label>
					<form:input class="border ring-secondary rounded" path="text"></form:input>
					<form:errors class=" m-1 p-1 text-white rounded bg-danger" path="text"></form:errors>
				</div>
				<div class="w-full d-flex flex-column">
					<form:label path="imgUrl">Image Url:</form:label>
					<form:input class="border ring-secondary rounded" path="imgUrl"></form:input>
					<form:errors class=" m-1 p-1 text-white rounded bg-danger"  path="imgUrl"></form:errors>
				</div>
				
				<div>
					<input class="btn btn-success text-white" type="submit" value="Add Comment" />
				</div>
				
				<div class="d-flex justify-content-center">
				
				</div>
			
			</form:form>
			<div>
				<a class="btn btn-danger" href="/dashboard">Cancel</a>
			
			</div>
		</div>	
		
		
		<div>
		</div>
	
	</div>
	
	

</body>
</html>