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

<title>Regulamin - Darmowe Porady Prawne</title>

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
						data-toggle="dropdown">More Pages <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="advice">Porada</a></li>
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
			<sec:authorize access="isAuthenticated()">
				<h1>
					Witaj,
					<sec:authentication property="principal.username" />
				</h1>
				<a href="<c:url value="/j_spring_security_logout" />"> Logout</a>
			</sec:authorize>
		</div>
	</div>
	<!-- /.navbar -->

	<header id="head" class="secondary"></header>

	<!-- container -->
	<div class="container">

		<ol class="breadcrumb">
			<li><a href="home">Strona Główna</a></li>
			<li class="active">Regulamin</li>
		</ol>

		<div class="row">

			<!-- Article main content -->
			<article class="col-xs-12 maincontent"> <header
				class="page-header">
			<h1 class="page-title">Regulamin</h1>
			</header>
			<div class="panel panel-default">
				<h3>I. Postanowienia ogólne</h3>
				<p>§1. Niniejszy portal wraz ze wszystkimi powiązanymi z nim
					usługami udostępniony zostaje Użytkownikom przez spółkę … sp. z
					o.o. z siedzibą w Gliwicach przy ul. Akademickiej, zarejestrowaną w
					Krajowym Rejestrze Sądowym – rejestrze przedsiębiorców prowadzonym
					przez Sąd Rejonowy dla Gliwice, Wydział X Gospodarczy Krajowego
					Rejestru Sądowego pod numerem KRS xxxxxxxxxx, kapitał zakładowy 5
					000 zł , NIP xxx-xx-xx-xxx, zwaną dalej Usługodawcą.
				<p>§2. Niniejszy regulamin określa zasady funkcjonowania
					portalu, korzystania z niego, jak i tego prawne konsekwencje. Każda
					osoba korzystająca z portalu, zwana dalej Użytkownikiem, zostaje o
					tym pouczona bezpośrednio przed połączeniem z portalem. Każdy
					Użytkownik zobowiązany jest do zapoznania się z regulaminem, na
					którego postanowienia godzi się, łącząc się z portalem.
				<p>§3. W sprawach nieuregulowanych niniejszym regulaminem
					zastosowanie mają przepisy prawa polskiego, zaś wszelkie spory
					podlegają jurysdykcji sądów polskich.
				<h3>II. Zasady korzystania z portalu</h3>
				<p>§4. Wyznaczona przez Usługodawcę osoba, zwana dalej
					Administratorem może w ramach powierzonych jej kompetencji:
				<p>a) Weryfikować zamieszczone przez Użytkowników dane, a w
					razie stwierdzenia naruszenia postanowień niniejszego regulaminu
					lub/i prawa polskiego podejmować stosowne działania, aż po
					usunięcie konta użytkownika włącznie.</p>
				<p>b) Kontaktować się z Użytkownikami w celu pozyskania
					stosownych wyjaśnień lub przekazania informacji na temat
					skradzionego przedmiotu, jeśli osoba od której informacje te
					zostały pozyskane nie życzy sobie ujawnienia jej danych.</p>
				<p>c) Współpracować ze stosownymi służbami, zwłaszcza z Policją
					w celu ułatwienia przeprowadzanych procedur, jednak z zastrzeżeniem
					postanowień zawartych w §7.</p>
				<p>§5. Korzystając z portalu „skradzione.com” Użytkownik może w
					szczególności:</p>
				<p>a) Zapoznawać się z danymi udostępnionymi przez
					administratora portalu lub innych Użytkowników.</p>
				<p>b) Zamieszczać dane w ramach specyfikacji rzeczy skradzionej
					w następującym porządku:</p>
				<p>· miejsce dokonania kradzieży (województwo/miasto/ulica)</p>
				<p>· przedmiot kradzieży oraz jej opis lub/i zdjęcia</p>
				<p>· przybliżona data oraz czas dokonania kradzieży</p>
				<p>· dodatkowe dane dotyczące okoliczności zdarzenia lub mogące
					ułatwić poszukiwania</p>
				<p>c) Kierować zapytania do Administratora portalu oraz za
					pośrednictwem portalu przesyłać innym użytkownikom wiadomości
					dotyczące udostępnionych danych.</p>

				<h3>III. Polityka prywatności</h3>
				<p>§6. Podczas korzystania z serwisu na komputerze Użytkownika
					zapisywane są krótkie informacje tekstowe, zwane „cookies”. Jest to
					konieczne w celu poprawnego funkcjonowania procesu autoryzacji w
					serwisie.</p>
				<p>§7. Zgodnie z Ustawą o ochronie danych osobowych oraz Ustawą
					o świadczeniu usług drogą elektroniczną portal nie udostępnia
					osobom prywatnym danych Użytkowników. Zgodnie z powyższymi aktami
					prawnymi może to nastąpić tylko na wniosek organów państwa i tylko
					na potrzeby prowadzonych postępowań.</p>
				<p>§7.1. W razie udostępnienia danych osobowych Użytkownika
					według procedury określonej w §7 Użytkownik zostaje niezwłocznie o
					tym fakcie poinformowany. Ma on prawo złożyć protest w formie
					reklamacji, zgodnie z §11.</p>

				<h3>IV. Postępowanie z udostępnianymi w serwisie danymi</h3>
				<p>§8. Użytkownik udostępniający w serwisie dane oświadcza że
					dane te są prawdziwe.</p>
				<p>§9. Udostępniane w serwisie dane mogą być przetwarzane i
					udostępniane według procedur opisanych w §4 a) i c) oraz §7.</p>
				<p>§10. Usługodawca zastrzega sobie prawo do niewprowadzenia do
					serwisu lub usunięcia z niego danych, które uzna za nierzetelne,
					niezgodne z netykietą lub których udostępnianie według Ustawy o
					ochronie informacji niejawnych sprzeczne jest z prawem.</p>
				<p>§10.1. W razie zaistnienia okoliczności opisanych w §9 każdy
					Użytkownik mający w tym interes prawny lub faktyczny ma prawo
					złożyć protest w formie reklamacji, zgodnie z §11.</p>

				<h3>V. Postępowanie reklamacyjne</h3>
				<p>§11. Użytkownik wnosi reklamację za pośrednictwem serwisu.</p>
				<p>§11.1. Reklamacja Użytkownika rozpatrywana jest w terminie 7
					dni roboczych. W razie skomplikowanego charakteru okoliczności
					stanowiących przedmiot reklamacji lub uzależnienia kierunku w jakim
					zostanie rozpatrzona od decyzji organu państwa Usługodawca
					zastrzega sobie prawo do przedłużenia wskazanego wcześniej terminu.
					O fakcie tym niezwłocznie informuje Użytkownika.</p>

				<h3>VI. Własność intelektualna</h3>
				<p>§12. Portal „skradzione.com” oraz zawarte w nim materiały, a
					w szczególności utwory, bazy danych i znaki towarowe podlegają
					ochronie przewidzianej w przepisach prawa, zwłaszcza w ustawie o
					ochronie praw autorskich i pokrewnych, ustawie o ochronie baz
					danych, ustawie Prawo własności przemysłowej oraz ustawie o
					zwalczaniu nieuczciwej konkurencji.</p>
				<p>§13. Poprzez korzystanie z portalu Użytkownicy nie nabywają
					żadnych praw ani nie uzyskują licencji w stosunku do zawartych na
					nim treści.</p>

				<h3>VII. Odpowiedzialność Usługodawcy</h3>
				<p>§14. Usługodawca nie ponosi odpowiedzialności za:</p>
				<p>a) Sposób w jaki Użytkownicy wykorzystują pozyskane dane.</p>
				<p>b) Materiały zamieszczanie w portalu.</p>
				<p>c) Szkody wynikłe ze sprzecznego z prawem lub niniejszym
					regulaminem wykorzystania zawartych w portalu danych.</p>
				<p>d) Szkody spowodowane zagrożeniami sieci internet, w tym
					włamanie do systemu Użytkownika, zainfekowanie systemu Użytkownika
					wirusami lub przejęcie jego haseł przez osoby trzecie.</p>

				<h3>VIII. Płatność</h3>
				<p>§15. Korzystanie z usług wyszukiwania, przeglądania i
					komentowania zamieszczonych informacji dostępne jest nieodpłatnie.</p>
				<p>§16. Korzystanie z usługi zamieszczania tematu oraz
					otrzymywanie za pośrednictwem portalu informacji dotyczących
					skradzionego przedmiotu obciążone jest płatnością ściąganą poprzez
					wysyłaną przez Użytkownika wiadomość SMS na numer wskazany przez
					Usługodawcę (koszt 9zł + VAT) lub systemy płatności Paypal, dotpay,
					przelew bankowy (koszt 6zł). Ogłoszenie publikowane będzie na
					portalu przez 30 dni od daty zapłaty.</p>
				<p>§17. W przypadku odnalezienia przedmiotu właścicielom portalu
					„skradzione.com” należy się prowizja w wysokości 5% ze znaleźnego
					przekazywanego na rzecz użytkownika, który udzielił informacji lub
					znalazł przedmiot. Użytkownicy nie mogą wymieniać się informacjami
					ani przeprowadzać żadnych transakcji poza portalem
					„skradzione.com”, w razie złamania powyższego punktu użytkownik
					wystawiający ogłoszenie zobowiązany jest do zapłacenia kary
					finansowej o wysokości 2-krotnej wartości przedmiotu ustalonej
					przez rzeczoznawcę, którego dotyczyło ogłoszenie.</p>

				<p>§18. Ściągana opłata nie gwarantuje znalezienia skradzionego
					przedmiotu. Usługodawca nie przewiduje zwrotu płatności w przypadku
					jeśli Użytkownik nie czuje się usatysfakcjonowany uzyskanymi
					informacjami lub ich brakiem.</p>

				<h3>IX. Postanowienia końcowe</h3>
				<p>§19. Usługodawca zastrzega sobie prawo zmiany niniejszego
					regulaminu.</p>
				<p>§19.1. Wszelkie zmiany wchodzą w życie z dniem ich publikacji
					na portalu.</p>
				<p>§19.2. Korzystając z portalu Użytkownik akceptuje wszelkie
					wprowadzone zmiany.</p>
				<p>§20. Usługodawca może w każdym czasie zakończyć świadczenie
					usług lub zmienić ich zakres.</p>

			</div>
		</div>

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