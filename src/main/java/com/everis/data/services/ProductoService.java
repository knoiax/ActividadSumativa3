package com.everis.data.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.everis.data.models.Producto;
import com.everis.data.repositories.ProductoRepository;

@Service
public class ProductoService {
	@Autowired
	ProductoRepository pr;

	public void save(Producto producto) {
		pr.save(producto);
	}
	
	public List<Producto> findAll() {
		
		return pr.findAll();
	}

	public Producto findById(Long id) {
		return pr.findById(id).get();
	}

	public void deleteById(Long id) {
		pr.deleteById(id);
		
	}

	public Page<Producto> productosPaginados(int pageNumber, int elementCantity) {
		PageRequest pageRequest = PageRequest.of(pageNumber, elementCantity);
		return pr.findAll(pageRequest);
	}

	public List<Producto> paginadoEspecial(Long id, int pageNumber, int elementCantity) {
		PageRequest pageRequest = PageRequest.of(pageNumber, elementCantity);
		return pr.findAllProductosInnerJoinByCategoriasId(id,pageRequest);
		//No se si está bien, o como funciona, no pude realizar testing alguno en el desarrollo, error 403 forbidden, y no quiero eliminar spring security.
	}

}
