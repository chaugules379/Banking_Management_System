<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Responsive Navbar</title>
<style>

.navbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #ffbfbf;
	padding: 1rem;
	color: white;
}

.navbar-nav {
	display: inline-block;
	list-style: none;
	padding: 0;
	margin: 0;
}

.nav-item{
display: inline-block;
}

.nav-link {
	color: white;
	text-decoration: none;
}

.nav-link:hover {
	text-decoration: underline;
}

.navbar-toggler {
	display: none;
	font-size: 1.5rem;
	cursor: pointer;
}

@media ( max-width : 768px) {
	.navbar-nav {
		display: none;
		flex-direction: column;
		width: 100%;
	}
	.nav-item {
		margin: 1rem 0;
	}
	.navbar-toggler {
		display: block;
	}
	.navbar-collapse.show .navbar-nav {
		display: flex;
	}
}
</style>
</head>
<body>

	<div class="row text-center">
		<nav class="navbar">
			<div class="navbar-toggler" id="navbar-toggler">&#9776;</div>
			<div class="navbar-collapse" id="navbar-collapse">
				<ul class="navbar-nav">
					<li class="nav-item"><a style="padding: 10px 20px" class="nav-link" href="home.jsp">Home</a></li>
					<li class="nav-item"><a style="padding: 10px 20px" class="nav-link" href="about.jsp">About Us</a>
					</li>
					<li class="nav-item"><a style="padding: 10px 20px" class="nav-link" href="service.jsp">Services</a>
					</li>
					<li class="nav-item"><a style="padding: 10px 20px" class="nav-link" href="contact.jsp">Contact Us</a>
					</li>
				</ul>
			</div>
		</nav>
	</div>

	<script>
		document.getElementById('navbar-toggler').addEventListener(
				'click',
				function() {
					var navbarCollapse = document
							.getElementById('navbar-collapse');
					navbarCollapse.classList.toggle('show');
				});
	</script>

</body>
</html>
