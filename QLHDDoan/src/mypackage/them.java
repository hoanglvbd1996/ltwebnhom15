package mypackage;

import java.io.*;


import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/them")
@MultipartConfig(maxFileSize = 16177215)
public class them extends HttpServlet {
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

		if(value.equals("thaoluan") && option.equals("add"))
		{
			
		
		
	  		String TieuDe=request.getParameter("tendetai");
	  		String noidung= request.getParameter("noidung");
	  		String query = "insert into thaoluan(tieude,ThoiGianGui,NoiDung,Idnguoidang) values('"+TieuDe+"',now(),'"+noidung+"',"+ID+")";
	  			    try{
						 int kq  = c.RunSQlUpdate(query);
						 response.getWriter().write("Gửi thảo luận thành công!");
					 
					 }
				       catch (Exception e) {
				    	   response.getWriter().write("Gửi thảo luận thất bại!"+e);
				    	   }
		}
		if(value.equals("hoatdong") && option.equals("add"))
				{
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=UTF-8");
				String tenhd = request.getParameter("tenhd");
				String diadiem = request.getParameter("diadiem");
				String ThoiGianBatDau = request.getParameter("tgbatdau");
				String Diemrl = request.getParameter("diemrl");
				String diemctxh = request.getParameter("diemctxh");
				String trangthai = request.getParameter("trangthai");
				String noidung = request.getParameter("noidung");
				String sql = "call sp_ThemHD('"+tenhd+"','"+ThoiGianBatDau+"','"+diadiem+"',"+Diemrl+","+diemctxh+",'"+noidung+"','null',"+ID+","+trangthai+")";
				 try{
					
					 int kq  = c.RunSQlUpdate(sql);
					 response.getWriter().write("Thêm thành công!");
				 
				 }
			       catch (Exception e) {
			    	   response.getWriter().write("Thêm thất bại!"+e);
			    	   }
				}
		if(value.equals("binhluan") && option.equals("add"))
		{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String noidungbl = request.getParameter("NoiDungBL");
		String matl = request.getParameter("matl");
		String sql = "insert into binhluan(IDNguoiTL,thoigianbl,noidungbl,matl) values ("+ID+",now(),'"+noidungbl+"',"+matl+")";
		 try{
			 int kq  = c.RunSQlUpdate(sql);
				response.getWriter().write("Để lại bình luận thành công!");
		 
		 }
	       catch (Exception e) {
	    	   response.getWriter().write("Thêm thất bại!"+e);
	    	   }
		}
		if(value.equals("chidoan") && option.equals("add"))
		{
			  PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String tencd = request.getParameter("tenchidoan");
		String MaCB = request.getParameter("MaCB");
		String sqlmax = "select max(id) as max from chidoan";
		String sql1 = "insert into chidoan(tencd) values ('"+tencd+"')";
		 try{
			int kq  = c.RunSQlUpdate(sql1);
			rs = c.RunSQlExec(sqlmax);			
					if(rs.next())
					{ 
						int kq2 = c.RunSQlUpdate("update  user set macd ="+rs.getInt("max")+" where id ="+MaCB+"");			
					}
					response.getWriter().write("Thêm thành công!");
					
			}
	       catch (SQLException e) {
	    	   response.getWriter().write("Thêm thất bại"+e);
	       }
		}
		if(value.equals("doanvien") && option.equals("add"))
		{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String username = request.getParameter("username");
		String password = request.getParameter("pass");
		String mssv = request.getParameter("mssv");
		String khoa = request.getParameter("khoa");
		String lop = request.getParameter("lop");
		String gioitinh = request.getParameter("gioitinh");
		String ngayvaodoan = request.getParameter("ngayvaodoan");
		String namsinh = request.getParameter("namsinh");
		String hoten = request.getParameter("hoten");
		String sdt = request.getParameter("sdt");
		String email = request.getParameter("email");
		String cmnd = request.getParameter("cmnd");
		String diachi = request.getParameter("diachi");
		String maquyen = request.getParameter("maquyen");
		String machucvu = request.getParameter("machucvu");
		String macd = request.getParameter("macd");
		String sql1 = "call sp_Themdoanvien('"+username+"','"+password+"',"+mssv+",'"+hoten+"','"+gioitinh+"','"+namsinh+"',"+sdt+",'"+email+"','"+diachi+"','"+khoa+"','"+lop+"','"+ngayvaodoan+"',"+machucvu+","+macd+","+maquyen+",'"+cmnd+"')";

		 try{
			 int kq  = c.RunSQlUpdate(sql1);
			
			 String  max = "select max(id) as max from user ";
			 rs = c.RunSQlExec(max);
			 if(rs.next())
			 {
				 int kq2  = c.RunSQlUpdate( "insert into login(ID) values ("+rs.getString("max")+")");
			 }
			 response.getWriter().write("Thêm thành công!");
		 }
	       catch (Exception e) {
	    	   response.getWriter().write("Thêm thất bại!"+e);
	    	   }
		}
		if(value.equals("taikhoan") && option.equals("add"))
		{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String username = request.getParameter("username");
		String password = request.getParameter("pass");
		String mssv = request.getParameter("mssv");
		String khoa = request.getParameter("khoa");
		String lop = request.getParameter("lop");
		String gioitinh = request.getParameter("gioitinh");
		String ngayvaodoan = request.getParameter("ngayvaodoan");
		String namsinh = request.getParameter("namsinh");
		String hoten = request.getParameter("hoten");
		String sdt = request.getParameter("sdt");
		String email = request.getParameter("email");
		String cmnd = request.getParameter("cmnd");
		String diachi = request.getParameter("diachi");
		String maquyen = request.getParameter("maquyen");
		String machucvu = request.getParameter("machucvu");
		String macd = request.getParameter("macd");
		String sql1 = "call sp_Themdoanvien('"+username+"','"+password+"',"+mssv+",'"+hoten+"','"+gioitinh+"','"+namsinh+"',"+sdt+",'"+email+"','"+diachi+"','"+khoa+"','"+lop+"','"+ngayvaodoan+"',"+machucvu+","+macd+","+maquyen+",'"+cmnd+"')";

		 try{
			 int kq  = c.RunSQlUpdate(sql1);
			 String  max = "select max(id) as max from user ";
			 rs = c.RunSQlExec(max);
			 if(rs.next())
			 {
				 int kq2  = c.RunSQlUpdate( "insert into login(ID) values ("+rs.getString("max")+")");
			 }
			
			 response.getWriter().write("Thêm thành công!");
			 
		 
		 }
	       catch (Exception e) {
	    	   response.getWriter().write("Thêm thất bại!"+e);
	    	   }
		}
		if(value.equals("thongbao") && option.equals("add"))
		{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String tentb = request.getParameter("tentbb");
		String noidung = request.getParameter("noidungg");
		 try{
			 String sql2 = "call sp_themdthongbao("+ID+",'"+tentb+"',now(),'"+noidung+"','null');";
			 int kq2  = c.RunSQlUpdate(sql2);
			 response.getWriter().write("Thêm thành công!");
			 response.sendRedirect("quanlythongbao.jsp");
		 }
			     catch (Exception e) {
			  response.getWriter().write("Thêm thất bại!"+e);
			}

		
		}
}
	
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	   
	    	doGet(request, response);
		        // checks if the request actually contains upload file
		       
		    
	}
}

