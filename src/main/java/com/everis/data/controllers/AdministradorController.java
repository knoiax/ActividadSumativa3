package com.everis.data.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.everis.data.models.Administrador;
import com.everis.data.models.User;
import com.everis.data.services.AdministradorService;
import com.everis.data.services.UserService;
import com.everis.data.services.ProductoService;

@Controller
@RequestMapping("/administrador")
public class AdministradorController {
	Long idSave;
		
	@Autowired
	AdministradorService as;
	@Autowired
	UserService us;
	@Autowired
	ProductoService ps;
	
	
	public String inicioAdmin(Model model) {
		return "administrador.jsp";
	}
	
	@RequestMapping("/cliente2")
	public String inicioAdminCliente(Model model) {		
		return "admin_cliente.jsp";
	}
	
	@RequestMapping("/admin_cliente/crear")
	public String crearCliente(@RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName, 
			@RequestParam("rut") String rut,
			@RequestParam("email") String email,
			@RequestParam("password") String password,@RequestParam("password2") String password2){
			User user = new User();
			user.setFirstName(firstName);
			user.setLastName(lastName);
			user.setRut(rut);
			user.setEmail(email);
			user.setPassword(password);				
			user= us.save(user);	
			idSave = user.getId(); 
			return "redirect:/administrador";			
	}
	//no se esta implementando este modulo
	@RequestMapping("/in_administrador/acceder")
	public String accesoAdmin(@RequestParam("id")String id, @RequestParam("password")String password, Model model) {
		boolean exist = as.existe(Long.parseLong(id));
		if(exist) {
			Administrador administrador = as.findById(Long.parseLong(id));
			if(administrador.getPassword() == password) {
				model.addAttribute("alert2", "");
				model.addAttribute("alert", "");
				idSave = Long.parseLong(id); 
				return "in_administrador.jsp";	
			}
			else {
				model.addAttribute("alert", "contraseña incorrecta");
				return "administrador.jsp";
			}
		}
		model.addAttribute("alert2", "usuario no encontrado");
		return "administrador.jsp";
	}
	//no se esta implementando este modulo
	@RequestMapping("/administrador/crear")
	public String insertar(@RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName, 
			@RequestParam("rut") String rut,
			@RequestParam("email") String email,
			@RequestParam("password") String password,@RequestParam("password2") String password2){
		Administrador administrador = new Administrador();
		administrador.setFirstName(firstName);
		administrador.setLastName(lastName);
		administrador.setRut(rut);
		administrador.setEmail(email);
		administrador.setPassword(password);				
		administrador= as.save(administrador);	
		idSave = administrador.getId(); 
		return "redirect:/administrador";
	}
	//no se esta implementando este modulo
	@RequestMapping("/in_administrador/editar")
	public String editarCliente(
			Model model) {
		 Administrador administrador = as.findById(idSave);
		model.addAttribute("administrador", administrador);
		return "editar_administrador.jsp";
	}
	//no se esta implementando este modulo
	@RequestMapping("/in_administrador/actualizar/")
	public String actualizarCliente(@Valid @ModelAttribute("administrador") Administrador administrador
			) {
		as.actualizarAdministrador(idSave, administrador);
		return "redirect:/";
	}
	

}