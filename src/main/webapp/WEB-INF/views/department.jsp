<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<spring:url value="/resources/css/style.css"/>">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<title>FileManagementSystem</title>
<title>FileManagementSystem</title>
</head>
<body>
	<jsp:include page="../views/header.jsp"></jsp:include>
	<div class="row">
    <div class="col-sm-3"></div>
    
	<div class="col-sm-6">
		<h3>Search an employee</h3>
		<div class="input-group">
			<input type="text" class="form-control" placeholder="payroll">
			<div class="input-group-btn">
				<button type="button" class="btn btn-success">Search</button>
			</div>
		</div>
	    <br>

	<table id="data-table"
		class="table table-striped table-bordered nowrap" width="100%">
		<thead>
			<tr>
				<th>Details</th>
			</tr>
		</thead>
		<tbody>
			<tr class="odd gradeX">
				<td>Name</td>
				<td>Evans Otieno</td>
			</tr>
			<tr class="odd gradeX">

				<td>Phone Number</td>
			</tr>
			<tr class="odd gradeX">

				<td>Email</td>
			</tr>
			<tr class="odd gradeX">

				<td>Marital Status</td>
			</tr>
			<tr class="odd gradeX">

				<td>Gender</td>
			</tr>
			<tr class="odd gradeX">

				<td>Age</td>
			</tr>
			<tr class="odd gradeX">

				<td>Address 1</td>
			</tr>
			<tr class="odd gradeX">

				<td>Adress 2</td>
			</tr>


		</tbody>

	</table>
	</div>
	<div class="col-sm-3"></div>
	</div>
</body>
</html>