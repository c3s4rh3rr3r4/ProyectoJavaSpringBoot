<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  

<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inventario PhotoStudio</title>
 <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div class="container">
  <spring:url value="/inventario/saveInventario" var="saveURL" />
  <h2>Inventario</h2>
  <form:form modelAttribute="inventarioForm" method="post" action="${saveURL }" cssClass="form" >
   <form:hidden path="id"/>
   <div class="form-group">
    <label>Producto</label>
    <form:input path="producto" cssClass="form-control" id="producto" />
   </div>
    <div class="form-group">
    <label>Tipo</label>
    <form:input path="tipo" cssClass="form-control" id="tipo" />
   </div>
   <div class="form-group">
    <label>Detalle</label>
    <form:input path="detalle" cssClass="form-control" id="detalle" />
   </div>
    <div class="form-group">
    <label>Cantidad</label>
    <form:input path="cantidad" cssClass="form-control" id="cantidad" />
   </div>
   <button type="submit" class="btn btn-primary">Save</button>
  </form:form>
  </div>
</body>
</html>