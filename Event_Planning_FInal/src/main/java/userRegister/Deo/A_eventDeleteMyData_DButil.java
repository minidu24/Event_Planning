package userRegister.Deo;

import java.sql.Connection;
import java.sql.Statement;

public class A_eventDeleteMyData_DButil {
		private static boolean result;
		private static Connection con = null;
		private static Statement stmt = null;
		private static int rs;
		
		public static boolean Delete_Profile(String id) {
			int Id = Integer.parseInt(id);
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String SQL_Query2 = "DELETE FROM onlineeventmngsystwm.event_uploader WHERE id = '"+Id+"'";
				rs = stmt.executeUpdate(SQL_Query2);
				
				if(rs > 0) {
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

//RegistedCustomer Event Upload