<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<spring:url value="/login" var="loginVar" />
				<form method="post" action="${loginVar}">
					<div class="form-group">
						<label>Payroll</label> <input type="text" name="customUsername"
							class="form-control">
					</div>

					<div class="form-group">
						<label>Password</label> <input type="password"
							name="customPassword" class="form-control">
					</div>
					<sec:csrfInput/>
					<button class="btn btn-success">Login</button>
				</form>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
</body>
</html>