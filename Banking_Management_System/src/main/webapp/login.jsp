<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="components/common_css_js.jsp"%>
<title>BankMaster - Customer Login</title>
</head>
<body>

	<div class="container-fluid">
		<%@ include file="components/navbar.jsp"%>
		<%@ include file="components/navbar3.jsp"%>
	</div>

	<div class="container">
		<div class="row">
			<h1 class="text-center pt-5">Login Here</h1>
			<div class="col-md-6 offset-md-3 border rounded mt-3 mb-5"
				style="background-color: #f9f9f9; box-shadow: 2px 2px grey">
				<form action="loginAccount" method="post" class="p-3">
					<div class="mb-3">
						<label for="email" class="form-label">Email Address</label> <input
							type="email" class="form-control" name="email">
					</div>
					<div class="mb-3">
						<label for="password" class="form-label">Password</label> <input
							type="password" class="form-control" name="password">
					</div>

					<div class="mb-3 text-center">
						<button type="submit" class="btn header1-bg w-50">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<%@ include file="components/footer.jsp"%>
	</div>

</body>
</html>