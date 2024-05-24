package userRegister.Deo;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static String url = "jdbc:mysql://127.0.0.1:3306/onlineeventmngsystwm";
	private static String user = "root";
	private static String pass = "root";
	private static Connection Conn_Result;

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Conn_Result = DriverManager.getConnection(url, user, pass);
			
		}
		catch (Exception e) {
			System.out.println("Database connection isn't success!!!, Plz check connectivity of the data base");
		}
		
		return Conn_Result;
	}
}
