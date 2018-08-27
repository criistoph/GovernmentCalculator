package com.ite.government.model;

public class OrdenMayorista {
	
	private int oEnero;
	private int oFebrero;
	private int oMarzo;
	private int oAbril;
	private int oMayo;
	private int oJunio;
	private int oJulio;
	private int oAgosto;
	private int oSeptiembre;
	private int oOctubre;
	private int oNoviembre;
	private int oDiciembre;
	private Producto producto;
	
	public int getoEnero() {
		return oEnero;
	}
	public void setoEnero(int oEnero) {
		this.oEnero = oEnero;
	}
	public int getoFebrero() {
		return oFebrero;
	}
	public void setoFebrero(int oFebrero) {
		this.oFebrero = oFebrero;
	}
	public int getoMarzo() {
		return oMarzo;
	}
	public void setoMarzo(int oMarzo) {
		this.oMarzo = oMarzo;
	}
	public int getoAbril() {
		return oAbril;
	}
	public void setoAbril(int oAbril) {
		this.oAbril = oAbril;
	}
	public int getoMayo() {
		return oMayo;
	}
	public void setoMayo(int oMayo) {
		this.oMayo = oMayo;
	}
	public int getoJunio() {
		return oJunio;
	}
	public void setoJunio(int oJunio) {
		this.oJunio = oJunio;
	}
	public int getoJulio() {
		return oJulio;
	}
	public void setoJulio(int oJulio) {
		this.oJulio = oJulio;
	}
	public int getoAgosto() {
		return oAgosto;
	}
	public void setoAgosto(int oAgosto) {
		this.oAgosto = oAgosto;
	}
	public int getoSeptiembre() {
		return oSeptiembre;
	}
	public void setoSeptiembre(int oSeptiembre) {
		this.oSeptiembre = oSeptiembre;
	}
	public int getoOctubre() {
		return oOctubre;
	}
	public void setoOctubre(int oOctubre) {
		this.oOctubre = oOctubre;
	}
	public int getoDiciembre() {
		return oDiciembre;
	}
	public void setoDiciembre(int oDiciembre) {
		this.oDiciembre = oDiciembre;
	}
	public Producto getProducto() {
		return producto;
	}
	public void setProducto(Producto producto) {
		this.producto = producto;
	}
	public int getoNoviembre() {
		return oNoviembre;
	}
	public void setoNoviembre(int oNoviembre) {
		this.oNoviembre = oNoviembre;
	}
	
	@Override
	public String toString() {
		return "OrdenMayorista [oEnero=" + oEnero + ", oFebrero=" + oFebrero + ", oMarzo=" + oMarzo + ", oAbril="
				+ oAbril + ", oMayo=" + oMayo + ", oJunio=" + oJunio + ", oJulio=" + oJulio + ", oAgosto=" + oAgosto
				+ ", oSeptiembre=" + oSeptiembre + ", oOctubre=" + oOctubre + ", oNoviembre=" + oNoviembre
				+ ", oDiciembre=" + oDiciembre + ", producto=" + producto + "]";
	}
	
}
