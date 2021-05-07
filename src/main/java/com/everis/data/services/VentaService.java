package com.everis.data.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everis.data.models.Venta;
import com.everis.data.repositories.VentaRepository;

@Service
public class VentaService {
	@Autowired
	VentaRepository vr;

	public void save(Venta venta) {
		vr.save(venta);
	}
	
	public List<Venta> findAll() {		
		return vr.findAll();
	}

	public Venta findById(Long id) {
		return vr.findById(id).get();
	}

	public void deleteById(Long id) {
		vr.deleteById(id);
		
	}

}
