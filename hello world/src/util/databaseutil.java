package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class databaseutil {
	public static Connection getConnection() {
		try {
			String dburl="jdbc:mysql://localhost:3306/tutorial";
			String dbid="root";
			String dbpassword="onlyroot";
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(dburl,dbid,dbpassword);
		}catch(Exception e){
			e.printStackTrace();
			
		}return null;
	}
}
