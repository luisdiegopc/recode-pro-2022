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
import com.produtos.apirest.repository.ProdutoRepository;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping(value = "/api")
@Api(value = "API Rest Produtos")
@CrossOrigin(origins = "*") //para liberar todos os domínios de api
public class ProdutoResource {
	
	@Autowired
	ProdutoRepository produtoRepository;
	
	//get do PostMan testa http://localhost:8080/api/produtos
	@GetMapping("/produtos")
	@ApiOperation("Retorna uma lista de produtos")
	public List<Produto> listaProdutos(){
		return produtoRepository.findAll();
	}
	
	//get do PostMan testa http://localhost:8080/api/produto/2 por exemplo
	@GetMapping("/produto/{id}")
	@ApiOperation(value="Retorna um produto unico")
	public Produto listaProdutoUnico(@PathVariable(value="id") long id){
		return produtoRepository.findById(id);
	}
	
	//put do PostMan testa http://localhost:8080/api/produto
	/*
	 Tem que copiar o JSON, configurar no body de text para JSON
	 No Header tem que configurar para key content-type e no value application JSON
	 que tirar o Id por que é autoincrement.
	 */
	@ApiOperation(value="Salva um produto")
	@PostMapping("/produto")
	public Produto salvaProduto(@RequestBody Produto produto) {
		return produtoRepository.save(produto);
	}
	
	//delete do PostMan testa http://localhost:8080/api/produto
	/*
	 Tem que copiar o JSON, configurar no body de text para JSON
	 No Header tem que configurar para key content-type e no value application JSON
	 que colocar o Id por que é a chave de busca
	 */
	@ApiOperation(value="Deleta um produto")
	@DeleteMapping("/produto")
	public void deletaProduto(@RequestBody Produto produto) {
		produtoRepository.delete(produto);
	}
	
	//put do PostMan testa http://localhost:8080/api/produto
	/*
	 Tem que copiar o JSON, configurar no body de text para JSON
	 No Header tem que configurar para key content-type e no value application JSON
	 que colocar o Id por que é a chave de busca
	 */
	@ApiOperation(value="Atualiza um produto")
	@PutMapping("/produto")
	public Produto atualizaProduto(@RequestBody Produto produto) {
		return produtoRepository.save(produto);
	}
}
