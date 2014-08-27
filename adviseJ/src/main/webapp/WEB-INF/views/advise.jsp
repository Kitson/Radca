<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Otrzymaj Poradę</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- Custom CSS -->
<link href="resources/css/grayscale.css" rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
</head>
<body>
	<section id="contact">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">Porada Prawna</h2>
				<h3 class="section-subheading text-muted">W danym formularzu zamieść potrzebne informacje</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<form method="POST" enctype="multipart/form-data" action="advise">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Your Name *" id="name" required
									data-validation-required-message="Please enter your name.">
								<p class="help-block text-danger"></p>
							</div>
							<div class="form-group">
								<input type="email" class="form-control"
									placeholder="Your Email *" id="email" required
									data-validation-required-message="Please enter your email address.">
								<p class="help-block text-danger"></p>
							</div>
							<div class="form-group">
								<input type="tel" class="form-control"
									placeholder="Your Phone *" id="phone" required
									data-validation-required-message="Please enter your phone number.">
								<p class="help-block text-danger"></p>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<textarea class="form-control" placeholder="Your Message *"
									id="message" required
									data-validation-required-message="Please enter a message."></textarea>
								<p class="help-block text-danger"></p>
							</div>
							<div class="form-group">
								<input class="form-control" type="file" name="file"><br />
							</div>
							<div class="form-group">
								Name: <input class="form-control" type="text" name="name"><br />
								<br />
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="col-lg-12 text-center">
							<div id="success"></div>
							<button type="submit" class="btn btn-xl" value="Upload">Wyslij
								Zapytanie</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	</section>
</body>
</html>