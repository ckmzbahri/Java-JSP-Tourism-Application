package uyeHakkimizda;
import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import uyeHakkimizda.GetSet;

public class baglanti {
	 PreparedStatement stm;
	 Connection con ;
	 ResultSet resultSet = null;
		String telefon;
		String mail;
		
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
				stm= con.prepareStatement(  "SELECT * FROM hakkimiz");
				resultSet=stm.executeQuery();
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage());
				
			}
			return resultSet;
		}
}
