<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->



	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="CSS/bootstrapR.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="CSS/Reservation_style.css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		
		<script>
		function ValidateEmail(form) 
		{
		 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.emailAddr.value))
		  {
		    return (true)
		  }
		    alert("You have entered an invalid email address!")
		    return (false)
		}
		</script>

</head>

<body background="Images/meriImage.jpg">
	<div id="booking" class="section">
	<!-- <img src="Images/meriImage.jpg"> -->
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
						<div class="form-header">
							<h1>Reservation</h1>
						</div>
						<form action="RegDatabse" method="get">
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<span class="form-label">Name</span>
										<input class="form-control" name="name" type="text" placeholder="Enter your name" required>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<span class="form-label">Email</span>
										<input class="form-control" name ="email" type="email" placeholder="Enter your email" required>
									</div>
								</div>
							</div>
							<div class="form-group">
								<span class="form-label">Phone</span>
								<input class="form-control" type="tel" name="number" placeholder="Enter your phone number" required>
							</div>
							<div class="form-group">
								<span class="form-label">Location</span>
								<input class="form-control" type="text" name="location" placeholder="Enter ZIP/Location" required>
							</div>
							<div class="form-group">
								<span class="form-label">Cake preference</span>
								<input class="form-control" name="cake" type="text" placeholder="eg:-chocolate,fountains " required>
							</div>
							<div class="row">
								<div class="col-sm-5">
									<div class="form-group">
										<span class="form-label">Pick a Date</span>
										<input class="form-control" name="date" type="date" required>
									</div>
								</div>
								
							<div class="form-btn">
								<button class="submit-btn" onclick="ValidateEmail(this.form)">Book Now</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>