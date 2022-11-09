package com.produtos.apirest.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.produtos.apirest.models.Destino;

public interface DestinoRepository extends JpaRepository <Destino, Long> {
	Destino findById(long id);
	
}
