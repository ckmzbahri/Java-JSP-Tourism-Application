package Hakkimizda;

public class GetSet {
	
	 private String baslik;
	 private int Id;
	 public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
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
	private String icerik;

}
