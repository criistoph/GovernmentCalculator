package com.ite.government.model;

public class Resumen {
	
	private String nombre;
	private int rEnero;
	private int rFebrero;
	private int rMarzo;
	private int rAbril;
	private int rMayo;
	private int rJunio;
	private int rJulio;
	private int rAgosto;
	private int rSeptiembre;
	private int rOctubre;
	private int rNoviembre;
	private int rDiciembre;
	private Producto producto;
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getrEnero() {
		return rEnero;
	}
	public void setrEnero(int rEnero) {
		this.rEnero = rEnero;
	}
	public int getrFebrero() {
		return rFebrero;
	}
	public void setrFebrero(int rFebrero) {
		this.rFebrero = rFebrero;
	}
	public int getrMarzo() {
		return rMarzo;
	}
	public void setrMarzo(int rMarzo) {
		this.rMarzo = rMarzo;
	}
	public int getrAbril() {
		return rAbril;
	}
	public void setrAbril(int rAbril) {
		this.rAbril = rAbril;
	}
	public int getrMayo() {
		return rMayo;
	}
	public void setrMayo(int rMayo) {
		this.rMayo = rMayo;
	}
	public int getrJunio() {
		return rJunio;
	}
	public void setrJunio(int rJunio) {
		this.rJunio = rJunio;
	}
	public int getrJulio() {
		return rJulio;
	}
	public void setrJulio(int rJulio) {
		this.rJulio = rJulio;
	}
	public int getrAgosto() {
		return rAgosto;
	}
	public void setrAgosto(int rAgosto) {
		this.rAgosto = rAgosto;
	}
	public int getrSeptiembre() {
		return rSeptiembre;
	}
	public void setrSeptiembre(int rSeptiembre) {
		this.rSeptiembre = rSeptiembre;
	}
	public int getrOctubre() {
		return rOctubre;
	}
	public void setrOctubre(int rOctubre) {
		this.rOctubre = rOctubre;
	}
	public int getrNoviembre() {
		return rNoviembre;
	}
	public void setrNoviembre(int rNoviembre) {
		this.rNoviembre = rNoviembre;
	}
	public int getrDiciembre() {
		return rDiciembre;
	}
	public void setrDiciembre(int rDiciembre) {
		this.rDiciembre = rDiciembre;
	}
	public Producto getProducto() {
		return producto;
	}
	public void setProducto(Producto producto) {
		this.producto = producto;
	}
	@Override
	public String toString() {
		return "Resumen [nombre=" + nombre + ", rEnero=" + rEnero + ", rFebrero=" + rFebrero + ", rMarzo=" + rMarzo
				+ ", rAbril=" + rAbril + ", rMayo=" + rMayo + ", rJunio=" + rJunio + ", rJulio=" + rJulio + ", rAgosto="
				+ rAgosto + ", rSeptiembre=" + rSeptiembre + ", rOctubre=" + rOctubre + ", rNoviembre=" + rNoviembre
				+ ", rDiciembre=" + rDiciembre + ", producto=" + producto + "]";
	}

}
