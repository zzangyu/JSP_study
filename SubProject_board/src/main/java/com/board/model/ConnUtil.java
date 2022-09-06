package com.board.model;

import java.sql.*;
import javax.naming.*;
import javax.sql.DataSource;

public class ConnUtil {
	
	private static DataSource ds;
	
	static {
		
		try {
			
			InitialContext ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:/comp/env/jdbc/myoracle");
			
		} catch (NamingException ne) {
			ne.printStackTrace();
		}
		
	}
	
	public static Connection getConnection() throws SQLException {
		return ds.getConnection();
	}
	
}
