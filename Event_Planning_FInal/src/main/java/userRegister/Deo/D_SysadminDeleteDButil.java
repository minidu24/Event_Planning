package userRegister.Deo;

import java.sql.Connection;
import java.sql.Statement;

public class D_SysadminDeleteDButil {
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static int rs;
		
		
		public static boolean updateupdetails(String id,String ename,String edate,String ecode,String ecgory,String etheme,String evenue,String edescript,String eorgname,String eorgdt){
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "update onlineeventmngsystwm.sysadmin set ename='"+ename+"', edate='"+edate+"' , ecode='"+ecode+"' , ecgory='"+ecgory+"' , etheme='"+etheme+"' , evenue='"+evenue+"' , edescript='"+edescript+"' , eorgname='"+eorgname+"' , eorgdt='"+eorgdt+"' where id='"+id+"' ";
				rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
				
			}
			
			//Update Event 
			
			return isSuccess;
		}
		
		public static boolean deleteupdetails(String id) {
			int convId = Integer.parseInt(id);//convert int to id
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "delete from onlineeventmngsystwm.sysadmin where id='"+convId+"'";
				rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
				
			}
			
			return isSuccess;
		}
		
}

//Event Delete

