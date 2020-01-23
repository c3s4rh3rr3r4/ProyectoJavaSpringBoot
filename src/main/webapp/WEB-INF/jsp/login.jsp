<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accede a tu cuenta</title>
<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body style="background-color:#fdedfd;">
	<div style="background-color:#000000;height:50px;"></div>
	<div class="container-fluid">
		<div class="row col-lg-4 col-lg-offset-4" style="margin-top: 80px;background-color:#fff;padding:20px;border:solid 1px #ddd;">
			<!-- <img th:src="@{/images/login.jpg}" class="img-responsive center-block" width="300" height="300" alt="Logo" /> -->
			<form th:action="@{/login}" method="POST" class="form-signin">
				<h3 class="form-signin-heading" th:text="Login">Login</h3>
				<br /> <input type="text" id="correo" name="correo" placeholder="Correo registrado" class="form-control" /> <br /> 
				<input type="password" placeholder="Contraseña" id="password" name="password" class="form-control" /> <br />

				<div align="center" th:if="${param.error}">
					<p style="font-size: 20; color: #FF1C19;">Correo o Password es incorrecto.</p>
				</div>
				<button class="btn btn-lg btn-primary" name="Submit" value="Login" type="Submit" th:text="Login" style="margin-right:10px;">Ingresar</button>
				<a href="/recover-password">Olvidó el password?</a>
			</form>
		</div>
	</div>
</body>
</html>