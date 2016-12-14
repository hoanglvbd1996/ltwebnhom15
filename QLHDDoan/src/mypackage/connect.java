package mypackage;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import 	java.sql.Statement;
 import	java.sql.Connection;
 import	java.lang.String;


@WebServlet("/connect")
public class connect extends HttpServlet {
	public Connection conn = null;
	public Statement stat = null;
	private static final long serialVersionUID = 1L;	
		
			public  void DBConnectionManager(){
				try {
					Class.forName("com.mysql.jdbc.Driver");
					String url= "jdbc:mysql://localhost:3306/QLHDDoan";
					
					this.conn = (Connection) DriverManager.getConnection(url,"root","root");	
				}
			 catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}				
			}
			public ResultSet RunSQlExec(String sql) throws SQLException {
				stat = (Statement) conn.createStatement();
				return stat.executeQuery(sql);
			}
			public int RunSQlUpdate(String sql) throws SQLException {
				stat = (Statement) conn.createStatement();
				return stat.executeUpdate(sql);
			}
		
}

	 