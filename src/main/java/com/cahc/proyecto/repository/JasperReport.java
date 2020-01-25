package com.cahc.proyecto.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cahc.proyecto.model.Inventario;

@Service
public class JasperReport {

	@Autowired
	private InventarioRepository repository;

	/*
	 * @GetMapping("/getInventario") public List<Inventario> getInventario(){
	 * 
	 * return repository.findAll(); }
	 */

	public static void main(String[] args) {
		SpringApplication.run(JasperReport.class, args);
	}
}
