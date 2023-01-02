package uyeduyuru;
import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import uyeduyuru.getset;
public class baglanti {
	 PreparedStatement stm;
	 Connection con ;
	 ResultSet resultSet = null;
		String baslik;
		String icerik;
		String foto;
		int id;
		public baglanti() {
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
				stm= con.prepareStatement(  "SELECT * FROM duyuru");
				resultSet=stm.executeQuery();
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage());
				
			}
			return resultSet;
		}
		
		public boolean insertData(getset veri)
		{
	           baslik=veri.getBaslik();
	           icerik=veri.getIcerik();
	           foto=veri.getFoto();
			try
			{ 
				stm= con.prepareStatement( "INSERT INTO duyuru(baslik,icerik,foto) values('"+baslik+"','"+icerik+"','"+foto+"')"); 
				stm.executeUpdate(); 
				return true;
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage()); System.exit(0); return false;}
		}

		public boolean updateData(getset veri)
		{    baslik=veri.getBaslik();
             icerik=veri.getIcerik();
             foto=veri.getFoto();
             id=veri.getId();
			
			try
			{
				stm  = con.prepareStatement("UPDATE duyuru SET baslik='"+baslik+"',icerik='"+icerik+"',foto='"+foto+"' WHERE id='"+id+"'");
				stm.executeUpdate(); 
				return true;
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
			
		}
		public boolean IdAldým(getset veri)
		{
			id=veri.getId();
			return true;
		}
		public ResultSet selectData(getset veri)
		{
			try
			{
				stm= con.prepareStatement( "SELECT * FROM duyuru where id='"+id+"'");
				resultSet=stm.executeQuery();
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage());
				
			}
			return resultSet;
		}
		
		
}
