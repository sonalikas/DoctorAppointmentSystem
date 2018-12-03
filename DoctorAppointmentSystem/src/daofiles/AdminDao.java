package daofiles;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dba.ConnectionProvider;

public class AdminDao {
	public static boolean validate(String email,String password){  //method
		  boolean status=false;
	try {	
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from adminlogin where email=? and password=?");
		    ps.setString(1,email);  
		    ps.setString(2,password);  
		    	         
	        ResultSet rs=ps.executeQuery();
	        status=rs.next();
	      //if status returns true login will success
		
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	return status;
	}	//end of method
}
	