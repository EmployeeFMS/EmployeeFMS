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
<script src="<spring:url value="/resources/js/style.js"/>"></script>

<title>FileManagementSystem</title>
<title>FileManagementSystem</title>
</head>
<body>
	<jsp:include page="../views/header.jsp"></jsp:include>
	<div>
		<div class="row">
			<div class="col-sm-3">
				<div id="side" class="side">
					<ul>
						<li id="staffJs" href="#"><span
							class="glyphicons glyphicons-user"></span>HR Staff Account</li>
						<li id="registerJs" href="#"><span
							class="glyphicons glyphicons-user-add"></span>Register Employee</li>
						<li id="limitJs" href="#"><span
							class="glyphicons glyphicons-ok-sign"></span>Limit Access</li>
						<li id="requestJs" href="#"><span
							class="glyphicons glyphicons-refresh"></span>Request Update</li>
						<li id="archiveJs" href="#"><span
							class="glyphicons glyphicons-cloud"></span>Add to Archive</li>
					</ul>
				</div>
				<div class="toggle-btn">
					<span></span> <span></span> <span></span>
				</div>
			</div>


			<div class="col-sm-8">
				<div id="hide1">
					<h3>Staff Home</h3>
				</div>
				<div hidden id="hide2">
				 <br>
					<form class="form-horizontal" action="/action_page.php">
						<div class="form-group">
							<label class="control-label col-sm-2" for="email">Payroll:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="payroll"
									placeholder="payroll">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="pwd">Password:</label>
							<div class="col-sm-8">
								<input type="password" class="form-control" id="pwd"
									placeholder="Enter payroll as password">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="pwd">Department:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="pwd"
									placeholder="Enter Department">
							</div>
						</div>
						<div class="col-sm-11 right">
							<button type="submit" class="btn btn-success">Register</button>
						</div>
					</form>
				</div>

				<div hidden id="hide3">
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							Department <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Computer Science</a></li>
							<li><a href="#">Maths</a></li>
							<li><a href="#">Human Nutrition</a></li>
						</ul>
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
								<td><input type="checkbox" name="name1" /></td>
							</tr>
							<tr class="odd gradeX">

								<td>Phone Number</td>
								<td><input type="checkbox" name="name2" /></td>
							</tr>
							<tr class="odd gradeX">

								<td>Email</td>
								<td><input type="checkbox" name="name3" /></td>
							</tr>
							<tr class="odd gradeX">

								<td>Marital Status</td>
								<td><input type="checkbox" name="name4" /></td>
							</tr>
							<tr class="odd gradeX">

								<td>Gender</td>
								<td><input type="checkbox" name="name5" /></td>
							</tr>
							<tr class="odd gradeX">

								<td>Age</td>
								<td><input type="checkbox" name="name6" /></td>
							</tr>
							<tr class="odd gradeX">

								<td>Address 1</td>
								<td><input type="checkbox" name="name7" /></td>
							</tr>
							<tr class="odd gradeX">

								<td>Adress 2</td>
								<td><input type="checkbox" name="name8" /></td>
							</tr>


						</tbody>

					</table>
					<div class="right">
						<button class="btn btn-success">Limit access</button>
					</div>
				</div>



				<div hidden id="hide4">
					<h3>Post Comment</h3>
					<div class="form-group right">
						<textarea rows="6" cols="100" class="form-control"></textarea>
						<br>
						<button class="btn btn-success">Request</button>
					</div>
				</div>

				<div hidden id="hide5">
					<h3>Enter payroll number to archive</h3>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="payroll">
						<div class="input-group-btn">
							<button type="button" class="btn btn-success">Search</button>
						</div>
					</div>
				</div>
				
				
			</div>
		</div>

	</div>



</body>
</html>