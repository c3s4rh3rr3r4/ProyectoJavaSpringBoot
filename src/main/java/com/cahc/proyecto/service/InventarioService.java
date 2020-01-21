package com.cahc.proyecto.service;

import java.util.List;

import com.cahc.proyecto.model.Inventario;

public interface InventarioService {
	
	public List<Inventario> getAllInventarios();
	public Inventario getInventarioById(long id);
	public void saveOrUpdate(Inventario inventario);
	public void deleteInventario(long id);

}
