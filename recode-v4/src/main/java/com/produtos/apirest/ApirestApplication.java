package com.produtos.apirest;
// O springboot começa por esta apirest aplication
// trabalha um sistema de cadastro de eventos
// Digite http://localhost:8080/ ou http://localhost:8080/eventos
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ApirestApplication {

	public static void main(String[] args) {
		SpringApplication.run(ApirestApplication.class, args);
	}

}
