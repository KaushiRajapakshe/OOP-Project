import java.sql.*;

public class dbConnection {
		public static void Connection(String url , String username , String password) {
		try {
			
		Connection conn = DriverManager.getConnection(url,username,password);
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	
		}
	public static void main(String args[]) {
		
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/blueline";
		String username = "root";
		String password = "";
		
		try {
		Class.forName(driver);
		
		Connection(url, username, password);
		
		System.out.println("Successfull");
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("Unsuccessfull");
		}
		
	}
}
