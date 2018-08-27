package com.ite.government.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.enterprisedt.util.debug.Logger;
import com.ite.government.dao.CalculadoraDao;
import com.ite.government.model.DaysOfHand;
import com.ite.government.model.DesplazamientoInstituto;
import com.ite.government.model.Institucion;
import com.ite.government.model.InventarioInstituto;
import com.ite.government.model.OrdenMayorista;
import com.ite.government.model.Producto;
import com.ite.government.model.Resumen;
import routines.system.JSONArray;
import routines.system.JSONObject;

@Repository
public class CalculadoraDaoImpl implements CalculadoraDao{
	private static final Logger log = Logger.getLogger(CalculadoraDaoImpl.class);
	@Autowired private JdbcTemplate jdbcTemplate;

	@Override
	public List<OrdenMayorista> cargarTablaOrden(String idInstituto){
		StringBuffer sql = new StringBuffer();
		
		sql.append("SELECT VW.* FROM CG_INSTITUCION INST, CG_INSTITUCION_PRODUCTO PRO,VW_CG_ORDEN VW  " + 
				   "WHERE INST.ID_INSTITUCION = PRO.ID_INSTITUCION  " + 
				   "AND PRO.ID_PRODUCTO = VW.ID_PRODUCTO  " + 
				   "AND INST.ID_INSTITUCION  = ?  " + 
				   "ORDER BY VW.ID_PRODUCTO ASC  ");
		
        Object[] params = {idInstituto};	
		List<OrdenMayorista> ordenCompra = jdbcTemplate.query(sql.toString(), new OrdenMapper(),params);
		return ordenCompra;
	}
	
	private final class OrdenMapper implements RowMapper<OrdenMayorista>{
		@Override
		public OrdenMayorista mapRow(ResultSet rs, int row) throws SQLException {
			OrdenMayorista orden = new OrdenMayorista();
			
			orden.setoEnero(rs.getInt("O_ENERO"));
			orden.setoFebrero(rs.getInt("O_FEBRERO"));
			orden.setoMarzo(rs.getInt("O_MARZO"));
			orden.setoAbril(rs.getInt("O_ABRIL"));
			orden.setoMayo(rs.getInt("O_MAYO"));
			orden.setoJunio(rs.getInt("O_JUNIO"));
			orden.setoJulio(rs.getInt("O_JULIO"));
			orden.setoAgosto(rs.getInt("O_AGOSTO"));
			orden.setoSeptiembre(rs.getInt("O_SEPTIEMBRE"));
			orden.setoOctubre(rs.getInt("O_OCTUBRE"));
			orden.setoNoviembre(rs.getInt("O_NOVIEMBRE"));
			orden.setoDiciembre(rs.getInt("O_DICIEMBRE"));
			
			Producto producto = new Producto();
			
			producto.setIdProducto(rs.getInt("ID_PRODUCTO"));
			
			
			orden.setProducto(producto);
			
			return orden;
		}
	}

	
	@Override
	public List<Producto> cargarTablaProducto(String idInstituto) {
		StringBuffer sql = new StringBuffer();

		sql.append("SELECT PROD.* FROM CG_INSTITUCION INST, CG_INSTITUCION_PRODUCTO PRO, CG_PRODUCTO PROD " + 
				   "WHERE INST.ID_INSTITUCION = PRO.ID_INSTITUCION " + 
				   "AND PROD.ID_PRODUCTO = PRO.ID_PRODUCTO    " + 
				   "AND INST.ID_INSTITUCION  = ?  ");
		 
		Object[] params = {idInstituto};	
         
		List<Producto> productos = jdbcTemplate.query(sql.toString(), new ProductoMapper(),params);

		return productos;
	}
	
	private final class ProductoMapper implements RowMapper<Producto>{
		@Override
		public Producto mapRow(ResultSet rs, int row) throws SQLException {
			Producto producto = new Producto();
			producto.setIdProducto(rs.getLong("ID_PRODUCTO"));
			producto.setEanUpc(rs.getString("EAN_UPC"));
			producto.setSku(rs.getLong("SKU"));
			producto.setNombreProducto(rs.getString("PRODUCTO"));
			producto.setNombreCliente(rs.getString("CLIENTE"));
			producto.setNombreInstitucion(rs.getString("INSTITUCION"));
			producto.setRef1(rs.getString("REF1"));
			producto.setRefDoc(rs.getString("REF_DOC"));
			return producto;
		}
	}

	
	
	@Override
	public List<InventarioInstituto> cargarTablaInventario(String idInstituto) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT VW.* FROM CG_INSTITUCION INST, CG_INSTITUCION_PRODUCTO PRO,VW_CG_INVENTARIO VW  " + 
				   "WHERE INST.ID_INSTITUCION = PRO.ID_INSTITUCION  " + 
				   "AND PRO.ID_PRODUCTO = VW.ID_PRODUCTO  " + 
				   "AND INST.ID_INSTITUCION  = ?  " + 
				   "ORDER BY VW.ID_PRODUCTO ASC  ");
		Object[] params = {idInstituto};	
		List<InventarioInstituto> ordenCompra = jdbcTemplate.query(sql.toString(), new InventarioMapper(),params);
		return ordenCompra;
	}
	
	private final class InventarioMapper implements RowMapper<InventarioInstituto>{
		@Override
		public InventarioInstituto mapRow(ResultSet rs, int row) throws SQLException {
			InventarioInstituto inventarioInstituto = new InventarioInstituto();
			inventarioInstituto.setiEnero(rs.getInt("I_ENERO"));
			inventarioInstituto.setiFebrero(rs.getInt("I_FEBRERO"));
			inventarioInstituto.setiMarzo(rs.getInt("I_MARZO"));
			inventarioInstituto.setiAbril(rs.getInt("I_ABRIL"));
			inventarioInstituto.setiMayo(rs.getInt("I_MAYO"));
			inventarioInstituto.setiJunio(rs.getInt("I_JUNIO"));
			inventarioInstituto.setiJulio(rs.getInt("I_JULIO"));
			inventarioInstituto.setiAgosto(rs.getInt("I_AGOSTO"));
			inventarioInstituto.setiSeptiembre(rs.getInt("I_SEPTIEMBRE"));
			inventarioInstituto.setiOctubre(rs.getInt("I_OCTUBRE"));
			inventarioInstituto.setiNoviembre(rs.getInt("I_NOVIEMBRE"));
			inventarioInstituto.setiDiciembre(rs.getInt("I_DICIEMBRE"));
			return inventarioInstituto;
		}
	}


	
	@Override
	public List<Institucion> cargarComboInstitucion() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT INST.INSTITUCION, INST.ID_INSTITUCION FROM CG_INSTITUCION INST, CG_INSTITUCION_PRODUCTO PRO  " + 
				   "WHERE INST.ID_INSTITUCION = PRO.ID_INSTITUCION  " + 
				   "GROUP BY INST.INSTITUCION, INST.ID_INSTITUCION  ");
		List<Institucion> institucion = jdbcTemplate.query(sql.toString(), new InstitucionComboMapper());
		return institucion;
	}
	
	private final class InstitucionComboMapper implements RowMapper<Institucion>{
		@Override
		public Institucion mapRow(ResultSet rs, int row) throws SQLException {
			
			Institucion institucion = new Institucion();

			institucion.setIdInstitucion(rs.getInt("ID_INSTITUCION"));
			institucion.setNombreInstitucion(rs.getString("INSTITUCION"));
			return institucion;
		}
	}
	

	@Override
	public List<Producto> cargarComboProductos(Integer idInstitucion) {
		log.info("Entrando al metodo cargar combo productos");
		StringBuffer sql = new StringBuffer();
		
		System.out.println(idInstitucion);
		
		Object[] params = {idInstitucion};
		sql.append(" SELECT PRO.EAN_UPC EAN, PRO.PRODUCTO FROM CG_INSTITUCION INST,CG_PRODUCTO PRO, CG_INSTITUCION_PRODUCTO INSPRO " + 
				    "WHERE INST.ID_INSTITUCION = INSPRO.ID_INSTITUCION  " + 
				    "AND PRO.ID_PRODUCTO = INSPRO.ID_PRODUCTO  " + 
				    "AND INST.ID_INSTITUCION =  ?  ");
		List<Producto> producto = jdbcTemplate.query(sql.toString(), new ProductoComboMapper(),params);
		return producto;
	}

	private final class ProductoComboMapper implements RowMapper<Producto>{
		@Override
		public Producto mapRow(ResultSet rs, int row) throws SQLException {
			Producto producto = new Producto();
			producto.setNombreProducto(rs.getString("PRODUCTO"));
			producto.setEanUpc(rs.getString("EAN"));
			return producto;
		}
	}


	
	@Override
	public List<DesplazamientoInstituto> cargarTablaDesplazamiento(Integer idInstitucion) {
		StringBuffer sql = new StringBuffer();
		Object[] params = {idInstitucion};
		sql.append("SELECT DESP.*, PRO.VENTA_FY  FROM CG_INSTITUCION INST,CG_PRODUCTO PRO, CG_INSTITUCION_PRODUCTO INSPRO,CG_DESPLAZAMIENTO DESP  " + 
				   "WHERE INST.ID_INSTITUCION = INSPRO.ID_INSTITUCION   " + 
				   "AND PRO.ID_PRODUCTO = INSPRO.ID_PRODUCTO  " + 
				   "AND DESP.ID_PRODUCTO = PRO.ID_PRODUCTO  " + 
				   "AND INST.ID_INSTITUCION = ?  ");
		List<DesplazamientoInstituto> lista = jdbcTemplate.query(sql.toString(), new DesplazamientoMapper(),params);
		System.out.println(lista);
		return lista;
	}
	
	private final class DesplazamientoMapper implements RowMapper<DesplazamientoInstituto>{
		@Override
		public DesplazamientoInstituto mapRow(ResultSet rs, int row) throws SQLException {
			DesplazamientoInstituto desplazamientoInstituto = new DesplazamientoInstituto();
			
			desplazamientoInstituto.setInventarioInicial(rs.getLong("D_INVENTARIO_INICIAL"));
			desplazamientoInstituto.setdEnero(rs.getLong("D_ENERO"));
			desplazamientoInstituto.setdFebrero(rs.getLong("D_FEBRERO"));
			desplazamientoInstituto.setdMarzo(rs.getLong("D_MARZO"));
			desplazamientoInstituto.setdAbril(rs.getLong("D_ABRIL"));
			desplazamientoInstituto.setdMayo(rs.getLong("D_MAYO"));
			desplazamientoInstituto.setdJunio(rs.getLong("D_JUNIO"));
			desplazamientoInstituto.setdJulio(rs.getLong("D_JULIO"));
			desplazamientoInstituto.setdAgosto(rs.getLong("D_AGOSTO"));
			desplazamientoInstituto.setdSeptiembre(rs.getLong("D_SEPTIEMBRE"));
			desplazamientoInstituto.setdOctubre(rs.getLong("D_OCTUBRE"));
			desplazamientoInstituto.setdNoviembre(rs.getLong("D_NOVIEMBRE"));
			desplazamientoInstituto.setdDiciembre(rs.getLong("D_DICIEMBRE"));
			
			Producto producto = new Producto();
			
			producto.setIdProducto(rs.getLong("ID_PRODUCTO"));
			producto.setVentaFy(rs.getInt("VENTA_FY"));
			desplazamientoInstituto.setProducto(producto);
			
			return desplazamientoInstituto;
		}
	}


	@Override
	public boolean guardarTablaDesplazamiento(String arreglo) throws SQLException {
		StringBuffer sql = new StringBuffer();
		
		sql.append("SELECT COUNT(*) FROM CG_TMP_DESPLAZAMIENTO ");
		int response = jdbcTemplate.queryForInt(sql.toString());
		
		JSONArray jsonArr = new JSONArray(arreglo);
		
		if(response == 0) {
	        for (int i = 0; i < jsonArr.length(); i++){
	            JSONObject jsonObj = jsonArr.getJSONObject(i);
	            
	            
	            
	            String producto = jsonObj.get("producto").toString();
	            producto = producto.replace("{\"idProducto\":", "").replace("\"}", "");
	            producto = producto.replace("}", "");
	            producto = producto.replace("\"", "");
	            
	            int idProducto = Integer.parseInt(producto);
	            
	            Object[] params = {idProducto, jsonObj.get("inventarioInicial"),jsonObj.get("dEnero"),
	            		jsonObj.get("dFebrero"),jsonObj.get("dMarzo"),jsonObj.get("dAbril"),
	            		jsonObj.get("dMayo"),jsonObj.get("dJunio"),jsonObj.get("dJulio"),
	            		jsonObj.get("dAgosto"),jsonObj.get("dSeptiembre"),jsonObj.get("dOctubre"),
	            		jsonObj.get("dNoviembre"),jsonObj.get("dDiciembre")};	
	            
	           
	            
	            String sqlInsert = "INSERT INTO AVACO.CG_TMP_DESPLAZAMIENTO ( " + 
	            		"	ID_PRODUCTO,  " + 
	            		"	D_INVENTARIO_INICIAL, " +
	            		"   D_ENERO,  " + 
	            		"   D_FEBRERO, D_MARZO, D_ABRIL,  " + 
	            		"   D_MAYO, D_JUNIO, D_JULIO,  " + 
	            		"   D_AGOSTO, D_SEPTIEMBRE, D_OCTUBRE,  " + 
	            		"   D_NOVIEMBRE, D_DICIEMBRE)  " + 
	            		"   VALUES ("+idProducto+","+jsonObj.get("inventarioInicial")+","+jsonObj.get("dEnero")+","+jsonObj.get("dFebrero")+","+jsonObj.get("dMarzo")+","+jsonObj.get("dAbril")+","+jsonObj.get("dMayo")+","+jsonObj.get("dJunio")+","+jsonObj.get("dJulio")+","+jsonObj.get("dAgosto")+","+jsonObj.get("dSeptiembre")+","+jsonObj.get("dOctubre")+","+jsonObj.get("dNoviembre")+","+jsonObj.get("dDiciembre")+") ";    
	            jdbcTemplate.update(sqlInsert);	
	        }
		}else {
			
			  for (int j = 0; j < jsonArr.length(); j++){
				  
		            JSONObject jsonObj = jsonArr.getJSONObject(j);
		            
		            String producto = jsonObj.get("producto").toString();
		            producto = producto.replace("{\"idProducto\":", "").replace("\"}", "");
		            producto = producto.replace("}", "");
		            producto = producto.replace("\"", "");
		            
		            int idProducto = Integer.parseInt(producto);
		            
		            Object[] params = {jsonObj.get("inventarioInicial"),jsonObj.get("dEnero"),
		            		jsonObj.get("dFebrero"),jsonObj.get("dMarzo"),jsonObj.get("dAbril"),
		            		jsonObj.get("dMayo"),jsonObj.get("dJunio"),jsonObj.get("dJulio"),
		            		jsonObj.get("dAgosto"),jsonObj.get("dSeptiembre"),jsonObj.get("dOctubre"),
		            		jsonObj.get("dNoviembre"),jsonObj.get("dDiciembre"),idProducto};		
	        
		            
		            String  sqlInsert=" UPDATE CG_TMP_DESPLAZAMIENTO SET D_INVENTARIO_INICIAL =  "+jsonObj.get("inventarioInicial")+", D_ENERO = "+jsonObj.get("dEnero")+", D_FEBRERO = "+jsonObj.get("dFebrero")+", D_MARZO = "+jsonObj.get("dMarzo")+", D_ABRIL = "+jsonObj.get("dAbril")+", " + 
        					" D_MAYO = "+jsonObj.get("dMayo")+", D_JUNIO = "+jsonObj.get("dJunio")+", D_JULIO = "+jsonObj.get("dJulio")+", D_AGOSTO = "+jsonObj.get("dAgosto")+",  " + 
        					" D_SEPTIEMBRE = "+jsonObj.get("dSeptiembre")+", D_OCTUBRE = "+jsonObj.get("dOctubre")+", D_NOVIEMBRE = "+jsonObj.get("dNoviembre")+", D_DICIEMBRE = "+jsonObj.get("dDiciembre")+" " +
        					" WHERE ID_PRODUCTO = "+idProducto+" ";

		            jdbcTemplate.update(sqlInsert);	
		        }
		}
		return true;
	}



	@Override
	public List<DaysOfHand> cargarTablaDoh(String idInstituto) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT VW.* FROM CG_INSTITUCION INST, CG_INSTITUCION_PRODUCTO PRO,VW_CG_DOH VW " + 
				   "WHERE INST.ID_INSTITUCION = PRO.ID_INSTITUCION  " + 
				   "AND PRO.ID_PRODUCTO = VW.ID_PRODUCTO  " + 
				   "AND INST.ID_INSTITUCION  = ?  " + 
				   "ORDER BY VW.ID_PRODUCTO ASC ");
		
		  
        Object[] params = {idInstituto};		
		
		List<DaysOfHand> doh = jdbcTemplate.query(sql.toString(), new DohMapper(),params);
		return doh;
	}
	
	private final class DohMapper implements RowMapper<DaysOfHand>{
		@Override
		public DaysOfHand mapRow(ResultSet rs, int row) throws SQLException {
			DaysOfHand doh = new DaysOfHand();
			doh.setdEnero(rs.getInt("O_ENERO"));
			doh.setdFebrero(rs.getInt("O_FEBRERO"));
			doh.setdMarzo(rs.getInt("O_MARZO"));
			doh.setdAbril(rs.getInt("O_ABRIL"));
			doh.setdMayo(rs.getInt("O_MAYO"));
			doh.setdJunio(rs.getInt("O_JUNIO"));
			doh.setdJulio(rs.getInt("O_JULIO"));
			doh.setdAgosto(rs.getInt("O_AGOSTO"));
			doh.setdSeptiembre(rs.getInt("O_SEPTIEMBRE"));
			doh.setdOctubre(rs.getInt("O_OCTUBRE"));
			doh.setdNoviembre(rs.getInt("O_NOVIEMBRE"));
			doh.setdDiciembre(rs.getInt("O_DICIEMBRE"));
			return doh;
		}
	}



	@Override
	public List<Resumen> cargarTablaResumen(Long idProducto) {
		StringBuffer sql = new StringBuffer();
		Object[] params = {idProducto,idProducto,idProducto,idProducto};
		
		sql.append("select DES.ID_PRODUCTO PRODUCTO,D_ENERO AS ENERO, D_FEBRERO AS FEBRERO, D_MARZO AS MARZO, D_ABRIL AS ABRIL, D_MAYO AS MAYO, D_JUNIO AS JUNIO, D_JULIO AS JULIO, D_AGOSTO AS AGOSTO, D_SEPTIEMBRE AS SEPTIEMBRE, D_OCTUBRE AS OCTUBRE, D_NOVIEMBRE AS NOVIEMBRE, D_DICIEMBRE AS DICIEMBRE " + 
					"from CG_PRODUCTO PRO,CG_DESPLAZAMIENTO DES " + 
					"where PRO.ID_PRODUCTO=DES.ID_PRODUCTO  " + 
					"AND PRO.EAN_UPC = ? " + 
					"union all " + 
					"select ORD.* from CG_PRODUCTO PRO,VW_CG_ORDEN ORD " + 
					"where PRO.ID_PRODUCTO=ORD.ID_PRODUCTO  " + 
					"AND PRO.EAN_UPC = ? " + 
					"union all " + 
					"select INV.* from CG_PRODUCTO PRO,VW_CG_INVENTARIO inv " + 
					"where PRO.ID_PRODUCTO=INV.ID_PRODUCTO  " + 
					"AND PRO.EAN_UPC = ? " + 
					"union all  " + 
					"select DOH.* from CG_PRODUCTO PRO,VW_CG_DOH DOH " + 
					"where PRO.ID_PRODUCTO=DOH.ID_PRODUCTO " + 
					"AND PRO.EAN_UPC = ? ");
		
		List<Resumen> resumen = jdbcTemplate.query(sql.toString(), new ResumenMapper(),params);
		return resumen;
	}

	
	
	private final class ResumenMapper implements RowMapper<Resumen>{
		@Override
		public Resumen mapRow(ResultSet rs, int row) throws SQLException {
			Resumen resumen = new Resumen();
			resumen.setrEnero(rs.getInt("ENERO"));
			resumen.setrFebrero(rs.getInt("FEBRERO"));
			resumen.setrMarzo(rs.getInt("MARZO"));
			resumen.setrAbril(rs.getInt("ABRIL"));
			resumen.setrMayo(rs.getInt("MAYO"));
			resumen.setrJunio(rs.getInt("JUNIO"));
			resumen.setrJulio(rs.getInt("JULIO"));
			resumen.setrAgosto(rs.getInt("AGOSTO"));
			resumen.setrSeptiembre(rs.getInt("SEPTIEMBRE"));
			resumen.setrOctubre(rs.getInt("OCTUBRE"));
			resumen.setrNoviembre(rs.getInt("NOVIEMBRE"));
			resumen.setrDiciembre(rs.getInt("DICIEMBRE"));
			return resumen;
		}
	}
	

}
