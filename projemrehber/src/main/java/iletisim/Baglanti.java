package iletisim;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import iletisim.GetSet;
import uyeduyuru.getset;

public class Baglanti {
	 PreparedStatement stm;
	 Connection con ;
	 ResultSet resultSet = null;
		String telefon;
		String mail;
		String adres;
		int id;
		
		
		
		
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
				stm= con.prepareStatement(  "SELECT * FROM iletisim");
				resultSet=stm.executeQuery();
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage());
				
			}
			return resultSet;
		}
		
		public boolean updateeData(GetSet veri)
		{    mail=veri.getMail();
			 telefon=veri.getTelefon();
             adres=veri.getAdres();
             id=veri.getId();
			
			try
			{
				stm  = con.prepareStatement("UPDATE iletisim SET mail='"+mail+"',telefon='"+telefon+"',adres='"+adres+"' WHERE id='"+id+"'");
				stm.executeUpdate(); 
				return true;
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
			
		}

 public boolean IdAldým(GetSet veri)
{
	id=veri.getId();
	return true;
}
public ResultSet selectData(GetSet veri)
{
	try
	{
		stm= con.prepareStatement( "SELECT * FROM iletisim where id='"+id+"'");
		resultSet=stm.executeQuery();
	}
	catch (Exception e) { System.out.println("Hata:"+e.getMessage());
		
	}
	return resultSet;
}


}
