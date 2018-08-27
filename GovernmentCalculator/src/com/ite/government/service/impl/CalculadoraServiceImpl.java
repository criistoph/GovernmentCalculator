package com.ite.government.service.impl;

import java.sql.SQLException;
import java.util.List;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ite.government.dao.CalculadoraDao;
import com.ite.government.model.DaysOfHand;
import com.ite.government.model.DesplazamientoInstituto;
import com.ite.government.model.Institucion;
import com.ite.government.model.InventarioInstituto;
import com.ite.government.model.OrdenMayorista;
import com.ite.government.model.Producto;
import com.ite.government.model.Resumen;
import com.ite.government.service.CalculadoraService;

@Service
public class CalculadoraServiceImpl implements CalculadoraService{
	
	private static final Logger log = Logger.getLogger(ConexionServiceImpl.class);
	@Autowired private CalculadoraDao calculadoraDao;
	
	@Override
	public List<OrdenMayorista> cargarTablaOrden(String idInstituto) {
		return calculadoraDao.cargarTablaOrden(idInstituto);
	}

	@Override
	public List<Producto> cargarTablaProducto(String idInstituto) {
		return calculadoraDao.cargarTablaProducto(idInstituto);
	}

	@Override
	public List<InventarioInstituto> cargarTablaInventario(String idInstituto) {
		return calculadoraDao.cargarTablaInventario(idInstituto);
	}

	@Override
	public List<Institucion> cargarComboInstitucion() {
		return calculadoraDao.cargarComboInstitucion();
	}

	@Override
	public List<Producto> cargarComboProductos(Integer idInstitucion) {
		return calculadoraDao.cargarComboProductos(idInstitucion);
	}

	@Override
	public List<DesplazamientoInstituto>  cargarTablaDesplazamiento(Integer idInstitucion) {
		
		List<DesplazamientoInstituto> desplazamientoInstituto = calculadoraDao.cargarTablaDesplazamiento(idInstitucion);
		
		
		
		if(desplazamientoInstituto.size() == 0) {
			
//			List<OrdenMayorista> orden = calculadoraDao.cargarTablaOrden();
//			for (int i = 0; i < orden.size(); i++) {
//				System.out.println(orden.get(i).getProducto().getIdProducto());
//				
//				DesplazamientoInstituto desplazamiento = new DesplazamientoInstituto();
//				desplazamiento.setdEnero((long) 0);
//				desplazamiento.setdFebrero((long)0);
//				desplazamiento.setdMarzo((long)0);
//				desplazamiento.setdAbril((long)0);
//				desplazamiento.setdMayo((long)0);
//				desplazamiento.setdJunio((long)0);
//				desplazamiento.setdJulio((long)0);
//				desplazamiento.setdAgosto((long)0);
//				desplazamiento.setdSeptiembre((long)0);
//				desplazamiento.setdOctubre((long)0);
//				desplazamiento.setdNoviembre((long)0);
//				desplazamiento.setdDiciembre((long)0);
//				
//				Producto producto = new Producto();
//				producto.setIdProducto(orden.get(i).getProducto().getIdProducto());
//				producto.setVentaFy(0);
//				
//				desplazamiento.setProducto(producto);
//				desplazamientoInstituto.add(desplazamiento);			
//			}
//			return desplazamientoInstituto;
			return desplazamientoInstituto;
		}else {
			return desplazamientoInstituto;
		}

		
	}

	@Override
	public boolean guardarTablaDesplazamiento(String arreglo) throws SQLException {
		return calculadoraDao.guardarTablaDesplazamiento(arreglo);
	}

	@Override
	public List<DaysOfHand> cargarTablaDoh(String idInstituto) {
		return calculadoraDao.cargarTablaDoh(idInstituto);
	}

	@Override
	public List<Resumen> cargarTablaResumen(Long idProducto) {
		return calculadoraDao.cargarTablaResumen(idProducto);
	}

}
