<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Acceso clientes</title>
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
		          <a class="nav-link" aria-current="page" onclick="window.location='/cliente'"
		            ><font style="vertical-align: inherit"
		              ><font style="vertical-align: inherit"
		                >Registro Cliente</font
		              ></font
		            ></a
		          >
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" onclick="window.location='/in_cliente'">
		            <font style="vertical-align: inherit"
		              ><font style="vertical-align: inherit"
		                >Ingreso Cliente</font
		              ></font>
		          </a>
		        </li>	       
		      </ul>	      
		    </div>
		  </div>
		</nav>
		<form action="/in_cliente/acceder" method="POST" class="px-2">
			<div class="container col-md-12">
			<div style="color: red"><c:out value="${alert2}"></c:out></div> 	
				<h3 style="text-align: center;">Ingresa</h3><br>				
			    	<div class="row">			    		
			    
					      <div class="form-group">
					        <label>id </label>
					        <input type="number" class="form-control" name="id">
					        <br>
					      </div>
			      
					      <div class="form-group">
					        <label>password </label>
					        <input type="text" class="form-control" name="password">
					        <div style="color: red"><c:out value="${alert}"></c:out></div>
					        <br>
					      </div>			  
			  
			      
					      <div class="container">
					        <div class="row">
					            <div class="btn-group" role="group" aria-label="Basic mixed styles example">
					                <button type="submit" class="btn btn-success">Ingresar</button>
					            </div>
					        </div>
					      </div>  			      		  
					</div> 		      			      	
				</div>			
		</form>
	</div>
</body>
</html>