package com.produtos.apirest.models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="promocao")
public class Promocao implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id_promocao;
	
	
	private String nome;
	private float desconto;
	private int id_destino;
	
	public int getId_promocao() {
		return id_promocao;
	}
	public void setId_promocao(int id_promocao) {
		this.id_promocao = id_promocao;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public float getDesconto() {
		return desconto;
	}
	public void setDesconto(float desconto) {
		this.desconto = desconto;
	}
	public int getId_destino() {
		return id_destino;
	}
	public void setId_destino(int id_destino) {
		this.id_destino = id_destino;
	}
	
	@Override
	public String toString() {
		return "promocao [id_promocao=" + id_promocao + ", nome=" + nome + ", desconto=" + desconto + ", id_destino="
				+ id_destino + "]";
	}
	
	
	
	
}
