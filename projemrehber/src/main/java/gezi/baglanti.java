package gezi;
import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import gezi.getset;
public class baglanti {
	 PreparedStatement stm;
	 Connection con ;
	 ResultSet resultSet = null;
	    int id;
		String baslik;
		String icerik;
		String foto;
		String konum;
		String tur;
		String aranan;
		String filtre;
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
				stm= con.prepareStatement(  "SELECT * FROM gezi");
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
	           konum=veri.getKonum();
	           tur=veri.getTur();
			try
			{ 
				stm= con.prepareStatement( "INSERT INTO gezi(baslik,icerik,foto,konum,tur) values('"+baslik+"','"+icerik+"','"+foto+"','"+konum+"','"+tur+"')"); 
				stm.executeUpdate(); 
				return true;
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage()); System.exit(0); return false;}
		}

		public boolean updateData(getset veri)
		{    baslik=veri.getBaslik();
             icerik=veri.getIcerik();
             foto=veri.getFoto();
             konum=veri.getKonum();
             tur=veri.getTur();
             id=veri.getId();
			
			try
			{
				stm  = con.prepareStatement("UPDATE gezi SET baslik='"+baslik+"',icerik='"+icerik+"',foto='"+foto+"',konum='"+konum+"',tur='"+tur+"' WHERE id='"+id+"'");
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
				stm= con.prepareStatement( "SELECT * FROM gezi where id='"+id+"'");
				resultSet=stm.executeQuery();
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage());
				
			}
			return resultSet;
		}
		
		public boolean deleteData( getset veri)
		{
			id=veri.getId();
			try
			{
				stm  = con.prepareStatement("DELETE FROM gezi WHERE id='"+id+"'");
				stm.executeUpdate(); 
				return true;
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
			
		}
		
		public boolean VeriAldým(getset veri)
		{
			aranan = veri.getAranan();
			return true;
		}
		public boolean ver(getset veri)
		{
			filtre = veri.getFiltre();
			return true;
		}
		public ResultSet Ara()
		{	
			try
			{
				stm =con.prepareStatement("SELECT * FROM gezi where baslik like '%"+aranan+"%' ");
		        resultSet= stm.executeQuery();
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage());
				
			}
			return resultSet;
		}
		public ResultSet filtrele()
		{	
			try
			{
				stm =con.prepareStatement("SELECT * FROM gezi where tur like '%"+filtre+"%' ");
		        resultSet= stm.executeQuery();
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage());
				
			}
			return resultSet;
		}
}
