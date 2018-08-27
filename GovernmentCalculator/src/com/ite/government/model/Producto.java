package com.ite.government.model;

public class Producto {
	
	private long idProducto;
	private String eanUpc;
	private String ref1;
	private String refDoc;
	private long sku;
	private String nombreProducto;
	private String nombreCliente;
	private String nombreInstitucion;
	private long anio;
	private long ventaFy;
	
	public long getIdProducto() {
		return idProducto;
	}
	public void setIdProducto(long idProducto) {
		this.idProducto = idProducto;
	}
	public long getSku() {
		return sku;
	}
	public void setSku(long sku) {
		this.sku = sku;
	}
	public String getNombreProducto() {
		return nombreProducto;
	}
	public void setNombreProducto(String nombreProducto) {
		this.nombreProducto = nombreProducto;
	}
	public String getNombreCliente() {
		return nombreCliente;
	}
	public void setNombreCliente(String nombreCliente) {
		this.nombreCliente = nombreCliente;
	}
	public String getNombreInstitucion() {
		return nombreInstitucion;
	}
	public void setNombreInstitucion(String nombreInstitucion) {
		this.nombreInstitucion = nombreInstitucion;
	}
	public long getAnio() {
		return anio;
	}
	public void setAnio(long anio) {
		this.anio = anio;
	}
	public long getVentaFy() {
		return ventaFy;
	}
	public void setVentaFy(long ventaFy) {
		this.ventaFy = ventaFy;
	}
	public String getEanUpc() {
		return eanUpc;
	}
	public void setEanUpc(String eanUpc) {
		this.eanUpc = eanUpc;
	}
	public String getRef1() {
		return ref1;
	}
	public void setRef1(String ref1) {
		this.ref1 = ref1;
	}
	public String getRefDoc() {
		return refDoc;
	}
	public void setRefDoc(String refDoc) {
		this.refDoc = refDoc;
	}
	@Override
	public String toString() {
		return "Producto [idProducto=" + idProducto + ", eanUpc=" + eanUpc + ", ref1=" + ref1 + ", refDoc=" + refDoc
				+ ", sku=" + sku + ", nombreProducto=" + nombreProducto + ", nombreCliente=" + nombreCliente
				+ ", nombreInstitucion=" + nombreInstitucion + ", anio=" + anio + ", ventaFy=" + ventaFy + "]";
	}
	
}
