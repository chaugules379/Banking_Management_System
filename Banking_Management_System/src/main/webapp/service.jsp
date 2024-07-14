<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="components/common_css_js.jsp"%>
<title>BankMaster - Services</title>
</head>
<body>
	<div class="container-fluid">
		<%@ include file="components/navbar.jsp"%>
		<%@ include file="components/navbar3.jsp"%>
	</div>

	<div class="container-fluid">
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
	</div>

	<div class="container-fluid">
		<%@ include file="components/footer.jsp"%>
	</div>

</body>
</html>