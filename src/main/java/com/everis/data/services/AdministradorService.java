package com.everis.data.services;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everis.data.models.Administrador;
import com.everis.data.repositories.AdministradorRepository;

@Service
public class AdministradorService {
	@Autowired
	AdministradorRepository ar;

	public Administrador save(Administrador administrador) {
		return ar.save(administrador);
	}

	public List<Administrador> findAll() {		
		return ar.findAll();
	}

	public long totalizar() {		
		return ar.count();
	}

	public boolean existe(long parseLong) {
		return ar.existsById(parseLong);
	}

	public Administrador findById(long parseLong) {
		return ar.findById(parseLong).get();
	}

	public void actualizarAdministrador(Long idSave, @Valid Administrador administrador) {
		Administrador administrador2 = ar.findById(idSave).get();
		administrador2.setFirstName(administrador.getFirstName());
		administrador2.setLastName(administrador.getLastName());
		administrador2.setRut(administrador.getRut());
		administrador2.setEmail(administrador.getEmail());
		administrador2.setPassword(administrador.getPassword());
		ar.save(administrador2);		
	}
}