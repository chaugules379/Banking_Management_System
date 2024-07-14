<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="components/common_css_js.jsp"%>
<title>BankMaster - Home</title>
</head>
<body>
	<div class="container-fluid">
		<%@ include file="components/navbar.jsp"%>
		<%@ include file="components/navbar3.jsp"%>
	</div>

	<div class="container-fluid">
		<div class="row py-5">
			<div
				class="col-md-4 py-4 pb-5 offset-md-1 text-md-start text-sm-center">
				<h2>
					INTELLIGENT <br> BANKING <br> SOLUTIONS
				</h2>
				<p>Welcome to BankMaster - A secure, reliable, and efficient
					banking management system designed to simplify your financial
					operations. Our platform offers a comprehensive suite of services,
					including account management, transaction processing, loan
					applications, and financial planning tools.</p>
				<button class="btn header1-bg">Learn More</button>
			</div>
			<div class="col-md-6 m-auto">
				<img alt="" src="images/bank.jpg" class="img-fluid"
					height="400px" width="600px">
			</div>
		</div>

		<!------------ Cards ------------>
		<div class="row services-bg">
		<h2 class="text-center pt-4">Our Services</h2>
			<div class="col-md-4 text-center pt-5">
				<div class="btn button-bg btn-lg mb-3">Personal Loan</div>
				<div class="img">
					<img style="border: 1px grey; border-radius: 20px;" alt=""
						src="images/personal-loan.jpg" height="220px" width="250px">
				</div>
			</div>
			<div class="col-md-4 text-center pt-5">
				<div class="btn button-bg btn-lg mb-3">Home Loan</div>
				<div class="img">
					<img style="border: 1px grey; border-radius: 20px;" alt=""
						src="images/home-loan.jpg" height="220px" width="250px">
				</div>
			</div>
			<div class="col-md-4 text-center pt-5">
				<div class="btn button-bg btn-lg mb-3">Education Loan</div>
				<div class="img">
					<img style="border: 1px grey; border-radius: 20px;" alt=""
						src="images/education-loan.jpg" height="220px" width="250px">
				</div>
			</div>
		</div>

		<div class="row services-bg">
			<div class="col-md-4 text-center pt-5">
				<div class="btn button-bg btn-lg mb-3">Savings</div>
				<div class="img">
					<img style="border: 1px grey; border-radius: 20px;" alt=""
						src="images/saving.jpg" height="220px" width="250px">
				</div>
			</div>
			<div class="col-md-4 text-center pt-5">
				<div class="btn button-bg btn-lg mb-3">Cards</div>
				<div class="img">
					<img style="border: 1px grey; border-radius: 20px;" alt=""
						src="images/cards.png" height="220px" width="250px">
				</div>
			</div>
			<div class="col-md-4 text-center pt-5 pb-5">
				<div class="btn button-bg btn-lg mb-3">Finance</div>
				<div class="img">
					<img style="border: 1px grey; border-radius: 20px;" alt=""
						src="images/finance.jpg" height="220px" width="250px">
				</div>
			</div>
		</div>
		<!------------ Cards ------------>


		<div class="row my-5 justify-content-center">
		
			<div class="col-md-6 py-5 text-center text-sm-center">
				<img alt="" src="images/bank2.jpg" class="img-fluid"
					height="400px" width="600px">
			</div>

			<div class="col-md-6 contact-form">
				<h3 class="text-center">Contact Us</h3>
				<form action="contact" method="post">
					<div class="mb-3">
						<label for="name" class="form-label">Name</label> <input
							type="text" class="form-control" name="name">
					</div>
					<div class="mb-3">
						<label for="email" class="form-label">Email Address</label> <input
							type="email" class="form-control" name="email">
					</div>
					<div class="mb-3">
						<label for="phone" class="form-label">Contact Number</label> <input
							type="text" class="form-control" name="phone">
					</div>
					<div class="mb-3">
						<label for="message" class="form-label">Message</label>
						<textarea class="form-control" name="message" rows="3"></textarea>
					</div>
					<button type="submit" class="btn header1-bg w-100">Submit</button>
				</form>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<%@ include file="components/footer.jsp"%>
	</div>

</body>
</html>