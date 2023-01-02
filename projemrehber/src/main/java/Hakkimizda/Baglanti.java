package Hakkimizda;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Hakkimizda.GetSet;
import uyeduyuru.getset;

public class Baglanti {
	 PreparedStatement stm;
	 Connection con ;
	 ResultSet resultSet = null;
		String baslik;
		String icerik;
		int Id;
		
		
		
		
		public Baglanti() {
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
				stm= con.prepareStatement(  "SELECT * FROM hakkimiz");
				resultSet=stm.executeQuery();
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage());
				
			}
			return resultSet;
		}
		public boolean updateData(GetSet veri)
		{    baslik=veri.getBaslik();
             icerik=veri.getIcerik();
             Id=veri.getId();
			
			try
			{
				stm  = con.prepareStatement("UPDATE hakkimiz SET baslik='"+baslik+"',icerik='"+icerik+"' WHERE Id='"+Id+"'");
				stm.executeUpdate(); 
				return true;
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
			
		}
		public boolean IdAldým(GetSet veri)
		{
			Id=veri.getId();
			return true;
		}
		public ResultSet selectData(GetSet veri)
		{
			try
			{
				stm= con.prepareStatement( "SELECT * FROM hakkimiz where Id='"+Id+"'");
				resultSet=stm.executeQuery();
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage());
				
			}
			return resultSet;
		}

}
