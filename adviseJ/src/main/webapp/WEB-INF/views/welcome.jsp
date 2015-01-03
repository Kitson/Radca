<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>iRadca - Porady prawne</title>

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

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

	<!-- Navigation -->
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-main-collapse">
				<i class="fa fa-bars"></i>
			</button>
			<a class="navbar-brand page-scroll" href="#page-top"> <i
				class="fa fa-play-circle"></i> <span class="light">iRadca</span>
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div
			class="collapse navbar-collapse navbar-right navbar-main-collapse">
			<ul class="nav navbar-nav">
				<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
				<li class="hidden"><a href="#page-top"></a></li>
				<li><a class="page-scroll" href="#about">O nas</a></li>
				<li><a class="page-scroll" href="#download">Porady Prawne</a></li>
				<li><a class="page-scroll" href="#contact">Wejście</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>

	<!-- Intro Header -->
	<header class="intro">
	<div class="intro-body">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<h1 class="brand-heading">iRadca</h1>
					<p class="intro-text">Porady prawne.</p>
					<a href="#about" class="btn btn-circle page-scroll"> <i
						class="fa fa-angle-double-down animated"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
	</header>

	<!-- About Section -->
	<section id="about" class="container content-section text-center">
	<div class="row">
		<div class="col-lg-8 col-lg-offset-2">
			<h2>O Nas</h2>
			<p>Znajdziesz tutaj bezpłatne porady prawne.</p>
			<p>Aby móc otrzymać wycenę oraz brać udział w dyskusjach, musisz
				się zarejestrować. Rejestracja na portalu jest darmowa.</p>
		</div>
	</div>
	</section>

	<!-- Download Section -->
	<section id="download" class="content-section text-center">
	<div class="download-section">
		<div class="container">
			<div class="col-lg-8 col-lg-offset-2">
				<h2>Otrzymaj Wycene</h2>
				<p>Wycena porad prawnych wszystkich typów. Koszt wykonania operatu szacunkowego
					ustalany jest indywidualnie i zależy od: rodzaju usługi oraz
					celu wyceny. Termin wykonania usługi – ok 5 dni roboczych</p>
				<a href="advise" class="btn btn-default btn-lg">Otrzymaj wycene</a>
			</div>
		</div>
	</div>
	</section>

	<!-- Contact Section -->
	<section id="contact" class="container content-section text-center">
	<div class="row">
		<div class="col-lg-8 col-lg-offset-2">
			<h2>Kontakt</h2>
			<p>Jesli chcesz wiedzieć więcej o którymś z naszych produktów, proszę napisz na podany adres email lub skorzystaj z formularza.</p>
			<p>feedback@iradca.com</p>
			<a href="main/home"><img id="judge" alt="Porada prawna"
				src="resources/images/judge.png" width="126" height="126"></a>
			<p>
				<a href="mailto:paykitson@gmail.com">paykitson@gmail.com</a>
			</p>
			<ul class="list-inline banner-social-buttons">
				<li><a href="https://twitter.com/SBootstrap"
					class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i>
						<span class="network-name">Twitter</span></a></li>
				<li><a href="https://github.com/IronSummitMedia/startbootstrap"
					class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i>
						<span class="network-name">Github</span></a></li>
				<li><a href="https://plus.google.com/+Startbootstrap/posts"
					class="btn btn-default btn-lg"><i
						class="fa fa-google-plus fa-fw"></i> <span class="network-name">Google+</span></a>
				</li>
			</ul>
		</div>
	</div>
	</section>

	<footer>
	<div class="container text-center">
		<p>Copyright &copy; iradca.com 2014</p>
		<div class="fb-like"
			data-href="https://developers.facebook.com/docs/plugins/"
			data-layout="button_count" data-action="like" data-show-faces="true"
			data-share="true"></div>
	</div>
	</footer>

	<!-- jQuery Version 1.11.0 -->
	<script src="resources/js/jquery-1.10.2.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="resources/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="resources/js/jquery.easing.min.js"></script>

	<!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

	<!-- Custom Theme JavaScript -->
	<script src="resources/js/grayscale.js"></script>
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//wp.pl";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>

</body>

</html>