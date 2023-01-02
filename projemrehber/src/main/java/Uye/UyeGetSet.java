package Uye;

public class UyeGetSet {
	     private String kullanici;
	     private String sifre;
	     private String ad;
	     private String soyad;
	     private String mail;
	     private String tel;
		public String getKullanici() {
			return kullanici;
		}
		public void setKullanici(String kullanici) {
			this.kullanici = kullanici;
		}
		public String getSifre() {
			return sifre;
		}
		public void setSifre(String sifre) {
			this.sifre = sifre;
		}
		public String getAd() {
			return ad;
		}
		public void setAd(String ad) {
			this.ad = ad;
		}
		public String getSoyad() {
			return soyad;
		}
		public void setSoyad(String soyad) {
			this.soyad = soyad;
		}
		public String getMail() {
			return mail;
		}
		public void setMail(String mail) {
			this.mail = mail;
		}
		public String getTel() {
			return tel;
		}
		public void setTel(String tel) {
			this.tel = tel;
		}
		@Override
		public String toString() {
			return "UyeGetSet [kullanici=" + kullanici + ", sifre=" + sifre + ", ad=" + ad + ", soyad=" + soyad
					+ ", mail=" + mail + ", tel=" + tel + ", getKullanici()=" + getKullanici() + ", getSifre()="
					+ getSifre() + ", getAd()=" + getAd() + ", getSoyad()=" + getSoyad() + ", getMail()=" + getMail()
					+ ", getTel()=" + getTel() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
					+ ", toString()=" + super.toString() + "]";
		}

}
