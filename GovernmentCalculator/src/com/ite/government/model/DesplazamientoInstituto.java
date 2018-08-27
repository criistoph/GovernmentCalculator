package com.ite.government.model;

public class DesplazamientoInstituto {
	
	private int id_producto;
	private Long inventarioInicial;
	private Long dEnero;
	private Long dFebrero;
	private Long dMarzo;
	private Long dAbril;
	private Long dMayo;
	private Long dJunio;
	private Long dJulio;
	private Long dAgosto;
	private Long dSeptiembre;
	private Long dOctubre;
	private Long dNoviembre;
	private Long dDiciembre;
	private Producto producto;
	public int getId_producto() {
		return id_producto;
	}
	public void setId_producto(int id_producto) {
		this.id_producto = id_producto;
	}
	public Long getInventarioInicial() {
		return inventarioInicial;
	}
	public void setInventarioInicial(Long inventarioInicial) {
		this.inventarioInicial = inventarioInicial;
	}
	public Long getdEnero() {
		return dEnero;
	}
	public void setdEnero(Long dEnero) {
		this.dEnero = dEnero;
	}
	public Long getdFebrero() {
		return dFebrero;
	}
	public void setdFebrero(Long dFebrero) {
		this.dFebrero = dFebrero;
	}
	public Long getdMarzo() {
		return dMarzo;
	}
	public void setdMarzo(Long dMarzo) {
		this.dMarzo = dMarzo;
	}
	public Long getdAbril() {
		return dAbril;
	}
	public void setdAbril(Long dAbril) {
		this.dAbril = dAbril;
	}
	public Long getdMayo() {
		return dMayo;
	}
	public void setdMayo(Long dMayo) {
		this.dMayo = dMayo;
	}
	public Long getdJunio() {
		return dJunio;
	}
	public void setdJunio(Long dJunio) {
		this.dJunio = dJunio;
	}
	public Long getdJulio() {
		return dJulio;
	}
	public void setdJulio(Long dJulio) {
		this.dJulio = dJulio;
	}
	public Long getdAgosto() {
		return dAgosto;
	}
	public void setdAgosto(Long dAgosto) {
		this.dAgosto = dAgosto;
	}
	public Long getdSeptiembre() {
		return dSeptiembre;
	}
	public void setdSeptiembre(Long dSeptiembre) {
		this.dSeptiembre = dSeptiembre;
	}
	public Long getdOctubre() {
		return dOctubre;
	}
	public void setdOctubre(Long dOctubre) {
		this.dOctubre = dOctubre;
	}
	public Long getdNoviembre() {
		return dNoviembre;
	}
	public void setdNoviembre(Long dNoviembre) {
		this.dNoviembre = dNoviembre;
	}
	public Long getdDiciembre() {
		return dDiciembre;
	}
	public void setdDiciembre(Long dDiciembre) {
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
		return "DesplazamientoInstituto [id_producto=" + id_producto + ", inventarioInicial=" + inventarioInicial
				+ ", dEnero=" + dEnero + ", dFebrero=" + dFebrero + ", dMarzo=" + dMarzo + ", dAbril=" + dAbril
				+ ", dMayo=" + dMayo + ", dJunio=" + dJunio + ", dJulio=" + dJulio + ", dAgosto=" + dAgosto
				+ ", dSeptiembre=" + dSeptiembre + ", dOctubre=" + dOctubre + ", dNoviembre=" + dNoviembre
				+ ", dDiciembre=" + dDiciembre + ", producto=" + producto + "]";
	}
	
	

}
