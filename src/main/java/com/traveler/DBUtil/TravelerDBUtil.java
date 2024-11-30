package com.traveler.DBUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.guide.Guide;
import com.guide.DBUtil.DBConnect;
import com.traveler.Traveler;

public class TravelerDBUtil {
	
    	private static boolean isSuccess;
    	private static Connection con=null;
    	private static Statement stmt=null;
    	private static ResultSet rs=null;
    	
    	
    	public static List<Traveler> validate(String username,String password){
    		
    		ArrayList<Traveler> tr = new ArrayList<>();
    		
    		try {   	
    			
    			con = DBConnect.getConnection();
    			stmt=con.createStatement();
    			//validate username and password SqlQuire			
    			String sql="select *from traveler where username='"+username+"' and password='"+password+"'";			
    			rs=stmt.executeQuery(sql);
    			
    			if(rs.next()) {
    					int id = rs.getInt("travelerId");
    					String name = rs.getString("name");
    	                String nic = rs.getString("NIC");
    	                String email = rs.getString("email");
    	                String phone = rs.getString("phone");
    	                String country = rs.getString("country");
    	                String uname = rs.getString("username");
    	                String psw = rs.getString("password");
    				//data passing for class
    				Traveler t = new Traveler(id, name, nic, email, phone, country, uname, psw);
                    
    				//data passing for ArryList
    				
    				tr.add(t);
    			}
    			
    		} catch (Exception e) {
    			e.printStackTrace();
    		}
    		return tr;
    	}
    	
    	
        public static boolean inserttravel(String name,String nic, String email, String phone,String country, String username, String password) {
        	
        	boolean isSuccess = false;
        	
        	try {
        		con = DBConnect.getConnection();
        		stmt = con.createStatement();
        	    String sql = "insert into traveler values (0,'"+name+"','"+nic+"','"+email+"','"+phone+"','"+country+"','"+username+"','"+password+"')";
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
    	
    	public static ArrayList<Traveler> gettravler(String Id) {
    		
    		int convertedId =Integer.parseInt(Id);
    		
    		ArrayList<Traveler> tr = new ArrayList<>();
    			try {
    				con = DBConnect.getConnection();
    				stmt=con.createStatement();
    				
    				
    				String sql="select * from traveler where travelerId='"+convertedId+"'";
    				
    				rs=stmt.executeQuery(sql);
    				while (rs.next()) {
    	                int id = rs.getInt("travelerId");
    	                String name = rs.getString("name");
    	                String nic = rs.getString("NIC");
    	                String email = rs.getString("email");
    	                String phone = rs.getString("phone");
    	                String country = rs.getString("country");
    	                String username = rs.getString("username");
    	                String password = rs.getString("password");

    	                Traveler t = new Traveler(id, name, nic, email, phone, country, username, password);
    	                tr.add(t);
    	            }
    				
    				
    				} catch (Exception e) {
    					// TODO: handle exception
    					e.printStackTrace();
    				}
    			
    			
    				return tr;
    	}
        
        public  static ArrayList<Traveler> selectAllTravel() {
    		
    		
    		ArrayList<Traveler> tr = new ArrayList<>();
    		
    		try {   	
    			
    			con = DBConnect.getConnection();
    			stmt=con.createStatement();
    				
    				String sql="select * from traveler";
    				
    				rs=stmt.executeQuery(sql);
    				while (rs.next()) {
    	                int id = rs.getInt("travelerId");
    	                String name = rs.getString("name");
    	                String nic = rs.getString("NIC");
    	                String email = rs.getString("email");
    	                String phone = rs.getString("phone");
    	                String country = rs.getString("country");
    	                String username = rs.getString("username");
    	                String password = rs.getString("password");

    	                Traveler t = new Traveler(id, name, nic, email, phone, country, username, password);
    	                tr.add(t);
    	            }
    				
    				
    				} catch (Exception e) {
    					
    					e.printStackTrace();
    				}
    			
    			
    				return tr;
    	}
    	
    	
    	
    	public static boolean updatetraveler(String id,String name,String nic, String email, String phone,String country, String username, String password) {

    		
    		try {
    			
    			con = DBConnect.getConnection();
    			stmt=con.createStatement();
    			
    			String sql=" update traveler set name='"+name+"',NIC='"+nic+"',email='"+email+"',phone='"+phone+"',country='"+country+"',username='"+username+"',password='"+password+"' "
    							+"where travelerId='"+id+"'";
    			
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
    	
    	
        public static boolean deletetraveler(String id) {
        	
        	int convId = Integer.parseInt(id);
        	
        	try {
        		
        		con = DBConnect.getConnection();
        		stmt = con.createStatement();
        		String sql = "delete from traveler where travelerId='"+convId+"'";
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
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	

}