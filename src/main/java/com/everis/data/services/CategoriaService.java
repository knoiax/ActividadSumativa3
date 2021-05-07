package com.everis.data.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.everis.data.models.Categoria;
import com.everis.data.repositories.CategoriaRepository;

@Service
public class CategoriaService {
	@Autowired
	CategoriaRepository cr;

	public void save(Categoria categoria) {
		cr.save(categoria);
	}
	
	public List<Categoria> findAll() {
		
		return cr.findAll();
	}

	public Categoria findById(Long id) {
		return cr.findById(id).get();
	}

	public void deleteById(Long id) {
		cr.deleteById(id);
		
	}

	public Page<Categoria> categoriasPaginadas(int pageNumber, int elementCantity) {
		PageRequest pageRequest = PageRequest.of(pageNumber, elementCantity);
		return cr.findAll(pageRequest);
	}
}
