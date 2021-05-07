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
		<form action="/producto/admin/insertar" method="POST" class="px-2">
			<div class="container col-md-12">			
				<h3 style="text-align: center;">Registro de productos</h3><br>			
				<div class="row">		    
					    <div class="form-group">
				        <label>Nombre: </label>
				        <input type="text" class="form-control" name="name">
				        <br>				        
				      </div>
				      
		      
				      <div class="form-group">
				        <label>Descripción del producto: </label>
				        <input type="text" class="form-control" name="description">
				        <br>				       
				      </div> 				      
		  
				      <div class="form-group">
				        <label>Precio: </label>
				        <input type="number" class="form-control" name="price">	
				        <br>			        
				      </div>
				     
				      <div class="container">
				        <div class="row">
				            <div class="btn-group" role="group" aria-label="Basic mixed styles example">
				                <button type="submit" name="insertar" class="btn btn-success">Confirmar registro de producto</button>
				            </div>
				        </div>
				      </div> 
				       
				</div> 	      	      	
			</div>	   
		</form>
		<div class="container">
			<div class="row">
				<table class="table-success">
					<thead class="thead-light">
						<tr class="table-secondary">
							<th scope="col">ID</th>
							<th scope="col">Nombre</th>
							<th scope="col">Descripcion</th>
							<th scope="col">Precio</th>
							<th scope="col">Editar</th>
							<th scope="col">Eliminar</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var = "producto" items="${listaProductos}">
						<tr class="table-secondary">
						<td scope="row"><c:out value="${producto.id}"></c:out></td>
						<td><c:out value="${producto.name}"></c:out></td>
						<td><c:out value="${producto.description}"></c:out></td>
						<td><c:out value="${producto.price}"></c:out></td>
						<td><button type="button" class="btn btn-success" onclick="window.location='/producto/admin/editar/${producto.id}'">Editar</button></td>
						<td><button type="button" class="btn btn-danger" onclick="window.location='/producto/admin/eliminar/${producto.id}'">Eliminar</button></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>