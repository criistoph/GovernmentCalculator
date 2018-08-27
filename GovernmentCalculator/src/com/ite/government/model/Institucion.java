package com.ite.government.model;

public class Institucion {
	private int idInstitucion;
	private String nombreInstitucion;
	private Producto producto;
	
	public int getIdInstitucion() {
		return idInstitucion;
	}
	public void setIdInstitucion(int idInstitucion) {
		this.idInstitucion = idInstitucion;
	}
	public String getNombreInstitucion() {
		return nombreInstitucion;
	}
	public void setNombreInstitucion(String nombreInstitucion) {
		this.nombreInstitucion = nombreInstitucion;
	}
	public Producto getProducto() {
		return producto;
	}
	public void setProducto(Producto producto) {
		this.producto = producto;
	}
	@Override
	public String toString() {
		return "Institucion [idInstitucion=" + idInstitucion + ", nombreInstitucion=" + nombreInstitucion
				+ ", producto=" + producto + "]";
	}
	
	
}
