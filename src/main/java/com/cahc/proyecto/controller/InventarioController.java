package com.cahc.proyecto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

import com.cahc.proyecto.model.Inventario;
import com.cahc.proyecto.service.InventarioService;

@Controller
@RequestMapping(value = "/inventario")
public class InventarioController {
	
	@Autowired
	InventarioService inventarioService;
	
	@RequestMapping(value = "/listar", method=RequestMethod.GET)
	public ModelAndView listar() {
		ModelAndView model = new ModelAndView("inventario_list");
		List<Inventario> inventarioList = inventarioService.getAllInventarios();
		model.addObject("inventarioList", inventarioList);
		
		return model;		
	}


@RequestMapping(value="/list", method=RequestMethod.GET)
public ModelAndView list() {
	ModelAndView model = new ModelAndView("inventario_list");
	List<Inventario> inventarioList = inventarioService.getAllInventarios();
	model.addObject("inventarioList", inventarioList);
	
	return model;
}
}
