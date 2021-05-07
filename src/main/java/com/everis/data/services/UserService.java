package com.everis.data.services;

import java.util.List;

import javax.validation.Valid;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everis.data.models.User;
import com.everis.data.repositories.UserRepository;
import com.everis.data.repositories.RolRepository;

@Service
public class UserService {
	@Autowired
	UserRepository ur;
	
	@Autowired
	RolRepository rr;

	public User save(User user) {
		Long cantidad = ur.count();
		if(cantidad>0) {
			this.saveUser(user);
		}else {
			this.saveAdmin(user);
		}
		System.out.println(cantidad);
		
		return user;
	}

	public User saveUser(User user){
		String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
		user.setPassword(hashed);
		user.setRoles(rr.findByNombre("ROL_USER"));
		return ur.save(user);
	}
	
	public User saveAdmin(User user){
		String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
		user.setPassword(hashed);
		user.setRoles(rr.findByNombre("ROL_ADMIN"));
		return ur.save(user);
	}
	
	public List<User> findAll() {		
		return ur.findAll();
	}

	public long totalizar() {		
		return ur.count();
	}
	
	public boolean autenticacion(String email,String password) {
		User user = ur.findByEmail(email);
		
		if(user == null) {
			return false;
		}else {
			if(BCrypt.checkpw(password, user.getPassword())) {
				return true;
			}else {
				return false;
			}
		}
	}

	public User findById(long parseLong) {
		return ur.findById(parseLong).get();
	}

	public void actualizarCliente(Long idSave, @Valid User user) {
		User User2 = ur.findById(idSave).get();
		User2.setFirstName(user.getFirstName());
		User2.setLastName(user.getLastName());
		User2.setRut(user.getRut());
		User2.setEmail(user.getEmail());
		User2.setPassword(user.getPassword());
		ur.save(User2);		
	}
}