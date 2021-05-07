<html>
	<body>
		<nav
			  class="navbar navbar-expand-xl navbar-dark bg-dark"
			  aria-label="Ejemplo de la tercera barra de navegación">
			  <div class="container-fluid">
			    <a class="navbar-brand" onclick="window.location='/'">
			      	<font style="vertical-align: inherit">
			      		Home
			          	<img
				            src="assets/svg/shops.svg"
				            alt="Home"
				            width="40"
				            height="40"
				            class="d-inline-block align-text-top" />
					</font>
			    </a>
			    <button
			      class="navbar-toggler"
			      type="button"
			      data-bs-toggle="collapse"
			      data-bs-target="#navbarsExample03"
			      aria-controls="navbarsExample03"
			      aria-expanded="false"
			      aria-label="Navegación de palanca">
			      <span class="navbar-toggler-icon"></span>
			    </button>
			
			    <div class="collapse navbar-collapse" id="navbarsExample03">
			      <ul class="navbar-nav me-auto mb-2 mb-xl-0">
			        
			        <li class="nav-item dropdown">
			          	<a
				            class="nav-link dropdown-toggle"				            
				            id="dropdown03"
				            data-bs-toggle="dropdown"
				            aria-expanded="false">
				            <font style="vertical-align: inherit">
				            Catalogo
				            </font>
						</a>
			          <ul class="dropdown-menu" aria-labelledby="dropdown03">
			            <li>
							<a
				                class="dropdown-item"
				                onclick="window.location='/productos/categorias'">
				                <font style="vertical-align: inherit">
				                Por Categorías</font>
							</a>
			            </li>
			            <li>
			              	<a
				                class="dropdown-item"  onclick="window.location='/productos/lista'">   
				                <font style="vertical-align: inherit">
				        		Todos los productos
				        		</font>
			        		</a>
			            </li>
			            <li>
			              	<a class="dropdown-item" onclick="window.location='/productos/insertar'">
				                <font style="vertical-align: inherit">
				                Añadir nuevo producto
				                </font>
							</a>
			            </li>
			            <li>
			              	<a class="dropdown-item" onclick="window.location='/productos/modificar'">
			                	<font style="vertical-align: inherit">
			                	Modificar producto
			                	</font>
			                </a>
			            </li>
			            <li>
			              	<a class="dropdown-item" onclick="window.location='/productos/eliminar'">
			                	<font style="vertical-align: inherit">
			                	Eliminar producto
			                	</font>
			                </a>
			            </li>
			          </ul>
			        </li>
			        
			        <li class="nav-item dropdown">
			          	<a
				            class="nav-link dropdown-toggle"				            
				            id="dropdown03"
				            data-bs-toggle="dropdown"
				            aria-expanded="false">
				            <font style="vertical-align: inherit">
				            Categorias
				            </font>
						</a>
			          <ul class="dropdown-menu" aria-labelledby="dropdown03">
			            <li>
			              	<a class="dropdown-item" onclick="window.location='/categorias'">
				                <font style="vertical-align: inherit">
				                Añadir nueva categoría
				                </font>
							</a>
			            </li>
			            <li>
			              	<a class="dropdown-item" onclick="window.location='/categorias/modificar'">
			                	<font style="vertical-align: inherit">
			                	Modificar categoría
			                	</font>
			                </a>
			            </li>
			            <li>
			              	<a class="dropdown-item" onclick="window.location='/categorias/eliminar'">
			                	<font style="vertical-align: inherit">
			                	Eliminar categoría
			                	</font>
			                </a>
			            </li>
			          </ul>
			        </li>
			        
			         <li class="nav-item dropdown">
			          	<a
				            class="nav-link dropdown-toggle"				            
				            id="dropdown03"
				            data-bs-toggle="dropdown"
				            aria-expanded="false">
				            <font style="vertical-align: inherit">
				            Stocks
				            </font>
						</a>
			          <ul class="dropdown-menu" aria-labelledby="dropdown03">
			            <li>
			              	<a class="dropdown-item" onclick="window.location='/stock/insertar'">
				                <font style="vertical-align: inherit">
				                Añadir nuevo Stock
				                </font>
							</a>
			            </li>
			            <li>
			              	<a class="dropdown-item" onclick="window.location='/stock/modificar'">
			                	<font style="vertical-align: inherit">
			                	Modificar stock
			                	</font>
			                </a>
			            </li>
			            <li>
			              	<a class="dropdown-item" onclick="window.location='/stock/eliminar'">
			                	<font style="vertical-align: inherit">
			                	Eliminar stock
			                	</font>
			                </a>
			            </li>
			          </ul>
			        </li>
			        
			         <li class="nav-item dropdown">
			          	<a
				            class="nav-link dropdown-toggle"				            
				            id="dropdown03"
				            data-bs-toggle="dropdown"
				            aria-expanded="false">
				            <font style="vertical-align: inherit">
				            Usuarios
				            </font>
						</a>
			          <ul class="dropdown-menu" aria-labelledby="dropdown03">
			            <li>
			              	<a class="dropdown-item" onclick="window.location='/usuario/insertar'">
				                <font style="vertical-align: inherit">
				                Añadir nuevo usuario
				                </font>
							</a>
			            </li>
			            <li>
			              	<a class="dropdown-item" onclick="window.location='/usuario/modificar'">
			                	<font style="vertical-align: inherit">
			                	Modificar usuario
			                	</font>
			                </a>
			            </li>
			            <li>
			              	<a class="dropdown-item" onclick="window.location='/usuario/eliminar'">
			                	<font style="vertical-align: inherit">
			                	Eliminar usuario
			                	</font>
			                </a>
			            </li>
			          </ul>
			        </li>			        
			      		        
			         <li class="nav-item dropdown">
			          	<a
				            class="nav-link dropdown-toggle"				            
				            id="dropdown03"
				            data-bs-toggle="dropdown"
				            aria-expanded="false">
				            <font style="vertical-align: inherit">
				            Compra
				            </font>
						</a>
			          <ul class="dropdown-menu" aria-labelledby="dropdown03">
			             <li>
			              	<a class="dropdown-item" onclick="window.location='/venta/'">
				                <font style="vertical-align: inherit">
				                Confirma tu compra
				                </font>
							</a>
			            </li>
			            <li>
			              	<a class="dropdown-item" onclick="window.location='/venta/historial'">
				                <font style="vertical-align: inherit">
				                Historial
				                </font>
							</a>
			            </li>
			            <li>
			              	<a class="dropdown-item" onclick="window.location='/ventas/despachos'">
			                	<font style="vertical-align: inherit">
			                	Despachos pendientes
			                	</font>
			                </a>
			            </li>
			            <li>
			              	<a class="dropdown-item" onclick="window.location='/ventas/eliminar'">
			                	<font style="vertical-align: inherit">
			                	Devuelve tu producto
			                	</font>
			                </a>
			            </li>
			          </ul>
			        </li>
			        
			        <li class="nav-item dropdown">
			          	<a
				            class="nav-link dropdown-toggle"				            
				            id="dropdown03"
				            data-bs-toggle="dropdown"
				            aria-expanded="false">
				            <font style="vertical-align: inherit">
				            Acerca de nosotros
				            </font>
						</a>
			          <ul class="dropdown-menu" aria-labelledby="dropdown03">
			            <li>
							<a
				                class="dropdown-item"
				                onclick="window.location='/cliente'">
				                <font style="vertical-align: inherit">
				                Nuestra historia</font>
							</a>
			            </li>
			            <li>
			              	<a
				                class="dropdown-item"  onclick="window.location='/cliente'">   
				                <font style="vertical-align: inherit">
				        		Misión y visión
				        		</font>
			        		</a>
			            </li>
			            <li>
			              	<a class="dropdown-item" onclick="window.location='/cliente'">
				                <font style="vertical-align: inherit">
				                Contáctanos
				                </font>
							</a>
			            </li>
			            <li>
			              	<a class="dropdown-item" onclick="window.location='/cliente'">
			                	<font style="vertical-align: inherit">
			                	Trabaja con nosotros
			                	</font>
			                </a>
			            </li>
			          </ul>
			        </li>
			      </ul>			      
			      <!-- <form>
			        <input
			          class="form-control"
			          type="text"
			          placeholder="Buscar"
			          aria-label="Buscar"
			        />
			      </form> -->
			      
			       <ul class="navbar-nav me-auto mb-2 mb-sm-0 mb-md-0">
			      	<li class="nav-item">
			          	<a class="nav-link" onclick="window.location='/user/login'">
			          		<font style="vertical-align: inherit">
			          			Ingreso
			          		</font>
						</a>
        			</li>
        			<li class="nav-item">
			          	<a class="nav-link" onclick="window.location='/user'">
			          		<font style="vertical-align: inherit">
			          			Registro
			          		</font>
						</a>
        			</li>
			      </ul>
			    </div>
			  </div>
			</nav>
	</body>
</html>
