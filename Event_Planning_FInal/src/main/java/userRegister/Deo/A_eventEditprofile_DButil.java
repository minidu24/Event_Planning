package userRegister.Deo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import userRegister.Model.A_eventUploader;

public class A_eventEditprofile_DButil {
	public static List<A_eventUploader> Validate(String User_N,String Pass_w){
	
		ArrayList<A_eventUploader> user = new ArrayList<>();
	
		Connection conn = DBConnect.getConnection();  
		
		  try {
			  
			  Statement Stat = conn.createStatement();
			  
			  String sql = "SELECT * FROM onlineeventmngsystwm.event_uploader WHERE username = '"+User_N+"' AND password = '"+Pass_w+"'";
			  ResultSet res = Stat.executeQuery(sql);
			  
			  if(res.next()) {
				  int u_id = res.getInt(1);
				  String u_firstNamr = res.getString(2);
				  String u_lastName = res.getString(3);
				  String u_username = res.getString(4);
				  String u_password = res.getString(5);
				  String u_Eaddress = res.getString(6);
				  String u_contact = res.getString(7);
				  
				  A_eventUploader U1 = new A_eventUploader(u_id, u_firstNamr, u_lastName, u_username, u_password, u_Eaddress, u_contact);
				  user.add(U1);
			  }
		  }
		  catch(Exception e) {
			  e.printStackTrace();
		  }
		  return user;
	 }
}

//Event Manager Event Upload