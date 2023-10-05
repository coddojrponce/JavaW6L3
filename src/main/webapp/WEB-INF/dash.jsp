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
		
		<a class="text-white btn btn-danger" href="logout">Logout</a>
	</div>
	<table class="table">
		<thead>
			<tr>
				<th>Id</th>
				<th>Image</th>
				<th>Text</th>
				<th>User</th>
				<th>Actions</th>
			</tr>
		
		</thead>
		<tbody>
		<c:forEach var="comment" items="${comments}">
			<tr>
				<td><c:out value="${comment.id}"></c:out></td>
				<td>
					<img class="img-thumbnail rounded " style="height:70px;width:70px" src="${comment.imgUrl}" alt="" />
				</td>
				<td><c:out value="${comment.text}"></c:out></td>
				<td><c:out value="${comment.user.firstName}"></c:out> <c:out value="${comment.user.lastName}"></c:out></td>
				<td>
					<a href="/comments/${comment.id}">View</a>
					
					<c:if test="${userId==comment.user.id}">
						<a href="/comments/${comment.id}/edit">Edit</a>
						
						<form action="/comments/${comment.id}" method="POST">
							<input type="hidden" name="_method" value="delete" />
							<input class="btn btn-danger" type="submit" value="Delete" />
						</form>
					</c:if>
					
				</td>
				
			</tr>
		</c:forEach>
			
		</tbody>
	
	
	</table>
	
	

</body>
</html>