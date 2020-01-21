package com.cahc.proyecto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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

	@RequestMapping(value="/addInventario", method=RequestMethod.GET)
	public ModelAndView addInventario() {
		ModelAndView model = new ModelAndView();
		
		Inventario inventario = new Inventario();
		model.addObject("inventarioForm", inventario);
		model.setViewName("inventario_form");
		
		return model;
	}

	@RequestMapping(value="/updateInventario/{id}", method=RequestMethod.GET)
	public ModelAndView editInventario(@PathVariable long id) {
		ModelAndView model =new ModelAndView();
		
		Inventario inventario = inventarioService.getInventarioById(id);
		model.addObject("inventarioForm", inventario);
		model.setViewName("inventario_form");
		
		return model;
	}

	@RequestMapping(value="/saveInventario", method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("inventarioForm") Inventario inventario) {
		inventarioService.saveOrUpdate(inventario);
		
		return new ModelAndView("redirect:/inventario/listar");
	}

	@RequestMapping(value="/deleteInventario/{id}", method=RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") long id) {
		inventarioService.deleteInventario(id);
		
		return new ModelAndView("redirect:/inventario/listar");
	}
}
