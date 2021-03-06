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
<meta name="author" content="Sergey Pozhilov (GetTemplate.com)">

<title>iRadca - Darmowe Porady Prawne</title>

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

<body class="home">
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
					<li class="active"><a href="#">Strona Główna</a></li>
					<li><a href="about">O nas</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Wiecej Stron <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="advice">Porada</a></li>
							<li class="active"><a href="sidebar-right">Artykuły</a></li>
						</ul></li>
					<li><a href="contact">Kontakt</a></li>
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

	<!-- Header -->
	<header id="head">
	<div class="container">
		<div class="row">
			<h1 class="lead">DARMOWE PORADY PRAWNE</h1>
			<p class="tagline">
				Darmowe porady prawne.<a href="signup">Zarejestruj</a> się juz dziś.
			</p>
			<p>
				<a class="btn btn-default btn-lg" href="about" role="button">WIĘCEJ
					INFORMACJI</a> <a class="btn btn-action btn-lg" href="advice"
					role="button">PORADŹ SIĘ TERAZ</a>
			</p>
		</div>
	</div>
	</header>
	<!-- /Header -->

	<!-- Intro -->
	<div class="container text-center">
		<br> <br>
		<h2 class="thin">Najlepsze miejsce aby powiedzieć uzytkownikom
			dlaczego tu są.</h2>
		<p class="text-muted">Doświadczenie w radctwie prawnym kancelaria
			„Master radca” posiada ponad 20-letnie doświadczenie w zakresie prawa
			karnego. Posiadamy zespół prawników o wieloletniej praktyce w tym
			zawodzie, znających wszystkie możliwe rozwiązania na napotkane
			ewentualnie trudności. Posiadamy bogatą bazę porad, a poprzez jej
			ciągłą aktualizację, wiedzę niezbędną do prowadzenia serwisu.</p>
		<p class="text-muted">Porady, które Państwu proponujemy, są
			redagowane przez naszych Prawników z kilkuletnim doświadczeniem.</p>
	</div>
	<!-- /Intro-->

	<!-- Highlights - jumbotron -->
	<div class="jumbotron top-space">
		<div class="container">

			<h3 class="text-center thin">Dlaczego warto skorzystać z naszych usług</h3>

			<div class="row">
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption">
						<h4>
							<i class="fa fa-cogs fa-5"></i>Bootstrap-powered
						</h4>
					</div>
					<div class="h-body text-center">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Atque aliquid adipisci aspernatur. Soluta quisquam dignissimos
							earum quasi voluptate. Amet, dignissimos, tenetur vitae dolor
							quam iusto assumenda hic reprehenderit?</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption">
						<h4>
							<i class="fa fa-flash fa-5"></i>Fat-free
						</h4>
					</div>
					<div class="h-body text-center">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Asperiores, commodi, sequi quis ad fugit omnis cumque a libero
							error nesciunt molestiae repellat quos perferendis numquam
							quibusdam rerum repellendus laboriosam reprehenderit!</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption">
						<h4>
							<i class="fa fa-heart fa-5"></i>Creative Commons
						</h4>
					</div>
					<div class="h-body text-center">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Voluptatem, vitae, perferendis, perspiciatis nobis voluptate quod
							illum soluta minima ipsam ratione quia numquam eveniet eum
							reprehenderit dolorem dicta nesciunt corporis?</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption">
						<h4>
							<i class="fa fa-smile-o fa-5"></i>Author's support
						</h4>
					</div>
					<div class="h-body text-center">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Alias, excepturi, maiores, dolorem quasi reprehenderit illo
							accusamus nulla minima repudiandae quas ducimus reiciendis odio
							sequi atque temporibus facere corporis eos expedita?</p>
					</div>
				</div>
			</div>
			<!-- /row  -->

		</div>
	</div>
	<!-- /Highlights -->

	<!-- container -->
	<div class="container">

		<h2 class="text-center top-space">Najczęściej zadawane pytania</h2>
		<br>

		<div class="row">
			<div class="col-sm-6">
				<h3>Czy firma zapewnia kompleksowe usługi?</h3>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Atque aliquid adipisci aspernatur. Soluta quisquam dignissimos
							earum quasi voluptate. Amet, dignissimos, tenetur vitae dolor
							quam iusto assumenda hic reprehenderit?
				</p>
			</div>
			<div class="col-sm-6">
				<h3>Jak dodać zapytanie o poradę?</h3>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Atque aliquid adipisci aspernatur. Soluta quisquam dignissimos
							earum quasi voluptate. Amet, dignissimos, tenetur vitae dolor
							quam iusto assumenda hic reprehenderit?
				</p>
			</div>
		</div>
		<!-- /row -->

		<div class="row">
			<div class="col-sm-6">
				<h3>Kto tworzy dokumenty prawne odpowiadające na zapytanie klienta?</h3>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Atque aliquid adipisci aspernatur. Soluta quisquam dignissimos
							earum quasi voluptate. Amet, dignissimos, tenetur vitae dolor
							quam iusto assumenda hic reprehenderit?
				</p>
			</div>
			<div class="col-sm-6">
				<h3>W jaki sposób dokonać opłaty za usługę?</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Atque aliquid adipisci aspernatur. Soluta quisquam dignissimos
							earum quasi voluptate. Amet, dignissimos, tenetur vitae dolor
							quam iusto assumenda hic reprehenderit?</p>
			</div>
		</div>
		<!-- /row -->

		<div class="jumbotron top-space">
			<h4>Dicta, nostrum nemo soluta sapiente sit dolor quae voluptas
				quidem doloribus recusandae facere magni ullam suscipit sunt atque
				rerum eaque iusto facilis esse nam veniam incidunt officia
				perspiciatis at voluptatibus. Libero, aliquid illum possimus numquam
				fuga.</h4>
			<p class="text-right">
				<a class="btn btn-primary btn-large">Więcej informacji »</a>
			</p>
		</div>

	</div>
	<!-- /container -->

	<!-- Social links. @TODO: replace by link/instructions in template -->
	<section id="social">
	<div class="container">
		<div class="wrapper clearfix">
			<!-- AddThis Button BEGIN -->
			<div class="addthis_toolbox addthis_default_style">
				<a class="addthis_button_facebook_like"
					fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a>
				<a class="addthis_button_linkedin_counter"></a> <a
					class="addthis_button_google_plusone" g:plusone:size="medium"></a>
			</div>
			<!-- AddThis Button END -->
		</div>
	</div>
	</section>
	<!-- /social links -->


	<footer id="footer" class="top-space">

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
						<p class="follow-me-icons">
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
								href="sidebar-right">Artykuły</a> | <a href="contact">Kontakt</a>
							| <b><a href="signup">Rejestracja</a></b>
						</p>
					</div>
				</div>

				<div class="col-md-6 widget">
					<div class="widget-body">
						<p class="text-right">
							Copyright &copy; 2014, Jonasz Kitowski. Designed by iRadca
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
</body>
</html>