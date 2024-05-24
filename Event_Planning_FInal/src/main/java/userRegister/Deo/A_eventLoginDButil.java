package userRegister.Deo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import userRegister.Model.user;

public class A_eventLoginDButil {
	//new
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		//new
		public static boolean validate(String username,String password) {
			    
			try {
				 con = DBConnect.getConnection();
				 stmt = con.createStatement();
				 String sql = "SELECT * FROM onlineeventmngsystwm.event_uploader WHERE username='"+username+"' and password = '"+password+"'";
				 rs = stmt.executeQuery(sql);
				 
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
		
		//Event Upload
		
		 public static List<user> getUser(String userName){
			 
			 ArrayList<user> user = new ArrayList<>();
			 
			 try {
				 con = DBConnect.getConnection();
				 stmt = con.createStatement();
				 String sql = "SELECT * FROM onlineeventmngsystwm.event_uploader WHERE username='"+userName+"'";
				 rs = stmt.executeQuery(sql);
				 
				 while(rs.next()) {
					 int id = rs.getInt(1);
				     String username = rs.getString(4);
					 String password = rs.getString(5);
					 
					 user u = new user(id,username,password);
					 user.add(u);
					 
				 }
				 
			 }catch(Exception e){
				 e.printStackTrace();
			 }
			 
			 return user;
		 }
}


//Event Upoader Login
