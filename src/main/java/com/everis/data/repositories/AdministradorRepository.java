package com.everis.data.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.everis.data.models.Administrador;

@Repository
public interface AdministradorRepository extends JpaRepository<Administrador, Long>{

}
