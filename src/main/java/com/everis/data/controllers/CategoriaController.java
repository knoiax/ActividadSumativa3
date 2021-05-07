package com.everis.data.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.everis.data.models.Categoria;
import com.everis.data.services.CategoriaService;

@Controller
@RequestMapping("/categorias")
public class CategoriaController {
	
	@Autowired
	CategoriaService cs;
	private static final int CANT_CATEGORIAS = 10;
	
	@RequestMapping("")
	public String inicioCategoria(HttpSession session, Model model) {
		Integer registrado = (Integer) session.getAttribute("registrado");
		if(registrado==1) {
			//model.addAttribute("listaCategorias", cs.findAll());
			Page<Categoria> categorias= cs.categoriasPaginadas(0, CANT_CATEGORIAS);
		
			int totalPagina= categorias.getTotalPages();
			model.addAttribute("totalPagina", totalPagina);
			model.addAttribute("categorias", categorias);
			return "categories/categoria.jsp";
		}
		return "index.jsp";
	}
	
	@RequestMapping("/insertar")
	public String insertar(@RequestParam("name") String name,
			@RequestParam("description") String description) {
		Categoria categoria = new Categoria();
		categoria.setName(name);
		categoria.setDescription(description);
		
		cs.save(categoria);
		
		return "redirect:/categorias";
	}
	
	@RequestMapping("/editar/{id}")
	public String editar(@PathVariable("id") Long id, Model model) {
		Categoria ct= cs.findById(id);	
		
		model.addAttribute("categoria", ct);
		return "admin_edit_categoria.jsp";
	}
	
	@RequestMapping("/update")
	public String update(@ModelAttribute("categoria")Categoria ct ) {
		cs.save(ct);
		return "redirect:/categorias";
	}
	@RequestMapping("/eliminar/{id}")
	public String eliminarCategoria(@PathVariable("id") Long id) {	
		cs.deleteById(id);
		return "redirect:/categorias";
	}
}
