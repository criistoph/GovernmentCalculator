package com.ite.government.model;

public class InventarioInstituto {
	
	private int iEnero;
	private int iFebrero;
	private int iMarzo;
	private int iAbril;
	private int iMayo;
	private int iJunio;
	private int iJulio;
	private int iAgosto;
	private int iSeptiembre;
	private int iOctubre;
	private int iNoviembre;
	private int iDiciembre;
	private Producto producto;
	public int getiEnero() {
		return iEnero;
	}
	public void setiEnero(int iEnero) {
		this.iEnero = iEnero;
	}
	public int getiFebrero() {
		return iFebrero;
	}
	public void setiFebrero(int iFebrero) {
		this.iFebrero = iFebrero;
	}
	public int getiMarzo() {
		return iMarzo;
	}
	public void setiMarzo(int iMarzo) {
		this.iMarzo = iMarzo;
	}
	public int getiAbril() {
		return iAbril;
	}
	public void setiAbril(int iAbril) {
		this.iAbril = iAbril;
	}
	public int getiMayo() {
		return iMayo;
	}
	public void setiMayo(int iMayo) {
		this.iMayo = iMayo;
	}
	public int getiJunio() {
		return iJunio;
	}
	public void setiJunio(int iJunio) {
		this.iJunio = iJunio;
	}
	public int getiJulio() {
		return iJulio;
	}
	public void setiJulio(int iJulio) {
		this.iJulio = iJulio;
	}
	public int getiAgosto() {
		return iAgosto;
	}
	public void setiAgosto(int iAgosto) {
		this.iAgosto = iAgosto;
	}
	public int getiSeptiembre() {
		return iSeptiembre;
	}
	public void setiSeptiembre(int iSeptiembre) {
		this.iSeptiembre = iSeptiembre;
	}
	public int getiOctubre() {
		return iOctubre;
	}
	public void setiOctubre(int iOctubre) {
		this.iOctubre = iOctubre;
	}
	public int getiNoviembre() {
		return iNoviembre;
	}
	public void setiNoviembre(int iNoviembre) {
		this.iNoviembre = iNoviembre;
	}
	public int getiDiciembre() {
		return iDiciembre;
	}
	public void setiDiciembre(int iDiciembre) {
		this.iDiciembre = iDiciembre;
	}
	public Producto getProducto() {
		return producto;
	}
	public void setProducto(Producto producto) {
		this.producto = producto;
	}
	@Override
	public String toString() {
		return "InventarioInstituto [iEnero=" + iEnero + ", iFebrero=" + iFebrero + ", iMarzo=" + iMarzo + ", iAbril="
				+ iAbril + ", iMayo=" + iMayo + ", iJunio=" + iJunio + ", iJulio=" + iJulio + ", iAgosto=" + iAgosto
				+ ", iSeptiembre=" + iSeptiembre + ", iOctubre=" + iOctubre + ", iNoviembre=" + iNoviembre
				+ ", iDiciembre=" + iDiciembre + ", producto=" + producto + "]";
	}
	
}
