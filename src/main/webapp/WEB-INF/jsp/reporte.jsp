<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<h1>Se grabó el reporte satisfactoriamente</h1>
<spring:url value="/inventario/listar" var="pdf" />
		<a class="btn btn-primary" href="${pdf }" role="button">Aceptar</a>