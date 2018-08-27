package com.ite.government.model;

public class DaysOfHand {

	private int id_producto;
	private int dEnero;
	private int dFebrero;
	private int dMarzo;
	private int dAbril;
	private int dMayo;
	private int dJunio;
	private int dJulio;
	private int dAgosto;
	private int dSeptiembre;
	private int dOctubre;
	private int dNoviembre;
	private int dDiciembre;
	private Producto producto;
	
	public int getId_producto() {
		return id_producto;
	}
	public void setId_producto(int id_producto) {
		this.id_producto = id_producto;
	}
	public int getdEnero() {
		return dEnero;
	}
	public void setdEnero(int dEnero) {
		this.dEnero = dEnero;
	}
	public int getdFebrero() {
		return dFebrero;
	}
	public void setdFebrero(int dFebrero) {
		this.dFebrero = dFebrero;
	}
	public int getdMarzo() {
		return dMarzo;
	}
	public void setdMarzo(int dMarzo) {
		this.dMarzo = dMarzo;
	}
	public int getdAbril() {
		return dAbril;
	}
	public void setdAbril(int dAbril) {
		this.dAbril = dAbril;
	}
	public int getdMayo() {
		return dMayo;
	}
	public void setdMayo(int dMayo) {
		this.dMayo = dMayo;
	}
	public int getdJunio() {
		return dJunio;
	}
	public void setdJunio(int dJunio) {
		this.dJunio = dJunio;
	}
	public int getdJulio() {
		return dJulio;
	}
	public void setdJulio(int dJulio) {
		this.dJulio = dJulio;
	}
	public int getdAgosto() {
		return dAgosto;
	}
	public void setdAgosto(int dAgosto) {
		this.dAgosto = dAgosto;
	}
	public int getdSeptiembre() {
		return dSeptiembre;
	}
	public void setdSeptiembre(int dSeptiembre) {
		this.dSeptiembre = dSeptiembre;
	}
	public int getdOctubre() {
		return dOctubre;
	}
	public void setdOctubre(int dOctubre) {
		this.dOctubre = dOctubre;
	}
	public int getdNoviembre() {
		return dNoviembre;
	}
	public void setdNoviembre(int dNoviembre) {
		this.dNoviembre = dNoviembre;
	}
	public int getdDiciembre() {
		return dDiciembre;
	}
	public void setdDiciembre(int dDiciembre) {
		this.dDiciembre = dDiciembre;
	}
	public Producto getProducto() {
		return producto;
	}
	public void setProducto(Producto producto) {
		this.producto = producto;
	}
	@Override
	public String toString() {
		return "DaysOfHand [id_producto=" + id_producto + ", dEnero=" + dEnero + ", dFebrero=" + dFebrero + ", dMarzo="
				+ dMarzo + ", dAbril=" + dAbril + ", dMayo=" + dMayo + ", dJunio=" + dJunio + ", dJulio=" + dJulio
				+ ", dAgosto=" + dAgosto + ", dSeptiembre=" + dSeptiembre + ", dOctubre=" + dOctubre + ", dNoviembre="
				+ dNoviembre + ", dDiciembre=" + dDiciembre + ", producto=" + producto + "]";
	}

}
