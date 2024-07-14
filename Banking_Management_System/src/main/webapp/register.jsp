<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="components/common_css_js.jsp"%>
<title>BankMaster - Customer Register</title>
</head>
<body>

	<div class="container-fluid">
		<%@ include file="components/navbar.jsp"%>
		<%@ include file="components/navbar3.jsp"%>
	</div>

	<div class="container">
		<div class="row">
			<h1 class="text-center pt-5">Register Your Profile</h1>
			<div class="col-md-6 offset-md-3 border rounded mt-3 mb-5"
				style="background-color: #f9f9f9; box-shadow: 2px 2px grey">

				<form action="createCustomer" method="post" class="p-3">
					<div class="mb-3">
						<label for="name" class="form-label">Name</label> <input
							type="text" class="form-control" name="name" required>
					</div>
					<div class="mb-3">
						<label for="email" class="form-label">Email</label> <input
							type="email" class="form-control" name="email" required>
					</div>
					<div class="mb-3">
						<label for="password" class="form-label">Password</label> <input
							type="password" class="form-control" name="password" required>
					</div>
					<div class="mb-3">
						<label for="city" class="form-label">City</label> <input
							type="text" class="form-control" name="city" required>
					</div>
					<div class="mb-4">
						<label for="phone" class="form-label">Contact Number</label> <input
							type="number" class="form-control" name="phone" required>
					</div>

					<div class="mb-3 text-end">
						<button type="submit" class="btn header1-bg w-25">Next</button>
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