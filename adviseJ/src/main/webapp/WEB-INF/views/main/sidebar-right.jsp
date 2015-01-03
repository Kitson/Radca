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

<title>Right Sidebar template - Darmowe Porady Prawne</title>

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
	<script src="../resources/js/html5shiv.js"></script>
	<script src="../resources/js/respond.min.js"></script>
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
							<li><a href="sidebar-left">Porada</a></li>
							<li class="active"><a href="sidebar-right">Right Sidebar</a></li>
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

	<header id="head" class="secondary"></header>

	<!-- container -->
	<div class="container">

		<ol class="breadcrumb">
			<li><a href="home">Strona Główna</a></li>
			<li class="active">Right Sidebar</li>
		</ol>

		<div class="row">

			<!-- Article main content -->
			<article class="col-md-8 maincontent"> <header
				class="page-header">
			<h1 class="page-title">Lorem ipsum dolor sit amet, consectetur.</h1>
			</header>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
				Laudantium, itaque, cumque, maxime obcaecati reprehenderit ea
				dignissimos amet voluptatem id excepturi facilis totam veritatis
				maiores eveniet neque explicabo temporibus quisquam in ex ab fugiat
				ipsa tempore sunt corporis nostrum quam illum!</p>
			<p>Consectetur cupiditate labore repudiandae beatae nisi fugiat
				facilis natus illum vitae doloremque. In, perspiciatis, natus,
				impedit voluptas itaque odio repudiandae placeat nisi totam
				repellendus earum dolores mollitia tempore quasi beatae alias cum
				dicta maxime laborum corporis harum porro magnam laboriosam.</p>
			<p>Aut, eaque, minus atque alias odio mollitia cum nisi ipsa
				nulla natus quae minima similique ipsam aspernatur molestias animi
				in deleniti nam. Tempora, labore, modi eum perspiciatis doloremque
				sequi nam illo corporis iusto maiores nisi recusandae repellat animi
				reiciendis accusamus.</p>

			<h2>A, quibusdam, nobis, eveniet consequatur</h2>
			<p>A, quibusdam, nobis, eveniet consequatur alias doloremque
				officia blanditiis fuga et numquam labore reiciendis voluptas quis
				repellat quos sunt non dolore consectetur at sit nam tenetur
				dolorem? Harum, quas, sit perspiciatis esse odit temporibus aperiam
				nulla aspernatur sequi fugiat tempore?</p>
			<p>Ad velit consequuntur quo qui odit quam sapiente repudiandae
				et ea pariatur? Ex sapiente beatae nobis consectetur ea. Deleniti,
				beatae, magnam, dolorum, fuga nostrum quas laboriosam sapiente
				temporibus enim voluptates ullam impedit atque quae provident quos
				mollitia aperiam perferendis amet.</p>

			<blockquote>Numquam, ut iure quia facere totam quas odit
				illo incidunt. Voluptatem, nostrum, ex, quasi incidunt similique cum
				maxime expedita unde labore inventore excepturi veniam corporis
				sequi facere ullam voluptates amet illum quam fuga voluptatibus
				ipsum atque sunt eos. Ut, necessitatibus.</blockquote>
			<p>Odit, laudantium, dolores, natus distinctio labore voluptates
				in inventore quasi qui nobis quis adipisci fugit id! Aliquam alias
				ea modi. Porro, odio, sed veniam hic numquam qui ad molestiae sint
				placeat expedita? Perferendis, enim qui numquam sequi obcaecati
				molestiae fugiat!</p>
			<p>Aperiam, odit, quasi, voluptate fugiat quisquam velit magni
				provident corporis animi facilis illo eveniet eum obcaecati adipisci
				blanditiis quas labore doloribus eos veniam repudiandae suscipit
				tempora ad harum odio eius distinctio hic deleniti. Sunt fuga ad
				perspiciatis repellat deleniti omnis!</p>

			<h3>Numquam, ut iure quia facere totam quas odit illo incidunt</h3>
			<p>Est, maiores, fuga sed nemo qui veritatis ducimus placeat odit
				quisquam dolorum. Rem, sunt, praesentium veniam maiores quia
				molestias eos fugit eaque ducimus veritatis provident assumenda.
				Quia, fuga, voluptates voluptatibus quis enim nam asperiores aliquam
				dignissimos ullam recusandae debitis iste.</p>
			<p>Dignissimos, beatae, praesentium illum eos autem perspiciatis?
				Minus, non, tempore, illo, mollitia exercitationem tempora quas
				harum odio dolores delectus quidem laudantium adipisci ducimus ullam
				placeat eaque minima quae iure itaque corporis magni nesciunt eius
				sed dolor doloremque id quasi nisi.</p>
			</article>
			<!-- /Article -->

			<!-- Sidebar -->
			<aside class="col-md-4 sidebar sidebar-right">

			<div class="row widget">
				<div class="col-xs-12">
					<h4>Lorem ipsum dolor sit</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Facere, ratione delectus reiciendis nulla nisi pariatur molestias
						animi eos repellat? Vel.</p>
				</div>
			</div>
			<div class="row widget">
				<div class="col-xs-12">
					<h4>Lorem ipsum dolor sit</h4>
					<p>
						<img src="../resources/images/1.jpg" alt="">
					</p>
				</div>
			</div>
			<div class="row widget">
				<div class="col-xs-12">
					<h4>Lorem ipsum dolor sit</h4>
					<p>
						<img src="../resources/images/2.jpg" alt="">
					</p>
					<p>Qui, debitis, ad, neque reprehenderit laborum soluta dolor
						voluptate eligendi enim consequuntur eveniet recusandae rerum?
						Atque eos corporis provident tenetur.</p>
				</div>
			</div>

			</aside>
			<!-- /Sidebar -->

		</div>
	</div>
	<!-- /container -->


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
					<h3 class="widget-title">Follow me</h3>
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
							| <b><a href="signup">Sign up</a></b>
						</p>
					</div>
				</div>

				<div class="col-md-6 widget">
					<div class="widget-body">
						<p class="text-right">
							Copyright &copy; 2014, Your name. Designed by <a
								href="http://gettemplate.com/" rel="designer">gettemplate</a>
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
	<script src="../resouces/js/headroom.min.js"></script>
	<script src="../resouces/js/jQuery.headroom.min.js"></script>
	<script src="../resouces/js/template.js"></script>
</body>
</html>