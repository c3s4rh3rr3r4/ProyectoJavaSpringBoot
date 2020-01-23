<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Regístrate</title>
<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body style="background-color: #ededed;">
	<div style="background-color: #000000; height: 50px;"></div>
	<div class="container-fluid" style="margin-top: 30px;">

		<div class="row col-lg-4 col-lg-offset-4" style="margin-top: 40px; background-color: #fff; padding: 20px; border: solid 1px #ddd;">
			<form autocomplete="off" action="#" th:action="@{/register}" th:object="${user}" method="post" class="form-signin" role="form">
				<h3 class="form-signin-heading">Formulario de registro</h3>
				<div class="form-group">
					<div class="">
						<input type="text" th:field="*{nombre}" placeholder="Nombre" class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<div class="">
						<input type="text" th:field="*{Apellido}" placeholder="Apellido" class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<div class="">
						<input type="text" th:field="*{correo}" placeholder="Correo" class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<div class="">
						<input type="password" th:field="*{password}" placeholder="Password" class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<div class="">
						<button type="submit" class="btn btn-primary btn-block">Registrar usuario</button>
					</div>
				</div>
				<span th:utext="${successMessage}"></span>
			</form>
		</div>
	</div>
</body>
</html>