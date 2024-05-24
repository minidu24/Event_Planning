package userRegister.Deo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import userRegister.Model.Searching;

public class Search_DButil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet Rs;
	
	public static List<Searching> SearchMT(String search){
		   
		ArrayList<Searching> Search_Result = new ArrayList<>();
							
		try {	
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String SQL_Query ="SELECT * FROM onlineeventmngsystwm.sysadmin WHERE ename = '"+search+"'";
			Rs = stmt.executeQuery(SQL_Query);
				
				if(Rs.next()) {
				String ename = Rs.getString(2);
				String edate = Rs.getString(3);
				String ecode = Rs.getString(4);
				String ecgory = Rs.getString(5);
				String etheme = Rs.getString(6);
				String evenue = Rs.getString(7);
				String edescript = Rs.getString(8);
						
				Searching Sch = new Searching(ename,edate,ecode,ecgory,etheme,evenue,edescript);
				Search_Result.add(Sch);
				}		
			}
			catch(Exception e) {
				e.printStackTrace();
				
			}

		   return Search_Result;
	   }	
}
