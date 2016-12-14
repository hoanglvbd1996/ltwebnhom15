package mypackage;

import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/checkemail")
public class checkemail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		connect c = new connect();
		c.DBConnectionManager();
		ResultSet rs;
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String value=request.getParameter("value");
		String option=request.getParameter("option");
		HttpSession session = request.getSession();
		String ID= (String) session.getAttribute("ID");
		if(value.equals("checkemail") && option.equals("add"))
		{
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			String email = request.getParameter("email");
			String sqlemail = "select * from user where email ='"+email+"'";
			try{
				
				rs = c.RunSQlExec(sqlemail);
				rs.last();
				int numrow = rs.getRow();
				rs.beforeFirst();
				if(numrow == 0)
				{
					response.getWriter().write("Email không tồn tại!");
				}
				else{
					response.getWriter().write("Email hợp lệ");
				}
				}
					 catch (Exception e) {
								 response.getWriter().write(e.toString());
					 }
		}
		if(value.equals("tinnhan") && option.equals("add"))
		{
			request.setCharacterEncoding("UTF-8");
			ResultSet  lastid;
			response.setContentType("text/html;charset=UTF-8");
			String email = request.getParameter("email");
			String tieude = request.getParameter("tieude");
			String noidung = request.getParameter("noidung");
			String sqlemail = "select ID from user where email ='"+email+"'";
			String sql = "insert into tinnhan(thoigiangui,noidung,tieude,thoigianxem) values (now(),'"+noidung+"','"+tieude+"',now())";
			 try{
				rs = c.RunSQlExec(sqlemail);
				rs.last();
				int numrow = rs.getRow();
				rs.beforeFirst();
				if(numrow == 0)
				{
					response.getWriter().write("Email không tồn tại!");
				}
				else{
					
					int kq  = c.RunSQlUpdate(sql);
					lastid = c.RunSQlExec("select max(matn) as LI from tinnhan");
					if(rs.next())
					{
						if(lastid.next())
						{
							int kq1 = c.RunSQlUpdate("insert into tinnhannhan(matnn,idnguoinhan) values("+lastid.getInt("LI")+","+rs.getInt("ID")+")");
							int kq2 = c.RunSQlUpdate("insert into tinnhangui(matng,idnguoigui) values("+lastid.getInt("LI")+","+ID+")");		
						}	
					response.getWriter().write("Gửi thành công!");
					}
				}
			 }
		       catch (Exception e) {
		    	   response.getWriter().write(e.toString());
		    	   }
		}
		if(value.equals("diemdanh") && option.equals("add"))
		{
			String mahd = request.getParameter("mahd");
			String id = request.getParameter("id");
			String test = "select * from dangkyhd,user where dangkyhd.iddk = user.id and mahd ="+mahd+" and iddk ="+id+"";
			String sql1 ="update dangkyhd set  trangthai = 1 where mahd ="+mahd+" and iddk ="+id+"";
			String sql0 ="update dangkyhd set  trangthai = 0 where mahd ="+mahd+" and iddk ="+id+"";
			
			 try{
				 rs  = c.RunSQlExec(test);
				 
				 if(rs.next())
				 {
					 int trangthai  = rs.getInt("trangthai");
					 	switch(trangthai)
					 	{
					 		case 1 :int kq  = c.RunSQlUpdate(sql0);break;
					 		case 0: int kq1  = c.RunSQlUpdate(sql1);break;
					 	}
					response.getWriter().write("Các thay đổi đã lưu!"
							+ "	 Đoàn viên :"+rs.getString("Hoten"));		
				 }
				 
			 }
			  catch (Exception e) {
		    	   response.getWriter().write(e.toString());
		    	   }
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
