package Uye;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Giris.GetSet;
import Uye.UyeGetSet;

public class uyeislem {
	String ad;
	String soyad;
	String kullanici;
	String sifre;
	String mail;
	String tel;
    PreparedStatement stm;
	Connection con ;
	ResultSet resultSet = null;

	public uyeislem() {
		try
		{
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trujava","root","bahri123@1");    
		}catch(Exception e)
		{
		System.err.println(e);
		}		
		
	}	
	
	public ResultSet selectAllData()
	{	
		try
		{
			stm= con.prepareStatement(  "SELECT * FROM uyebilgi");
			resultSet=stm.executeQuery();
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
	}
	public boolean insertData(UyeGetSet veri)
	{
		ad = veri.getAd();
		soyad=veri.getSoyad();
		kullanici=veri.getKullanici();
		mail=veri.getMail();
		sifre=veri.getSifre();
		tel=veri.getTel();

		try
		{ 
			String query = "Select* from uyebilgi where kullanici=?";
			stm = con.prepareStatement(query); 
			stm.setString(1,kullanici);
			resultSet = stm.executeQuery();
			UyeGetSet k = null;
			if (resultSet.next())
			{
				k=new UyeGetSet();
				k.setKullanici(resultSet.getString("kullanici"));
				return false;
			}
			else
				
			{
			stm= con.prepareStatement( "INSERT INTO uyebilgi(kullanici,sifre,mail,ad,soyad,tel) values('"+kullanici+"','"+sifre+"','"+mail+"','"+ad+"','"+soyad+"','"+tel+"')"); 
			stm.executeUpdate(); 
			return true; }
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); System.exit(0); return false;}
		
		
	}



}
