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
						<li id="empJs" href="#"></span>Employee Account</li>
						<li id="formJs" href="#"></span>Fill Form</li>
						<li id="updateJs" href="#"></ion-icon>Update</li>
						<li id="commentJs" href="#"></ion-icon>Comment</li>
					</ul>
				</div>
				<div class="toggle-btn">
					<span></span> <span></span> <span></span>
				</div>
			</div>


			<div class="col-sm-8">

				<div id="hide6">
					<h3>Employee Home</h3>
				</div>

				<div hidden id="hide7">
					<h3>Fill the form</h3>
					<br>
					<form id="empForm" method="post">
						<div class="row">
							<div class="col-sm-4">
								<div class="form-group">
									<label>First Name:</label> <input type="text"
										class="form-control" name="firstName">
								</div>
								<div class="form-group">
									<label>Last Name:</label> <input type="text"
										class="form-control" name="lastName">
								</div>
								<div class="form-group">
									<label>Phone Number:</label> <input type="text"
										class="form-control" name="phoneNumber">
								</div>
							</div>
							<div class="col-sm-4">
								<div class="form-group">
									<label>Email:</label> <input type="email" class="form-control" name="email">
								</div>
								<div class="form-group">
									<label>Marital Status:</label><select name="status"
										class="form-control">
										<option>Single</option>
										<option>Married</option>

									</select>
								</div>
								<div class="form-group">
									<label>Gender:</label> <input type="text" class="form-control" name="gender">
								</div>
							</div>
							<div class="col-sm-4">
								<div class="form-group">
									<label>Age:</label> <input type="text" class="form-control" name="age">
								</div>
								<div class="form-group">
									<label>Address:</label> <input type="text" class="form-control" name="address">
								</div>
							</div>
						</div>
                        <h5 id="fillFormResponse" style="color:green"></h5>
						<div class="right">
							<a href="#" class="btn btn-success" id="formButton">Save</a>
						</div>
					</form>
				</div>


				<div hidden id="hide8">
					<h3>Update the form</h3>
					<br>
					<form>
						<div class="row">
							<div class="col-sm-4">
								<div class="form-group">
									<label>First Name:</label> <input type="text"
										class="form-control">
								</div>
								<div class="form-group">
									<label>Last Name:</label> <input type="text"
										class="form-control">
								</div>
								<div class="form-group">
									<label>Phone Number:</label> <input type="text"
										class="form-control">
								</div>
							</div>
							<div class="col-sm-4">
								<div class="form-group">
									<label>Email:</label> <input type="text" class="form-control">
								</div>
								<div class="form-group">
									<label>Marital Status:</label><select name="make"
										class="form-control">
										<option>Single</option>
										<option>Married</option>

									</select>
								</div>
								<div class="form-group">
									<label>Gender:</label> <input type="text" class="form-control">
								</div>
							</div>
							<div class="col-sm-4">
								<div class="form-group">
									<label>Age:</label> <input type="text" class="form-control">
								</div>
								<div class="form-group">
									<label>Address:</label> <input type="text" class="form-control">
								</div>

							</div>
							<div class="right">
								<button class="btn btn-success">Save</button>
							</div>
						</div>


					</form>
				</div>

				<div hidden id="hide9">
					<h3>Write your comment</h3>
					<div class="form-group right">
						<textarea rows="6" cols="100" class="form-control"></textarea>
						<br>
						<button class="btn btn-success">Send</button>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>