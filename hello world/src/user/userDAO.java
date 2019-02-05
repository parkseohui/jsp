package user;

import java.sql.Connection;

import com.mysql.jdbc.PreparedStatement;
import util.databaseutil;

public class userDAO {

	public int join(String userid,String userpassword) {
		String sql="insert into user values(?,?)";
		try {
			Connection conn=databaseutil.getConnection();
			PreparedStatement pstmt=(PreparedStatement) conn.prepareStatement(sql);
			pstmt.setString(1,userid);
			pstmt.setString(2,userpassword);
			return pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
			
			
		}return -1;
		
	}
}
