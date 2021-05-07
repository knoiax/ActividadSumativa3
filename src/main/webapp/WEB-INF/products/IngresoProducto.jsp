<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<jsp:include page="../common/head.jsp">
	<jsp:param value="title" name="inicio"/>
</jsp:include>
<body>
	<%@ include file="../common/nav_bar2.jsp" %>
		<div>
		
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
						<c:forEach var = "producto" items="${listaProductos}">
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
			</div>
		</div>
	</div>
<div style="display: none"><c:out value="${IdCliente}"></c:out></div>

</body>
</html>




