package com.ite.government.service;

import java.sql.SQLException;
import java.util.List;
import com.ite.government.model.DaysOfHand;
import com.ite.government.model.DesplazamientoInstituto;
import com.ite.government.model.Institucion;
import com.ite.government.model.InventarioInstituto;
import com.ite.government.model.OrdenMayorista;
import com.ite.government.model.Producto;
import com.ite.government.model.Resumen;

public interface CalculadoraService {
	List<OrdenMayorista> cargarTablaOrden(String idInstituto);
	List<Producto> cargarTablaProducto(String idInstituto);
	List<InventarioInstituto> cargarTablaInventario(String idInstituto);
	List<Institucion> cargarComboInstitucion();
	List<Producto> cargarComboProductos(Integer idInstitucion);
	List<DesplazamientoInstituto>  cargarTablaDesplazamiento(Integer idInstitucion);
	boolean guardarTablaDesplazamiento(String arreglo) throws SQLException;
	List<DaysOfHand> cargarTablaDoh(String idInstituto);
	List<Resumen> cargarTablaResumen(Long idProducto);
	
}
