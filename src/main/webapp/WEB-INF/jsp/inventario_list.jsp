<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inventario PhotoStudio</title>
<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Inventario</h2>
		<table class="table table-striped">
			<thead>
				<th scope="row">#ID</th>
				<th scope="row">Producto</th>
				<th scope="row">Tipo</th>
				<th scope="row">Detalle</th>
				<th scope="row">Cantidad</th>
				<th scope="row">Mínimo</th>
				<th scope="row">Requerido</th>
				<th scope="row">Editar</th>
				<th scope="row">Eliminar</th>
			</thead>
			<tbody>
				<c:forEach items="${inventarioList }" var="inventario">
					<tr>
						<td>${inventario.id }</td>
						<td>${inventario.producto }</td>
						<td>${inventario.tipo }</td>
						<td>${inventario.detalle }</td>
						<td>${inventario.cantidad }</td>
						<td>${inventario.minimo}</td>
						<td>${inventario.requerido }</td>
						<td><spring:url
								value="/inventario/updateInventario/${inventario.id }"
								var="updateURL" /> <a class="btn btn-primary"
							href="${updateURL }" role="button">Editar</a></td>
						<td><spring:url
								value="/inventario/deleteInventario/${inventario.id }"
								var="deleteURL" /> <a class="btn btn-primary"
							href="${deleteURL }" role="button">Eliminar</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<spring:url value="/inventario/addInventario/" var="addURL" />
		<a class="btn btn-primary" href="${addURL }" role="button">Agregar
			a inventario</a>
	</div>

</body>
</html>
<%
   Date dNow = new Date();
   SimpleDateFormat ft = 
   new SimpleDateFormat ("MM/dd/yyyy");
   String currentDate = ft.format(dNow);
%>

<p>The current date is: <%=currentDate%></p>