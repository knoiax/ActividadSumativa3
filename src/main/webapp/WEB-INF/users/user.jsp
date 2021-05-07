<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<jsp:include page="../common/head.jsp">
	<jsp:param value="title" name="inicio"/>
</jsp:include>
<body>
	<%@ include file="../common/nav_bar.jsp" %>
	<div>
		
		<form action="/cliente/crear" method="POST" class="px-2">
			<div class="container col-md-12">			
				<h3 style="text-align: center;">Formulario de Registro</h3><br>			
				<div class="row">		    
					      <div class="form-group">
					        <label>Nombre: </label>
					        <input type="text" class="form-control" name="firstName">
					        <br>				        
					      </div>
					      
			      
					      <div class="form-group">
					        <label>Apellido: </label>
					        <input type="text" class="form-control" name="lastName">
					        <br>				       
					      </div> 
					      
			  
					      <div class="form-group">
					        <label>Rut: </label>
					        <input type="text" class="form-control" name="rut">	
					        <br>			        
					      </div>
					      
					      
					      <div class="form-group">
					        <label>Correo electrónico: </label>
					        <input type="text" class="form-control" name="email">	
					        <br>			        
					      </div>
					      
					      
					      <div class="form-group">
					        <label>Contraseña: </label>
					        <input type="password" class="form-control" name="password">
					        <br>				        
					      </div>
					      
					      <div class="form-group">
					        <label>Confirmar contraseña: </label>
					        <input type="password" class="form-control" name="password2">
					        <br>				        
					      </div>
					      <div style="color: red"><c:out value= "${alert}" ></c:out></div>
			      		
					      <div class="container">
					        <div class="row">
					            <div class="btn-group" role="group" aria-label="Basic mixed styles example">
					                <button type="submit" name="insertar" class="btn btn-success">Confirmar registro</button>
					            </div>
					        </div>
					      </div>  
					</div> 	      	      	
				</div>	   
		</form>
	</div>	
</body>
</html>
