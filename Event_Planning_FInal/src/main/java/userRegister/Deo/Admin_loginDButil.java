package userRegister.Deo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Admin_loginDButil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//new
	public static boolean validate(String Admin_username,String Admin_password) {
		    
		try {
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			 String sql_Q = "SELECT * FROM onlineeventmngsystwm.admin WHERE admin_username='"+Admin_username+"' and admin_passward = '"+Admin_password+"'";
			 rs = stmt.executeQuery(sql_Q);
			 
			 if(rs.next()) {
				 isSuccess = true;
				 
			 }else {
				 isSuccess = false;
			 }
			 
			 
		}catch(Exception e) {
			e.printStackTrace();
			
		}
	
		return isSuccess;
	}
}
