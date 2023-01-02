package gezi;

public class getset {
	private int id;
	private String baslik;
	private String icerik;
	private String foto;
	private String konum;
	private String tur;
	private String aranan;
	private String filtre;
	
	public String getAranan() {
		return aranan;
	}
	public String getFiltre() {
		return filtre;
	}
	public void setFiltre(String filtre) {
		this.filtre = filtre;
	}
	public void setAranan(String aranan) {
		this.aranan = aranan;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBaslik() {
		return baslik;
	}
	public void setBaslik(String baslik) {
		this.baslik = baslik;
	}
	public String getIcerik() {
		return icerik;
	}
	public void setIcerik(String icerik) {
		this.icerik = icerik;
	}
	public String getFoto() {
		return foto;
	}
	public void setFoto(String foto) {
		this.foto = foto;
	}
	public String getKonum() {
		return konum;
	}
	public void setKonum(String konum) {
		this.konum = konum;
	}
	public String getTur() {
		return tur;
	}
	public void setTur(String tur) {
		this.tur = tur;
	}



}
