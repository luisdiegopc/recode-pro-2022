package com.produtos.apirest.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.produtos.apirest.models.Promocao;

public interface PromocaoRepository extends JpaRepository <Promocao, Long> {
	Promocao findById(long id);
	
}
