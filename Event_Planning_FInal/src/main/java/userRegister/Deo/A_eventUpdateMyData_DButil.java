package userRegister.Deo;

import java.sql.Connection;
import java.sql.Statement;

public class A_eventUpdateMyData_DButil {
	private static boolean result;
	private static Connection con = null;
	private static Statement stmt = null;
	private static int rs;
	
	public static boolean Update_MyData(String id, String firstname, String lastname, String username, String password, String email, String contact) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String SQL_Quary = "UPDATE onlineeventmngsystwm.event_uploader SET first_name='"+firstname+"',last_name='"+lastname+"',username='"+username+"',password='"+password+"',email_address='"+email+"',contact='"+contact+"'" + "WHERE id='"+id+"'";
			rs = stmt.executeUpdate(SQL_Quary);
			
			if(rs>0) {
				result = true;
			}else {
				result = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}

//Uploader 