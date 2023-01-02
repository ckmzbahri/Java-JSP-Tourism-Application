package kategori;
import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import kategori.getset;
public class baglanti {
	 PreparedStatement stm;
	 Connection con ;
	 ResultSet resultSet = null;
		String tur;
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
				stm= con.prepareStatement(  "SELECT * FROM kategori");
				resultSet=stm.executeQuery();
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage());
				
			}
			return resultSet;
		}
		
		public boolean insertData(getset veri)
		{
	           tur=veri.getTur();
			try
			{ 
				stm= con.prepareStatement( "INSERT INTO kategori(tur) values('"+tur+"')"); 
				stm.executeUpdate(); 
				return true;
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage()); System.exit(0); return false;}
		}
		public boolean updateData(getset veri)
		{    tur=veri.getTur();
             id=veri.getId();
			
			try
			{
				stm  = con.prepareStatement("UPDATE kategori SET tur='"+tur+"' WHERE id='"+id+"'");
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
				stm= con.prepareStatement( "SELECT * FROM kategori where id='"+id+"'");
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
				stm  = con.prepareStatement("DELETE FROM kategori WHERE id='"+id+"'");
				stm.executeUpdate(); 
				return true;
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
			
		}

}
