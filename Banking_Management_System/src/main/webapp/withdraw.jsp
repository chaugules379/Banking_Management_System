<!DOCTYPE html>
<html>
<head>
<title>Deposit</title>
</head>
<%@ include file="components/common_css_js.jsp"%>
<body>

	<div class="container-fluid">
		<%@ include file="components/navbar2.jsp"%>
	</div>
	
	<div class="container">
		<div class="row">
			<h1 class="text-center pt-5">Withdraw Money</h1>
			<div class="col-md-6 offset-md-3 border rounded mt-3 mb-5"
				style="background-color: #f9f9f9; box-shadow: 2px 2px grey">
				<form action="withdrawServlet" method="post" class="p-3">
					<input type="hidden" name="action" value="withdraw"> <input
						type="hidden" name="accountId"
						value="<%=request.getParameter("accountId")%>">
					<div class="mb-3">
						<label for="amount" class="form-label">Amount</label> <input
							type="number" class="form-control" name="amount" required>
					</div>

					<div class="mb-3 text-center">
						<button type="submit" class="btn header1-bg w-50">Withdraw</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
