package com.ite.government.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ite.government.model.DaysOfHand;
import com.ite.government.model.DesplazamientoInstituto;
import com.ite.government.model.Institucion;
import com.ite.government.model.InventarioInstituto;
import com.ite.government.model.OrdenMayorista;
import com.ite.government.model.Producto;
import com.ite.government.model.Resumen;
import com.ite.government.service.CalculadoraService;

@Controller
@RequestMapping(value="/calculadoraController") 
public class CalculadoraController {
	
	private static final Logger log = Logger.getLogger(HomeController.class);
	@Autowired private CalculadoraService calculadoraService;
	
	@RequestMapping(value = "/cargarTablaOrden", method = RequestMethod.POST)
	@Produces(MediaType.APPLICATION_JSON)
	public @ResponseBody List<OrdenMayorista> cargarTablaDesplzamiento(String idInstituto) {
		return calculadoraService.cargarTablaOrden(idInstituto);	
	}
	
	@RequestMapping(value = "/cargarTablaInventario", method = RequestMethod.POST)	
	public @ResponseBody List<InventarioInstituto> cargarTablaInventario(String idInstituto) {
		return calculadoraService.cargarTablaInventario(idInstituto);	
	}
	
	@RequestMapping(value = "/cargarTablaDoh", method = RequestMethod.POST)	
	public @ResponseBody List<DaysOfHand> cargarTablaDoh(String idInstituto) {
		return calculadoraService.cargarTablaDoh(idInstituto);	
	}
	
	@RequestMapping(value = "/cargarComboInstitucion", method = RequestMethod.POST)	
	public @ResponseBody List<Institucion> cargarComboInstitucion() {
		return calculadoraService.cargarComboInstitucion();	
	}
	
	@RequestMapping(value = "/cargarComboProductos", method = RequestMethod.POST)	
	public @ResponseBody List<Producto> cargarComboProductos(Integer idInstitucion) {
		log.info("Entra a metodo cargar combo productos controller" + idInstitucion);
		return calculadoraService.cargarComboProductos(idInstitucion);	
	}
	
	@RequestMapping(value = "/cargarTablaProducto", method = RequestMethod.POST)	
	public @ResponseBody List<Producto> cargarTablaProducto(String idInstituto) {
		System.out.println("#######");
		System.out.println(idInstituto);
		return calculadoraService.cargarTablaProducto(idInstituto);	
	}
	
	@RequestMapping(value = "/cargarTablaResumen", method = RequestMethod.POST)	
	public @ResponseBody List<Resumen> cargarTablaResumen(Long idProducto) {
		System.out.print(idProducto);
		return calculadoraService.cargarTablaResumen(idProducto);	
	}
	
	@RequestMapping(value = "/cargarTablaDesplazamiento", method = RequestMethod.POST)	
	public @ResponseBody List<DesplazamientoInstituto>  cargarTablaDesplazamiento(Integer idInstitucion) {
		return calculadoraService.cargarTablaDesplazamiento(idInstitucion);	
	}
	
	@RequestMapping(value = "/guardarTablaDesplazamiento", method = RequestMethod.POST)
	
	public @ResponseBody boolean guardarTablaDesplazamiento(String arreglo) throws IOException, SQLException {
		System.out.println(arreglo);
		return calculadoraService.guardarTablaDesplazamiento(arreglo);	
	}
	
}
