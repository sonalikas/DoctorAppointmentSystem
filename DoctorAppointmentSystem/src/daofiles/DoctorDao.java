package daofiles;	
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dba.ConnectionProvider;
import beans.DocBean;

public class DoctorDao {
	
	public static boolean validate(String email,String password){  
		  boolean status=false;
	try {	
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from doctors where email=? and password=?");
		    ps.setString(1,email);  
		    ps.setString(2,password);  
		    	         
	        ResultSet rs=ps.executeQuery();
	        status=rs.next();
	    	
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	return status;
}
	
	 public static int save(DocBean db){  
	        int status=0;  
	        try{  
	            Connection con=ConnectionProvider.getConnection();  
	            PreparedStatement ps=con.prepareStatement(  
	                         "insert into doctors(id,docname,email,password,specialty,contact) values(docseq.nextval,?,?,?,?,?)");  
	            
	            ps.setString(1,db.getDocname()); 
	            ps.setString(2,db.getEmail());
	            ps.setString(3,db.getPassword());              
	            ps.setString(4,db.getSpecialty());  
	            ps.setString(5,db.getContact());
	              
	            status=ps.executeUpdate();  
	              
	            con.close();  
	        }catch(Exception ex)
	        {ex.printStackTrace();}  
	          
	        return status;  
	    }  
	    public static int update(DocBean doc){  
	        int status=0;  
	        try{  
	            Connection con=ConnectionProvider.getConnection();  
	            PreparedStatement ps=con.prepareStatement(  
	                         "update doctors set docname=?,password=?,contact=? where email=?");  
	            ps.setString(1,doc.getDocname()); 
	            ps.setString(2,doc.getPassword());   
	            ps.setString(3,doc.getContact());
	            ps.setString(4,doc.getEmail());  
	            status=ps.executeUpdate();  
	              
	            con.close();  
	        }catch(Exception ex){ex.printStackTrace();}  
	          
	        return status;  
	    }  
	    public static int delete(int id){  
	        int status=0;  
	        try{  
	            Connection con=ConnectionProvider.getConnection();  
	            PreparedStatement ps=con.prepareStatement("delete from doctors where id=?");  
	            ps.setInt(1,id);  
	            status=ps.executeUpdate();  
	              
	            con.close();  
	        }catch(Exception e){e.printStackTrace();}  
	          
	        return status;  
	    }  
	    public static DocBean getDoctor(int id,String email){  
	        DocBean dbe=new DocBean();  
	          
	        try{  
	            Connection con=ConnectionProvider.getConnection();  
	            PreparedStatement ps=con.prepareStatement("select * from Doctors where id=? and email=?");  
	            ps.setInt(1,id);  
	            ps.setString(2,email);
	            ResultSet rs=ps.executeQuery();  
	            if(rs.next()){  
	                dbe.setId(rs.getInt(1));  
	                dbe.setDocname(rs.getString(2));  
	                dbe.setEmail(rs.getString(3));  
	                dbe.setPassword(rs.getString(4));
	                dbe.setSpecialty(rs.getString(5));  
	                dbe.setContact(rs.getString(6));
	            }  
	            con.close();  
	        }catch(Exception ex){ex.printStackTrace();}  
	          
	        return dbe;  
	    }  
	    public static List<DocBean> getAllDoctors(){  
	        List<DocBean> list=new ArrayList<DocBean>();  
	          
	        try{  
	            Connection con=ConnectionProvider.getConnection();  
	            PreparedStatement ps=con.prepareStatement("select * from doctors ORDER BY id");  
	            ResultSet rs=ps.executeQuery();  
	            while(rs.next()){  
	                DocBean db=new DocBean();  
	                db.setId(rs.getInt(1));  
	                db.setDocname(rs.getString(2));  
 	                db.setEmail(rs.getString(3));
   			        db.setPassword(rs.getString(4)); 	
	                db.setSpecialty(rs.getString(5));
    				db.setContact(rs.getString(6)); 	
	                list.add(db);  
	            }  
	            con.close();  
	        }catch(Exception e){e.printStackTrace();}  
	          
	        return list;  
	    }  
}
