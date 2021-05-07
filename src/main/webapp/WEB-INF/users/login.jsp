<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<jsp:include page="../common/head.jsp">
	<jsp:param value="title" name="inicio"/>
</jsp:include>
<body>
	<%@ include file="../common/nav_bar2.jsp" %>
	<form action="/user/acceder" method="POST" class="px-2">
			<div class="container col-md-12">
			<div style="color: red"><c:out value="${alert2}"></c:out></div> 	
				<h3 style="text-align: center;">Ingreso usuarios</h3><br>				
			    	<div class="row">			    		
			    
					      <div class="form-group">
					        <label>email </label>
					        <input type="number" class="form-control" name="email">
					        <br>
					      </div>
			      
					      <div class="form-group">
					        <label>password </label>
					        <input type="text" class="form-control" name="password">
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
</body>
</html>

		