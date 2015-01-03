<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pl">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Jonasz Kitowski">

<title>Skontaktuj się - Darmowe Porady Prawne</title>

<link rel="shortcut icon" href="../resources/images/gt_favicon.png">

<link rel="stylesheet" media="screen"
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/font-awesome.min.css">

<!-- Custom styles for our template -->
<link rel="stylesheet" href="../resources/css/bootstrap-theme.css"
	media="screen">
<link rel="stylesheet" href="../resources/css/main.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top headroom">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="home"><img
					src="../resources/images/logo.png" alt="Progressus HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right">
					<li><a href="home">Strona Główna</a></li>
					<li><a href="about">O nas</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Wiecej Stron <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="advice">Porada</a></li>
							<li><a href="sidebar-right">Right Sidebar</a></li>
						</ul></li>
					<li class="active"><a href="contact">Kontakt</a></li>
					<sec:authorize access="!isAuthenticated()">
						<li><a class="btn" href="signin">Rejestracja / Logowanie</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<li style="color: white;">
							<button class="btn btn-disabled">
								Witaj
								<sec:authentication property="principal.username" />
								!
							</button>
						</li>
						<li><a class="btn btn-action" style="color: white"
							href="<c:url value="/j_spring_security_logout" />">Wyloguj</a></li>
					</sec:authorize>

					<li><sec:authorize access="hasRole('ROLE_ADMIN')">
							<a class="btn btn-action" style="color: white"
								href="<c:url value="/admin/" />">Panel Administracyjny</a>
						</sec:authorize></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

	<header id="head" class="secondary"></header>

	<!-- container -->
	<div class="container">

		<ol class="breadcrumb">
			<li><a href="home">Strona Główna</a></li>
			<li class="active">O nas</li>
		</ol>

		<div class="row">

			<!-- Article main content -->
			<article class="col-sm-9 maincontent"> <header
				class="page-header">
			<h1 class="page-title">Skontaktuj się</h1>
			</header>

			<p>W czym możemy pomóc?. Jeżeli jesteś zainteresowany otrzymaniem
				wyceny porady prawnej prosimy o kontakt telefoniczny lub pocztą
				elektroniczną:</p>
			<br>
			<form action="contact" method="POST">
				<div class="row">
					<div class="col-sm-4">
						<input class="form-control" required="required" type="text"
							placeholder="Name" name="Name">
					</div>
					<div class="col-sm-4">
						<input class="form-control" required="required" type="email"
							placeholder="Email" name="Email">
					</div>
					<div class="col-sm-4">
						<input class="form-control" required="required" type="text"
							placeholder="Phone" name="Phone">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-sm-12">
						<textarea placeholder="Type your message here..."
							required="required" name="Text" class="form-control" rows="9"></textarea>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-sm-6">
						<label class="checkbox"><input type="checkbox">
							Bądź na bierząco</label>
					</div>
					<div class="col-sm-6 text-right">
						<input class="btn btn-action" type="submit"
							value="Wyślij wiadomość">
					</div>
				</div>
			</form>

			</article>
			<!-- /Article -->

			<!-- Sidebar -->
			<aside class="col-sm-3 sidebar sidebar-right">

			<div class="widget">
				<h4>Address</h4>
				<address>Jana Pawla II, Gliwice, 44-100</address>
				<h4>Phone:</h4>
				<address>605 052 247</address>
			</div>

			</aside>
			<!-- /Sidebar -->

		</div>
	</div>
	<!-- /container -->

	<section class="container-full top-space">
	<div id="map"></div>
	</section>

	<footer id="footer">

	<div class="footer1">
		<div class="container">
			<div class="row">

				<div class="col-md-3 widget">
					<h3 class="widget-title">Kontakt</h3>
					<div class="widget-body">
						<p>
							+48 605052247<br> <a href="mailto:#">paykitson@gmail.com</a><br>
							<br> Jana Pawla II, Gliwice, 44-100
						</p>
					</div>
				</div>

				<div class="col-md-3 widget">
					<h3 class="widget-title">Dołącz do nas</h3>
					<div class="widget-body">
						<p class="follow-me-icons clearfix">
							<a href=""><i class="fa fa-twitter fa-2"></i></a> <a href=""><i
								class="fa fa-dribbble fa-2"></i></a> <a href=""><i
								class="fa fa-github fa-2"></i></a> <a href=""><i
								class="fa fa-facebook fa-2"></i></a>
						</p>
					</div>
				</div>

				<div class="col-md-6 widget">
					<h3 class="widget-title">Text widget</h3>
					<div class="widget-body">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Excepturi, dolores, quibusdam architecto voluptatem amet fugiat
							nesciunt placeat provident cumque accusamus itaque voluptate modi
							quidem dolore optio velit hic iusto vero praesentium repellat
							commodi ad id expedita cupiditate repellendus possimus unde?</p>
						<p>Eius consequatur nihil quibusdam! Laborum, rerum, quis,
							inventore ipsa autem repellat provident assumenda labore soluta
							minima alias temporibus facere distinctio quas adipisci nam sunt
							explicabo officia tenetur at ea quos doloribus dolorum voluptate
							reprehenderit architecto sint libero illo et hic.</p>
					</div>
				</div>

			</div>
			<!-- /row of widgets -->
		</div>
	</div>

	<div class="footer2">
		<div class="container">
			<div class="row">

				<div class="col-md-6 widget">
					<div class="widget-body">
						<p class="simplenav">
							<a href="#">Strona Główna</a> | <a href="about">O nas</a> | <a
								href="sidebar-right">Sidebar</a> | <a href="contact">Kontakt</a>
							| <b><a href="signup">Rejestracja</a></b>
						</p>
					</div>
				</div>

				<div class="col-md-6 widget">
					<div class="widget-body">
						<p class="text-right">
							Copyright &copy; 2014, iRadca. Designed by Jonasz Kitowski</a>
						</p>
					</div>
				</div>

			</div>
			<!-- /row of widgets -->
		</div>
	</div>
	</footer>





	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="../resources/js/headroom.min.js"></script>
	<script src="../resources/js/jQuery.headroom.min.js"></script>
	<script src="../resources/js/template.js"></script>

	<!-- Google Maps -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=&amp;sensor=false&amp;extension=.js"></script>
	<script src="../resources/js/google-map.js"></script>


</body>
</html>