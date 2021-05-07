<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<jsp:include page="../common/head.jsp">
	<jsp:param value="title" name="inicio"/>
</jsp:include>
<body>
	<div>
		<%@ include file="../common/nav_bar2.jsp" %>
		<br>
		<c:forEach var = "categoria" items="${categorias.content}">
		<div class="container text-center">
		  <div class="row row-cols-2 row-cols-lg-3 g-2 g-lg-2">
		    <div class="col-5">
		      	<div class="card" style="width: 10rem;">
				 	<img src="..." class="card-img-top" alt="carga dinamica de imagenes en desarrollo">
					<div class="card-body">
						<h5 class="card-title"><c:out value="${categoria.name}"></c:out></h5>
						<p class="card-text"><c:out value="${categoria.description}"></c:out></p>
						<a href="/productos/categorias/${categoria.id}" class="btn btn-primary">Ver productos</a>
					</div>
				</div>
		    </div>
		  </div>
		</div>
		</c:forEach>	
		
		
		<br>		
		<c:forEach begin="1" end="${totalPagina}" var="index">
			<nav aria-label="Paginador categorias">
			  <ul class="pagination justify-content-center">
			    <li class="page-item">
			      <c:if test="${index-3}>=0"><a class="page-link" href="/productos/categorias/${index-3}" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a></c:if>
			    </li>
			    <c:if test="${index-1}>=0"><li class="page-item"><a class="page-link" href="/productos/categorias/${index-1}">${index-1}</a></li></c:if>
			    <li class="page-item"><a class="page-link" href="/productos/categorias/${index}">${index}</a></li>
			    <c:if test="${index+1}<=${totalPagina}"><li class="page-item"><a class="page-link" href="/productos/categorias/${index+1}">${index+1}</a></li></c:if>
			    <li class="page-item">
			      <c:if test="${index+3}<=${totalPagina}"><a class="page-link" href="/productos/categorias/${index+3}" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a></c:if>
			    </li>
			  </ul>
			</nav>
		</c:forEach>
		
		<div class="container">
			<div class="row">
				<table class="table-success">
					<thead class="thead-light">
						<tr class="table-secondary">
							<th scope="col">ID</th>
							<th scope="col">Nombre</th>
							<th scope="col">Descripcion</th>
							<th scope="col">Precio</th>
							<th scope="col">Añadir</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var = "producto" items="${productos.content}">
						<tr class="table-secondary">
						<td scope="row"><c:out value="${producto.id}"></c:out></td>
						<td><c:out value="${producto.name}"></c:out></td>
						<td><c:out value="${producto.description}"></c:out></td>
						<td><c:out value="${producto.price}"></c:out></td>						
						<td><button type="button" class="btn btn-success" onclick="window.location='/venta/añadir/${producto.id}'">Al Carrito</button></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<table class="table-success">
					<thead class="thead-light">
						<tr class="table-secondary">
							<th scope="col">Nombre</th>
							<th scope="col">Precio</th>
							<th scope="col">Editar</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var = "producto" items="${listaSeleccion}">
						<tr class="table-secondary">
						<td scope="row"><c:out value="${producto.id}"></c:out></td>
						<td><c:out value="${producto.name}"></c:out></td>
						<td><c:out value="${producto.description}"></c:out></td>
						<td><c:out value="${producto.price}"></c:out></td>						
						<td><button type="button" class="btn btn-success" onclick="window.location='/venta/editar/${producto.id}'">Editar</button></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<c:forEach begin="1" end="${totalPagina2}" var="index">
			<nav aria-label="Paginador categorias">
			  <ul class="pagination justify-content-center">
			    <li class="page-item">
			      <c:if test="${index-3}>=0"><a class="page-link" href="/productos/categorias/${index-3}" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a></c:if>
			    </li>
			    <c:if test="${index-1}>=0"><li class="page-item"><a class="page-link" href="/productos/categorias/${index-1}">${index-1}</a></li></c:if>
			    <li class="page-item"><a class="page-link" href="/productos/categorias/${index}">${index}</a></li>
			    <c:if test="${index+1}<=${totalPagina2}"><li class="page-item"><a class="page-link" href="/productos/categorias/${index+1}">${index+1}</a></li></c:if>
			    <li class="page-item">
			      <c:if test="${index+3}<=${totalPagina2}"><a class="page-link" href="/productos/categorias/${index+3}" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a></c:if>
			    </li>
			  </ul>
			</nav>
		</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>




