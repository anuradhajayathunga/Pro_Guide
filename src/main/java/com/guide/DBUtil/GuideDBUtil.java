package com.guide.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.guide.Guide;




public class GuideDBUtil {
	
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static List<Guide> validate(String username,String password){
		
		ArrayList<Guide> cus = new ArrayList<>();
		
		
		try {
			
	
			
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			//validate username and password SqlQuire			
			String sql="select *from Guide where username='"+username+"' and password='"+password+"'";			
			rs=stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String email=rs.getString(3);
				String phone=rs.getString(4);
				String userU=rs.getString(5);
				String pswU=rs.getString(6);
				
				//data passing for class
				Guide c= new Guide(id,name,email,phone,userU,pswU);
				
				//data passing for ArryList
				
				cus.add(c);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cus;
				
	}

	
    public static boolean insertguide(String name, String email, String phone, String username, String password) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into guide values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
	
	
	
	public static boolean updateguide(String id,String name,String email,String phone,String userName,String password) {

		
		try {
			
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql=" update guide set Name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+userName+"',password='"+password+"' "
							+"where GID='"+id+"'";
			
			int rs=stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess=true;
				
			}else {
				isSuccess=false;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	public static ArrayList<Guide> getGuideDetails(String Id) {
		
		int convertedId =Integer.parseInt(Id);
		
		ArrayList<Guide> gu =new ArrayList<>();
			try {
				con = DBConnect.getConnection();
				stmt=con.createStatement();
				
				
				String sql="select * from guide where GID='"+convertedId+"'";
				
				rs=stmt.executeQuery(sql);
				while(rs.next()) {
					
					int id=rs.getInt(1);
					String name=rs.getString(2);
					String email=rs.getString(3);
					String phone=rs.getString(4);
					String userU=rs.getString(5);
					String pswU=rs.getString(6);
					
					Guide g=new Guide(id,name,email,phone,userU,pswU);
					gu.add(g);
					
				}
				
				
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			
			
				return gu;
	}
	
	
	
	
    public static boolean deleteCustomer(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from guide where GID='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
	
	public  static ArrayList<Guide> selectAllGuide() {
		
		
		ArrayList<Guide> gu =new ArrayList<>();
			try {
				con = DBConnect.getConnection();
				stmt=con.createStatement();
				
				
				String sql="select * from guide";
				
				rs=stmt.executeQuery(sql);
				while(rs.next()) {
					
					int id=rs.getInt("GID");
					String name=rs.getString("Name");
					String email=rs.getString("email");
					String phone=rs.getString("phone");
					String username=rs.getString("username");
					String password=rs.getString("password");
					
					Guide g=new Guide(id,name,email,phone,username,password);
					gu.add(g);
					
				}
				
				
				} catch (Exception e) {
					
					e.printStackTrace();
				}
			
			
				return gu;
	}

   

 

	
}
