<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login Page</title>
<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

#login-box {
	width: 300px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}
</style>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/icomoon-social.css">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800'
	rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="resources/css/leaflet.css" />
		<!--[if lte IE 8]>
		    <link rel="stylesheet" href="resources/css/leaflet.ie.css" />
		<![endif]-->
		<link rel="stylesheet" href="resources/css/main.css">

        <script src="resources/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<body onload='document.loginForm.username.focus();'>

	<h1>Spring Security Custom Login Form (XML)</h1>


		<h3>Login with Username and Password</h3>

		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Login</h1>
					</div>
				</div>
			</div>
		</div>
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-5">
						<div class="basic-login">
							<form name='loginForm' role="form"
								action="<c:url value='j_spring_security_check' />" method='POST'>

								<div class="form-group">
									<label for="login-username"><i class="icon-user"></i> <b>Username
											or Email</b></label> <input class="form-control" name="username"
										type="text" placeholder="">
								</div>
								<div class="form-group">
									<label for="login-password"><i class="icon-lock"></i> <b>Password</b></label>
									<input class="form-control" name="password" type="password"
										placeholder="">
								</div>
								<div class="form-group">
									<label class="checkbox"> <input type="checkbox">
										Remember me
									</label> <a href="page-password-reset.html" class="forgot-password">Forgot
										password?</a>
									<button type="submit" class="btn pull-right">Login</button>
									<div class="clearfix"></div>
								</div>
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
							</form>
						</div>
					</div>
					<div class="col-sm-7 social-login">
						<p>Or login with your Facebook or Twitter</p>
						<div class="social-login-buttons">
							<a href="connect/facebook" class="btn-facebook-login">Login with Facebook</a> <a
								href="connect/twitter" class="btn-twitter-login">Login with Twitter</a>
						</div>
						<div class="clearfix"></div>
						<div class="not-member">
							<p>
								Not a member? <a href="page-register.html">Register here</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>


</body>
</html>