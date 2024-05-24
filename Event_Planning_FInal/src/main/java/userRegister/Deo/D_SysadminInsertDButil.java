package userRegister.Deo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import userRegister.Model.D_Sysadmin;

public class D_SysadminInsertDButil {
		private static boolean isSuccess = false;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet Rs = null;
		private static int rs;
	
		public static boolean insertuploader(String ename,String edate,String ecode,String ecgory,String etheme,String evenue,String edescript,String eorgname,String eorgdt) {
		
		try {
            con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into onlineeventmngsystwm.sysadmin values(0,'"+ename+"','"+edate+"','"+ecode+"','"+ecgory+"','"+etheme+"','"+evenue+"','"+edescript+"','"+eorgname+"','"+eorgdt+"')";
			rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
		//Event Add
		
		
		
		
	}
		
		public static List<D_Sysadmin> getupdatejv(){
			   
			ArrayList<D_Sysadmin> D_Sysadmin = new ArrayList<>();
								
			try {	
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql ="select * from onlineeventmngsystwm.sysadmin";
				Rs =stmt.executeQuery(sql);
					
					while(Rs.next()) {
					int id = Rs.getInt(1);
					String ename = Rs.getString(2);
					String edate = Rs.getString(3);
					String ecode = Rs.getString(4);
					String ecgory = Rs.getString(5);
					String etheme = Rs.getString(6);
					String evenue = Rs.getString(7);
					String edescript = Rs.getString(8);
					String eorgname = Rs.getString(9);
					String eorgdt = Rs.getString(10);
							
					D_Sysadmin u = new D_Sysadmin(id,ename,edate,ecode,ecgory,etheme,evenue,edescript,eorgname,eorgdt);
					D_Sysadmin.add(u);
					}		
				}
				catch(Exception e) {
					e.printStackTrace();
					
				}

			   return D_Sysadmin;
		   }	
			 //Select All Event Manage
}
