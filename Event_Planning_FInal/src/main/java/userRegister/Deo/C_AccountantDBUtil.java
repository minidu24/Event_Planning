package userRegister.Deo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import userRegister.Model.C_Accountant;

public class C_AccountantDBUtil {
	private static ResultSet rs = null;
	private static boolean isSuccess = false;
	
	public static boolean tvseriesinsert(String e_Name, String e_Code, String t_Cost, String e_dis, String a_Dicession) {
		
		boolean isAdd = false;
		
		Connection con = DBConnect.getConnection();
		
		try {
			
			Statement stmt = con.createStatement();
			
			String sql = "insert into onlineeventmngsystwm.accountant values('"+e_Name+"','"+e_Code+"','"+t_Cost+"','"+e_dis+"','"+a_Dicession+"')";
			int ns = stmt.executeUpdate(sql);
			
			if(ns > 0) {
				isAdd = true;
			}else {
				isAdd = false;
			}
			
		}
		
		//Accountent Details 
		catch(Exception e){
			e.printStackTrace();
		}
		
		
		return isAdd;
	}

	
	
	public static boolean updatetvseries(String e_Name, String e_Code, String t_Cost, String e_dis, String a_Dicession) {

		Connection con = DBConnect.getConnection();
		
		try {
		
			Statement stmt = con.createStatement();
			String sql = "SELECT * FROM onlineeventmngsystwm.accountant WHERE eName = '"+e_Name+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		
		//Accountent Add bill
		
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	public static List<C_Accountant> inserttvseries(String e_Name) {
		ArrayList<C_Accountant> tv_Series = new ArrayList<>();
		
		//private static boolean isSuccess;
		//private static connection con =null;
		
		

		Connection con = DBConnect.getConnection();
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Statement stmt = con.createStatement();
			String sql = "SELECT * FROM onlineeventmngsystwm.accountant WHERE eName = '"+e_Name+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String e_Name1 = rs.getString(1);
				String e_Code = rs.getString(2);
				String t_Cost = rs.getString(3);
				String e_dis = rs.getString(4);
				String a_Dicession = rs.getString(5);
				
				C_Accountant S1 = new C_Accountant(e_Name1, e_Code, t_Cost, e_dis, a_Dicession);
				tv_Series.add(S1);
				
			}		
		}
		
		
		//SelectAll bills
		catch (Exception e){
			e.printStackTrace();
		}
		
		return tv_Series;
		
	}
	
	public static boolean update(String e_Name, String e_Code, String t_Cost, String e_dis, String a_Dicession) {
	
	boolean isSuccess = false;
	
	//private static boolean isSuccess;
	//private static connection con =null;
	//createDBconnection

	Connection con = DBConnect.getConnection();
	
	
		try {

			Statement stmt = con.createStatement();
			String sql1 = "update onlineeventmngsystwm.accountant set eCode='"+e_Code+"',tCost='"+t_Cost+"',dis='"+e_dis+"',aDicession='"+a_Dicession+"'" 
					+ "where eName='"+e_Name+"'";		
			
			int rs = stmt.executeUpdate(sql1);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
		}
		
		//Update Bill
		catch (Exception e){
			e.printStackTrace();
		}
	
		return isSuccess;
	}
	
	public static List<C_Accountant> retriew_Data(String e_Name) {
		ArrayList<C_Accountant> Updated_Data = new ArrayList<>();
		
		//private static boolean isSuccess;
		//private static connection con =null;
		
		
		//createDBconnection

		Connection con = DBConnect.getConnection();
		
		
		try {
			
			Statement stmt = con.createStatement();
			String sql = "SELECT * FROM onlineeventmngsystwm.accountant WHERE eName = '"+e_Name+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String e_Name1 = rs.getString(1);
				String e_Code = rs.getString(2);
				String t_Cost = rs.getString(3);
				String e_dis = rs.getString(4);
				String a_Dicession = rs.getString(5);
				
				C_Accountant List = new C_Accountant(e_Name1, e_Code, t_Cost, e_dis, a_Dicession);
				Updated_Data.add(List);
				
			}		
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return Updated_Data;
		
	}
	
	public static boolean deletetvseries(String e_Name) {
		
		//int convTv = Integer.parseInt(name);
		
		Connection con = DBConnect.getConnection();
		
		
		try {
			
		
			Statement stmt = con.createStatement();
			
			String sql="delete from onlineeventmngsystwm.accountant where eName='"+e_Name+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}



}
