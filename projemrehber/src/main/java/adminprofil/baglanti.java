package adminprofil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import adminprofil.getset;

public class baglanti {
	 PreparedStatement stm;
	 Connection con ;
	 ResultSet resultSet = null;
		String kullanici;
		String ad;
		String soyad;
		String mail;
		String sifre;
		String tel;
	public baglanti() {
		try
		{
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trujava","root","bahri123@1");    
		}catch(Exception e)
		{
		System.err.println(e);
		}			
	}
	public boolean VeriAldým(getset veri)
	{
		kullanici = veri.getKullanici();
		return true;
	}
	
	public ResultSet selectData()
	{	
		try
		{
			stm= con.prepareStatement( "SELECT * FROM admin where kullanici='"+kullanici+"'");
			resultSet=stm.executeQuery();
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
	}
	public boolean updatData(getset veri)
	{   
		kullanici = veri.getKullanici();
		ad = veri.getAd();
		soyad=veri.getSoyad();
		mail=veri.getMail();
		sifre=veri.getSifre();
		tel=veri.getTel();
		try
		{
			stm  = con.prepareStatement("UPDATE admin SET kullanici='"+kullanici+"',sifre='"+sifre+"',mail='"+mail+"',ad='"+ad+"',soyad='"+soyad+"',tel='"+tel+"' WHERE kullanici='"+kullanici+"'");
			stm.executeUpdate(); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
		
	}
	

}
