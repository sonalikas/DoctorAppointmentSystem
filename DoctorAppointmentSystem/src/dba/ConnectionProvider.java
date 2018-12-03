package dba;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	public static Connection getConnection()
	{
		Connection con=null;
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
	
	} catch (Exception e) {
		System.out.println("Error "+e);
	}
	return con;
	}

	}
