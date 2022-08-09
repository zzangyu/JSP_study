package com.jdbc;

import java.sql.*;
import java.util.*;
import com.jdbc.*;

public class TempMemberDAO {
	
	private final String JDBC_DRIVER = "";
	private final String JDBC_URL = "";
	private final String USER = "";
	private final String PASS = "";
	
	
	public TempMemberDAO() {
		try {
			Class.forName(JDBC_DRIVER);
		} catch (Exception e) {
			System.out.println("Error : JDBC DRIVER 로딩 실패");
		}
	}
	
	public Vector<TempMemberVO> getMemberList() {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		Vector<TempMemberVO> vecList = new Vector<TempMemberVO>();
		
		try {
			conn = DriverManager.getConnection(JDBC_URL,USER,PASS);
			
			String strQuery = "select * from tempmember";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(strQuery);
			
		} catch (SQLException ss) {
			System.out.println("sql Exception");
		} catch (Exception e) {
			System.out.println("Exception");
		} finally {
			if(conn != null) try{ conn.close(); }catch(SQLException s1){}
			if(stmt != null) try{ stmt.close(); }catch(SQLException s2){}
			if(rs != null) try{ rs.close(); }catch(SQLException s3){}
		}
		
	}
	
}
