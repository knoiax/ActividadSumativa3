<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Productos</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" 
rel="stylesheet" 
integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" 
crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" 
crossorigin="anonymous"></script>
</head>
<body>
<div>
	<nav
		  class="navbar navbar-expand-sm navbar-dark bg-dark"
		  aria-label="Ejemplo de la tercera barra de navegación"
		>
		  <div class="container-fluid">
		    <a class="navbar-brand" onclick="window.location='/'"
		      ><font style="vertical-align: inherit"
		        ><font style="vertical-align: inherit"
		          >Home</font></font
		    ></a>
		    <button
		      class="navbar-toggler"
		      type="button"
		      data-bs-toggle="collapse"
		      data-bs-target="#navbarsExample03"
		      aria-controls="navbarsExample03"
		      aria-expanded="false"
		      aria-label="Navegación de palanca"
		    >
		      <span class="navbar-toggler-icon"></span>
		    </button>
		
		    <div class="collapse navbar-collapse" id="navbarsExample03">
		      <ul class="navbar-nav me-auto mb-2 mb-sm-0 mb-md-0">
		        <li class="nav-item">
		          <a class="nav-link" aria-current="page" onclick="window.location='/cliente2'"
		            ><font style="vertical-align: inherit"
		              ><font style="vertical-align: inherit"
		                >Nuevo Cliente</font
		              ></font
		            ></a
		          >
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" onclick="window.location='/producto/admin'"
		            ><font style="vertical-align: inherit"
		              ><font style="vertical-align: inherit"
		                >Nuevo Producto</font
		              ></font
		            ></a
		          >
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" onclick="window.location='/categoria'"
		            ><font style="vertical-align: inherit"
		              ><font style="vertical-align: inherit"
		                >Nueva Categoria</font
		              ></font
		            ></a
		          >
		        </li>		      
		      </ul>		      
		    </div>
		  </div>
		</nav>
		<h1 class="display-6">Se realizo busqueda durante horas para implementar bootstrap a este formulario pero me resulto imposible dar con una solución factible</h1>
		<h2>Editar Categoria</h2>
		<form:form action="/categoria/update" method="post" modelAttribute="categoria">
			<form:hidden path="id"/>
			<form:label path="nombre">Nombre de Categoria: </form:label>
			<form:input path="nombre" />
			<br>			
			<Button class="btn btn-primary" type="submit">Modificar</Button>
		</form:form>
		<br>
	</div>
</body>
</html>