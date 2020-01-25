package com.cahc.proyecto.service;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

import com.cahc.proyecto.model.Inventario;
import com.cahc.proyecto.repository.InventarioRepository;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

@Service
public class ReporteService {

	@Autowired
	private InventarioRepository repository;

	public String exportReport(String reportFormat) throws FileNotFoundException, JRException {
	        String path = "C:\\Users\\CAHC\\Documents\\IDAT\\4\\Reportes";
	        List<Inventario> inventarios = (List<Inventario>) repository.findAll();
	        //load file and compile it
	        File file = ResourceUtils.getFile("C:\\CAHC\\proyecto\\src\\main\\resources\\static\\inventarios.jrxml");
	        JasperReport jasperReport = JasperCompileManager.compileReport(file.getAbsolutePath());
	        JRBeanCollectionDataSource dataSource = new JRBeanCollectionDataSource(inventarios);
	        Map<String, Object> parameters = new HashMap<>();
	        parameters.put("Original de", "PhotoStudio");
	        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, dataSource);
	        if (reportFormat.equalsIgnoreCase("html")) {
	            JasperExportManager.exportReportToHtmlFile(jasperPrint, path +"\\inventarios.html");
	        }
	        if (reportFormat.equalsIgnoreCase("pdf")) {
	            JasperExportManager.exportReportToPdfFile(jasperPrint, path +"\\inventarios.pdf");
	        }
	       
	        return "reporte";
	    }

}
