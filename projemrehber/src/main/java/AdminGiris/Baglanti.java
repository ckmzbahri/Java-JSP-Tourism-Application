package AdminGiris;

import java.sql.DriverManager;
import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
 import AdminGiris.GetSet;

public class Baglanti {

	 PreparedStatement stm;
	 Connection con ;
	 ResultSet resultSet = null;
		String kullanici;
		String sifre;
		
		public Baglanti() {
			try
			{
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trujava","root","bahri123@1");    
			}catch(Exception e)
			{
			System.err.println(e);
			}			
		}
		
		public boolean Kontrol(GetSet veri)
		{
			kullanici=veri.getKullanici();
			sifre=veri.getSifre();
			try
			{ 
				String query = "Select* from admin where BINARY kullanici=? and BINARY sifre=?";
				stm = con.prepareStatement(query); 
				stm.setString(1,kullanici);
				stm.setString(2,sifre);
				resultSet = stm.executeQuery();
				GetSet k = null;
				if (resultSet.next())
				{
					k=new GetSet();
					k.setKullanici(resultSet.getString("kullanici"));
					k.setSifre(resultSet.getString("sifre"));
					return true;
				}
				con.close();
				stm.close();
				resultSet.close();
				}catch(Exception e)
			{
					
			System.err.println(e);
			}
			return false;
			}
}