package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

@WebServlet("/dangky")
public class dangky extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	connect c = new connect();
	c.DBConnectionManager();
	
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=UTF-8");
				HttpSession session = request.getSession();
				String ID= (String) session.getAttribute("ID");
				String MAHD = request.getParameter("ID");
				String sql = "INSERT INTO dangkyhd(MAhd,iddk,trangthai) value("+MAHD+","+ID+",0)";
				 try{;
					 int kq  = c.RunSQlUpdate(sql);
					 response.getWriter().write("Đăng ký thành công!");
				 
				 }
			       catch (Exception e) {
			    	   response.getWriter().write("Đăng ký thất bại!, bạn đã đăng ký rồi!");
			       }

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
