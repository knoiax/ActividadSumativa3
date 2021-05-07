package com.everis.data.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.everis.data.models.User;
import com.everis.data.services.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserService us;
	
	@RequestMapping("")
	public String inicioUser() {
		return "users/user.jsp";
	}	
	
	@RequestMapping("/login")
	public String login() {
		return "users/login.jsp";
	}
	
	@RequestMapping("/registrar")
	public String insertar(@RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName, 
			@RequestParam("rut") String rut,
			@RequestParam("email") String email,
			@RequestParam("password") String password,
			@RequestParam("password2") String password2, Model model){		
		User user = new User();
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setRut(rut);
		user.setEmail(email);
		user.setPassword(password);	
		if(password == password2) {			
			user= us.save(user);
			return "redirect:/user/acceder";
			}
		else {
			model.addAttribute("alert","Las contraseñas no coinciden");
			return "redirect:/user";
		}
	}
	
	@PostMapping("/acceder")
	public String accesoCliente(@RequestParam("email")String email, 
			@RequestParam("password")String password, HttpSession session, Model model) {
		if(us.autenticacion(email, password)) {	
				session.setAttribute("email", email);
				session.setAttribute("registrado", 1);				
				model.addAttribute("alert2", "");
				model.addAttribute("alert1", "");				
				return "redirect:/producto";	
			}
			else {
				session.removeAttribute("registrado");
				session.setAttribute("registrado",0);
				model.addAttribute("alert2", "datos incorrectos");
				return "login.jsp";
			
		}		
	}
	
	@GetMapping("/acceder")
	public String getLogin(HttpSession session) {
		session.setAttribute("registrado",0);
		return "login.jsp";
	}
	
	/* desarrollando
	@RequestMapping("/in_cliente/editar")
	public String editarCliente(
			Model model) {
		 User user = us.findById(idSave); // ya no existe esta variable por http session
		model.addAttribute("cliente", user);
		return "editar_cliente.jsp";
	}
	@RequestMapping("/in_cliente/actualizar/")
	public String actualizarCliente(@Valid @ModelAttribute("cliente") User user
			) {
		us.actualizarCliente(idSave, user);
		return "redirect:/";
	}*/

}