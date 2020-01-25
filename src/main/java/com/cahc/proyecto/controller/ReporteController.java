package com.cahc.proyecto.controller;

import java.io.FileNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cahc.proyecto.service.ReporteService;

import net.sf.jasperreports.engine.JRException;


@Controller
public class ReporteController {
	
	@Autowired
	ReporteService reporteService;
	
	@RequestMapping(value="/reporte/{formato}", method=RequestMethod.GET)
	public String editInventario(@PathVariable String formato) throws FileNotFoundException, JRException {
						
		return reporteService.exportReport(formato);
	}
	
	
}

	
	
