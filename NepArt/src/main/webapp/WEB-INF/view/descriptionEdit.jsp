
<!DOCTYPE html>
<html lang="en">
<head>
<title>File Upload</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container">
	
	<div class="row">
	<h3>Edit</h3>
	<hr>
	<div class="col-md-4">
	<img src="${img.path}" height=300 width=300>
	</div>
	<div class="col-md-6">
		<form action="${pageContext.request.contextPath}/editContent.do" method="get">
			<div class="form-group">
				<label>Title</label>
				 <input type="text" class="form-control"
					name="title" value="${img.title}" >
				<label>Description</label> 
				<input type="text" class="form-control"
					name="description" value="${img.description}" >
			</div>
			<div class="pull-right">
							<input type="submit" value="Done" class="btn btn-primary">
				
			</div>

		</form>
		</div>
	</div>
	</div>
	<hr>
	<%@include file="footer.jsp"%>
</body>
</html>

