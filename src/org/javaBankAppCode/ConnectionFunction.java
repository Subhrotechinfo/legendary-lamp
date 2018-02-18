package org.javaBankAppCode;

import java.sql.*;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class ConnectionFunction {
	private ConnectionFunction(){
		//no arg constructor
	}
	
	public static Connection con=null;
	
	static{ 	//static block gets the connection
		
				try {
						Context ctx= new InitialContext();
						DataSource ds= (DataSource) ctx.lookup("java:/comp/env/jdbc/bankappdb");
						con=ds.getConnection();
						
						
				} catch ( SQLException | NamingException e) {
					e.printStackTrace();
				}
	}
	public static Connection getConnection(){
		return con;
	}

}