package daofiles;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import beans.AppointmentBean;
import dba.ConnectionProvider;

public class AppointmentDao {
		
	 public static int save(AppointmentBean ab){  
	        int status=0;  
	        try{  
	            Connection con=ConnectionProvider.getConnection();  		//	Sequence = appoint 
	            PreparedStatement ps=con.prepareStatement(  				//Table =appointment
	                         "insert into appointment(apid,name,email,contact,age,day,specialty,description,id) values(appoint.nextval,?,?,?,?,?,?,?,?)");  
	            
	            ps.setString(1,ab.getName()); 
	            ps.setString(2,ab.getEmail());
	            ps.setString(3,ab.getContact());
	            ps.setInt(4, ab.getAge());
	            ps.setString(5, ab.getDay());
	            ps.setString(6,ab.getSpecialty());  
	            ps.setString(7,ab.getDescription());
	            ps.setInt(8, ab.getId());
	            
	            status=ps.executeUpdate();  
	              
	            con.close();  
	        }catch(Exception ex)
	        {ex.printStackTrace();}  
	          
	        return status;  
	    }  
	 public static ArrayList<AppointmentBean> getAppointmentbyemail(String email)
	 {
	 	ArrayList<AppointmentBean> list=new ArrayList<>();
	 	try {
	 		Connection con=ConnectionProvider.getConnection();
	 		PreparedStatement ps=con.prepareStatement("select * from appointment where email=? order by day");
	 		ps.setString(1,email);
	 		ResultSet rs=ps.executeQuery();
	 		while (rs.next()) {
	 			AppointmentBean app=new AppointmentBean();
	 				app.setApid(rs.getInt(1));
	 			  	app.setName(rs.getString(2));  
	                app.setEmail(rs.getString(3));  
	                app.setContact(rs.getString(4));
	                app.setAge(rs.getInt(5));
	                app.setDay(rs.getString(6));
	                app.setSpecialty(rs.getString(7));
	                app.setDescription(rs.getString(8));
	                app.setId(rs.getInt(9));

	 			list.add(app);
	 		}
	 	} catch (Exception e) {
	 		e.printStackTrace();
	 	}
	 	return list;
	 }

	
	 
	 public static ArrayList<AppointmentBean> getAppointById(int id)
	 {
	 	ArrayList<AppointmentBean> list=new ArrayList<>();
	 	try {
	 		Connection con=ConnectionProvider.getConnection();
	 		PreparedStatement ps=con.prepareStatement("select * from appointment where id=? order by day");
	 		ps.setInt(1,id);
	 		ResultSet rs=ps.executeQuery();
	 		while (rs.next()) {
	 			AppointmentBean app=new AppointmentBean();
	 				app.setApid(rs.getInt(1));
	 			  	app.setName(rs.getString(2));  
	                app.setEmail(rs.getString(3));  
	                app.setContact(rs.getString(4));
	                app.setAge(rs.getInt(5));
	                app.setDay(rs.getString(6));
	                app.setSpecialty(rs.getString(7));
	                app.setDescription(rs.getString(8));
	                app.setId(rs.getInt(9));

	 			list.add(app);
	 		}
	 	} catch (Exception e) {
	 		e.printStackTrace();
	 	}
	 	return list;
	 }
	  public static int cancel(int apid){  
	        int status=0;  
	        try{  
	            Connection con=ConnectionProvider.getConnection();  
	            PreparedStatement ps=con.prepareStatement("delete from appointment where apid=?");  
	            ps.setInt(1,apid);  
	            status=ps.executeUpdate();  
	              
	            con.close();  
	        }catch(Exception e){e.printStackTrace();}  
	          
	        return status;  
	    }  

}
