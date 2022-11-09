package com.produtos.apirest.resources;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.produtos.apirest.models.Produto;
import com.produtos.apirest.models.Destino;
import com.produtos.apirest.repository.DestinoRepository;
import com.produtos.apirest.repository.ProdutoRepository;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping(value = "/api")
@Api(value = "API Rest Produtos")
@CrossOrigin(origins = "*") //para liberar todos os domínios de api
public class DestinoResource {
	
	@Autowired
	DestinoRepository destinoRepository;
	
	//get do PostMan testa http://localhost:8080/api/produtos
	@GetMapping("/destinos")
	@ApiOperation("Retorna uma lista de destinos")
	public List<Destino> listaDestinos(){
		return destinoRepository.findAll();
	}
	
	//get do PostMan testa http://localhost:8080/api/produto/2 por exemplo
	@GetMapping("/destino/{id}")
	@ApiOperation(value="Retorna um destino unico")
	public Destino listaDestinoUnico(@PathVariable(value="id") long id){
		return destinoRepository.findById(id);
	}
	
	//put do PostMan testa http://localhost:8080/api/produto
	/*
	 Tem que copiar o JSON, configurar no body de text para JSON
	 No Header tem que configurar para key content-type e no value application JSON
	 que tirar o Id por que é autoincrement.
	 */
	@ApiOperation(value="Salva um produto")
	@PostMapping("/destino")
	public Destino salvaProduto(@RequestBody Destino destino) {
		return destinoRepository.save(destino);
	}
	
	//delete do PostMan testa http://localhost:8080/api/produto
	/*
	 Tem que copiar o JSON, configurar no body de text para JSON
	 No Header tem que configurar para key content-type e no value application JSON
	 que colocar o Id por que é a chave de busca
	 */
	@ApiOperation(value="Deleta um destino")
	@DeleteMapping("/destino")
	public void deletaDestino(@RequestBody Destino destino) {
		destinoRepository.delete(destino);
	}
	
	//put do PostMan testa http://localhost:8080/api/produto
	/*
	 Tem que copiar o JSON, configurar no body de text para JSON
	 No Header tem que configurar para key content-type e no value application JSON
	 que colocar o Id por que é a chave de busca
	 */
	@ApiOperation(value="Atualiza um destino")
	@PutMapping("/destino")
	public Destino atualizadestino(@RequestBody Destino destino) {
		return destinoRepository.save(destino);
	}
}
