package com.produtos.apirest.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.produtos.apirest.models.Evento;
// CrudRepository é uma classe que tem implementado listar, salvar,deletar
public interface EventoRepository extends JpaRepository<Evento, String>{
	Evento findByCodigo(long codigo);
}
