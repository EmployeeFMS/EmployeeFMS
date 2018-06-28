<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div>
	<img class="logo" src="/FileManagement/resources/images/logo.png" />
</div>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<ul class="nav navbar-nav" id="change">
			<li><a href="<spring:url value="/"/>">Home</a></li>
			<li><a href="<spring:url value="/staff"/>">Staff</a></li>
			<li><a href="<spring:url value="/employee"/>">Employee</a></li>
			<li><a href="<spring:url value="/department"/>">Department</a></li>
		</ul>
	</div>
</nav>
