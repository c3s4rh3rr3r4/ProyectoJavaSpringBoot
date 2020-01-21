package com.cahc.proyecto.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cahc.proyecto.model.Inventario;
import com.cahc.proyecto.repository.InventarioRepository;

@Service
@Transactional
public class InventarioServiceImpl implements InventarioService {

	@Autowired
	InventarioRepository inventarioRepository;	
	
	@Override
	public List<Inventario> getAllInventarios() {
		
		return (List <Inventario>)inventarioRepository.findAll() ;
	}

	@Override
	public Inventario getInventarioById(long id) {
		
		return inventarioRepository.findById(id).get();
	}

	@Override
	public void saveOrUpdate(Inventario inventario) {
		
		inventarioRepository.save(inventario);
		
	}

	@Override
	public void deleteInventario(long id) {
		
		inventarioRepository.deleteById(id);
		
	}

}
