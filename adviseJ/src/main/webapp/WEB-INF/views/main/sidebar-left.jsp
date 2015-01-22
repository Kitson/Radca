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

<title>Porada - Darmowe Porady Prawne</title>

<link rel="shortcut icon" href="../resources/images/gt_favicon.png">

<link rel="stylesheet" media="screen"
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/font-awesome.min.css">
<link rel="stylesheet" media="screen"
	href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/fonts/glyphicons-halflings-regular.svg">
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
							<li class="active"><a href="advice">Porada</a></li>
							<li><a href="sidebar-right">Artykuły</a></li>
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
			<li class="active">Porada</li>
		</ol>

		<div class="row">

			<!-- Sidebar -->
			<aside class="col-md-4 sidebar sidebar-left">

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

			<!-- Article main content -->
			<article class="col-md-8 maincontent"> <header
				class="page-header"> <c:if test="${not empty success}">
				<div class="msg-log">${success}</div>
			</c:if> <c:if test="${not empty fail or failed == true}">
				<div class="error-log">
					<p>${fail}</p>
					<c:if test="${not empty errors}">
						<div class="error-log">
							<c:forEach items="${errors}" var="error">
								<p>
									<c:out value="${error}" />
								</p>
							</c:forEach>
						</div>
					</c:if>
				</div>
			</c:if>
			<h1 class="page-title">Wypełnij ponizszy formularz w celu
				uzyskania porady.</h1>
			</header>
			<form method="post" enctype="multipart/form-data" action="advice">
				<p>Tutaj opisz czego dotyczy problem.</p>
				<textarea name="message" id="message" class="form-control" rows="9"
					cols="25" required="required" placeholder="Wiadomość"></textarea>
				<p>Tutaj dodaj dokumenty ktore beda niezbędne do analizy.</p>

				<p>
					<span style="font-size: 10.0 em"
						class="glyphicon glyphicon-circle-arrow-down"></span>
				</p>
				<p>
					<span class="btn btn-default btn-file"> <input type="file"
						name="file" class="form-control" placeholder="pliki" multiple></input>
					</span>
				</p>
				<p>
					<span style="font-size: 10.0 em"
						class="glyphicon glyphicon-circle-arrow-down"></span>
				</p>
				<p>
					<button type="submit" class="btn btn-default">Zatwierdz</button>
				</p>
			</form>
			</article>
			<!-- /Article -->

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
							+234 23 9873237<br> <a href="mailto:#">some.email@somewhere.com</a><br>
							<br> 234 Hidden Pond Road, Ashland City, TN 37015
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
							<a href="#">Home</a> | <a href="about">O nas</a> | <a
								href="sidebar-right">Artykuły</a> | <a href="contact">Kontakt</a>
							| <b><a href="signup">Sign up</a></b>
						</p>
					</div>
				</div>

				<div class="col-md-6 widget">
					<div class="widget-body">
						<p class="text-right">Copyright &copy; 2014, Jonasz Kitowski.
							Designed by iRadca</p>
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