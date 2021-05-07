<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<jsp:include page="../common/head.jsp">
	<jsp:param value="title" name="inicio"/>
</jsp:include>
<body>
	<div>
		<%@ include file="../common/nav_bar2.jsp" %>
		<form action="/categorias/insertar" method="POST" class="px-2">
			<div class="container col-md-12">			
				<h3 style="text-align: center;">Registro de nuevo categoría</h3><br>			
				<div class="row">		    
				    <div class="form-group">
				        <label>Nombre: </label>
				        <input type="text" class="form-control" name="name">
				        <br>				        
					</div>
					<div class="form-group">
				        <label>Descripcion: </label>
				        <input type="text" class="form-control" name="description">
				        <br>				        
					</div>
      		      		
					<div class="container">
						<div class="row">
					    	<div class="btn-group" role="group" aria-label="Basic mixed styles example">
					        	<button type="submit" class="btn btn-success">Confirmar registro de categoría</button>
							</div>
						</div>
					</div>  
				</div> 	      	      	
			</div>	   
		</form>
		<br>
		<div class="container ">
			<div class="row">
				<table class="table-success">
					<thead class="thead-light">
						<tr class="table-secondary">
							<th scope="col">ID</th>
							<th scope="col">Nombre</th>
							<th scope="col">Descripcion</th>
							<th scope="col">Editar</th>
							<th scope="col">Eliminar</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var = "categoria" items="${categorias.content}">
						<tr class="table-secondary">
						<td scope="row"><c:out value="${categoria.id}"></c:out></td>
						<td><c:out value="${categoria.name}"></c:out></td>
						<td><c:out value="${categoria.description}"></c:out></td>
						<td><button type="button" class="btn btn-success" onclick="window.location='/categoria/editar/${categoria.id}'">Editar</button></td>
						<td><button type="button" class="btn btn-danger" onclick="window.location='/categoria/eliminar/${categoria.id}'">Eliminar</button></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>	
</body>
</html>

<body>
	
		
		
</body>
</html>