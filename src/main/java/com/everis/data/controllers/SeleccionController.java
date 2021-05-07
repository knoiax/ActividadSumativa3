package com.everis.data.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.everis.data.models.Categoria;
import com.everis.data.models.Producto;
import com.everis.data.services.CategoriaService;
import com.everis.data.services.ProductoService;
import com.everis.data.services.UserService;
import com.everis.data.services.VentaService;

@Controller
@RequestMapping("/seleccion")
public class SeleccionController {
		
	@Autowired
	ProductoService ps;
	@Autowired
	VentaService vs;
	@Autowired
	UserService us;
	
	private static final int CANT_PRODUCTOS = 6;
	private static final int CANT_CATEGORIAS = 6;
	
	@RequestMapping("/categorias")
	public String inicioProducto(HttpSession session, Model model) {	
		Integer registrado = (Integer) session.getAttribute("registrado");
		if(registrado==1) {
			
			Page<Categoria> categorias= cs.categoriasPaginadas(0, CANT_CATEGORIAS);
			
			int totalPagina= categorias.getTotalPages();
			model.addAttribute("totalPagina", totalPagina);
			model.addAttribute("categorias", categorias);
			
			//model.addAttribute("listaProductos", ps.findAll());
						
			return "products/catalogo_productos_categoria.jsp";
		}
		
		return "index.jsp";
	}
	
	@RequestMapping("/categorias/{id}")
	public String listarProductoPorCategoria(@PathVariable("id") Long id, Model model) {			
		Categoria categoria= cs.findById(id);
		List<Producto> producto = categoria.getProductos();
		Page<Producto> productos = (Page<Producto>) ps.paginadoEspecial(id,0,CANT_PRODUCTOS);
		
		
		int totalPagina= productos.getTotalPages();
		model.addAttribute("totalPagina2", totalPagina);
		model.addAttribute("productos", productos);
		return "redirect:/productos/categorias";	
	}
	
	
	
	@RequestMapping("/admin")
	public String inicioProductoAdmin(Model model) {
		
		model.addAttribute("listaProductos", ps.findAll());
		return "admin_producto.jsp";
	}
	
	
	
	
	
	@RequestMapping("/admin/insertar")
	public String insertar(@RequestParam("name") String name,
			@RequestParam("description") String description,
			@RequestParam("price") String price
			) {
		Producto prod = new Producto();
		prod.setName(name);
		prod.setPrice(Float.parseFloat(price));
		prod.setDescription(description);
		
		ps.save(prod);
		
		return "redirect:/producto/admin";
	}

	@RequestMapping("/admin/editar/{id}")
	public String editar(@PathVariable("id") Long id, Model model) {
		Producto prod= ps.findById(id);
		
		List<Categoria> listaCategorias =  cs.findAll();
		
		model.addAttribute("producto", prod);
		model.addAttribute("listaCategorias", listaCategorias);
		return "admin_edit_producto.jsp";
	}
	
	@RequestMapping("/admin/update")
	public String update(@ModelAttribute("producto")Producto prod ) {
		ps.save(prod);
		return "redirect:/producto/admin";
	}
	@RequestMapping("/admin/eliminar/{id}")
	public String eliminarProducto(@PathVariable("id") Long id) {	
		ps.deleteById(id);
		return "redirect:/producto/admin";
	}
}
