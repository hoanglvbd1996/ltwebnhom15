package mypackage;


import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/checkaccount")
public class checkaccount   extends  HttpServlet{
	private static final long serialVersionUID = 1L;
   
    public checkaccount() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		connect c = new connect();
		c.DBConnectionManager();
		ResultSet rs = null;
		try {
		HttpSession session = request.getSession();
		String username=request.getParameter("user");
        String password=request.getParameter("password");
        String chucvu=request.getParameter("chucvu");
        String query = "select * from user where Username = '"+username+"' and Password = '"+password+"' and MaQuyen = "+chucvu+"";

      
    	
			rs =  c.RunSQlExec(query);
			rs.last();
			int numrow = rs.getRow();
			rs.beforeFirst();
			 if(numrow == 0)
			 {
				   response.setContentType("text/html;charset=UTF-8");
			       response.getWriter().write("Đăng nhập thất bại");
			 }else{
				
						if (rs.next()){
							  response.setContentType("text/html;charset=UTF-8");
						    session.setAttribute("username", username);
						    session.setAttribute("chucvu",chucvu);
						    session.setAttribute("ID",rs.getString("ID"));
						    session.setAttribute("MaQuyen",rs.getString("MaQuyen"));
						    session.setAttribute("Timelogin",rs.getString("MaQuyen"));
						    session.setAttribute("TimeLogout",rs.getString("MaQuyen"));
						    
						    int kq =  c.RunSQlUpdate("update login set timelogin = now() where ID = "+rs.getString("ID")+"");
						}
							
				 response.getWriter().write("1");
			 }
			
		} catch (SQLException e2) {
			 response.getWriter().write(e2.toString());
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	
		doGet(request, response);
	}


}
