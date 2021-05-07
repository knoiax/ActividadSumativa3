<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<jsp:include page="../common/head.jsp">
	<jsp:param value="title" name="inicio"/>
</jsp:include>
<body>
	<div>
		<%@ include file="../common/nav_bar2.jsp" %>
		<div class="container">
			<div class="row">
				<table class="table-success">
					<thead class="thead-light">
						<tr class="table-secondary">
							<th scope="col">Nombre</th>
							<th scope="col">Precio</th>
							<th scope="col">Cantidad</th>
							<th scope="col">Sumar</th>
							<th scope="col">Restar</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var = "producto" items="${listaSeleccion}">
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
	</div>
</body>
</html>