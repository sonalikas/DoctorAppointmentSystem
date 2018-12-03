package daofiles;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.feedbackbean;
import dba.ConnectionProvider;

public class GeneralDao {
		
	 public static int save(feedbackbean fb){  
	        int status=0;  
	        try{  
	            Connection con=ConnectionProvider.getConnection();  
	            PreparedStatement ps=con.prepareStatement(  
	                         "insert into feedback(name,email,contact,suggestion) values(?,?,?,?)");  
	            
	            ps.setString(1,fb.getName()); 
	            ps.setString(2,fb.getEmail());
	            ps.setString(3,fb.getContact());     
	            ps.setString(4,fb.getSuggestion());  
	            
	            status=ps.executeUpdate();  
	              
	            con.close();  
	        }catch(Exception ex)
	        	{
	        	ex.printStackTrace();
	        	}  
	          
	        return status;  
	    }  
	 
	  public static List<feedbackbean> getfeedback(){  
	        List<feedbackbean> list=new ArrayList<feedbackbean>();  
	          
	        try{  
	            Connection con=ConnectionProvider.getConnection();  
	            PreparedStatement ps=con.prepareStatement("select * from feedback ORDER BY name");  
	            ResultSet rs=ps.executeQuery();  
	            while(rs.next()){  
	            	feedbackbean fb=new feedbackbean();  
	                fb.setName(rs.getString(1));  
	                fb.setEmail(rs.getString(2));
 			        fb.setContact(rs.getString(3));
 			        fb.setSuggestion(rs.getString(4));
	                list.add(fb);  
	            }  
	            con.close();  
	        }catch(Exception e){e.printStackTrace();}  
	          
	        return list;  
	    }  

}
