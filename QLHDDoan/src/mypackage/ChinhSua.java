package mypackage;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ChinhSua
 */
@WebServlet("/ChinhSua")
public class ChinhSua extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ChinhSua() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		connect c = new connect();
		c.DBConnectionManager();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String value=request.getParameter("value");
		String option=request.getParameter("option");
		HttpSession session = request.getSession();
		String ID= (String) session.getAttribute("ID");
		if(value.equals("chidoan") && option.equals("edit"))
		{
			String machidoan = request.getParameter("machidoan");
			String tenchidoan  = request.getParameter("tenchidoan");
			String MaCB  = request.getParameter("MaCB");
			String query = "update chidoan set tencd = '"+tenchidoan+"' where id = "+machidoan+"";
			String queryupdateuser = "update user set macd = "+machidoan+" where id = "+MaCB+"";
			    try{
				 int kq1  = c.RunSQlUpdate(query);
				 int kq2  = c.RunSQlUpdate(queryupdateuser);
				 response.getWriter().write("Sửa thành công!");
			 
			 }
		       catch (Exception e) {
		    	   response.getWriter().write("Sửa thất bại!"+e);
		    }      
		}
		if(value.equals("doanvien") && option.equals("edit"))
		{
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			String id = request.getParameter("id");
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
			String sql1 = "call sp_Suadoanvien("+id+",'"+username+"','"+password+"',"+mssv+",'"+hoten+"','"+gioitinh+"','"+namsinh+"',"+sdt+",'"+email+"','"+diachi+"','"+khoa+"','"+lop+"','"+ngayvaodoan+"',"+machucvu+","+macd+","+maquyen+",'"+cmnd+"')";

			 try{
				 int kq  = c.RunSQlUpdate(sql1);
				 response.getWriter().write("Sửa thành công!");
				 
			 
			 }
		       catch (Exception e) {
		    	   response.getWriter().write("Sửa thất bại!");
		    }
		}
		if(value.equals("hoatdong") && option.equals("edit"))
		{
			{
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=UTF-8");
				String id = request.getParameter("mahd");
				String tenhd = request.getParameter("tenhd");
				String diadiem = request.getParameter("diadiem");
				String ThoiGianBatDau = request.getParameter("tgbatdau");
				String Diemrl = request.getParameter("diemrl");
				String diemctxh = request.getParameter("diemctxh");
				String trangthai = request.getParameter("trangthai");
				String noidung = request.getParameter("noidung");
				String hinhanh =  "null";
				String sql = "call sp_suahoatdong("+id+",'"+tenhd+"','"+ThoiGianBatDau+"','"+diadiem+"',"+Diemrl+","+diemctxh+",'"+noidung+"','"+hinhanh+"',"+ID+","+trangthai+")";
				 try{
					 int kq  = c.RunSQlUpdate(sql);
					 response.getWriter().write("Sửa thành công!");
				 
				 }
			       catch (Exception e) {
			    	   response.getWriter().write("Sửa thất bại!");
			    	   }
				}
		}
		if(value.equals("profile") && option.equals("edit"))
		{
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			String sdt = request.getParameter("sdt");
			String diachi = request.getParameter("diachi");
			String email = request.getParameter("email");
			String sql = "call sp_editprofile('"+sdt+"','"+diachi+"','"+email+"',"+ID+")" ;
			 try{
				 int kq  = c.RunSQlUpdate(sql);
				  response.getWriter().write("Sửa thành công");
			 
			 }
		       catch (Exception e) {
		    	  
		    	   response.getWriter().write("Sửa thất bại!");
		    	   }
		}	
		if(value.equals("taikhoan") && option.equals("edit"))
		{
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			String id = request.getParameter("id");
			String maquyen = request.getParameter("maquyen");
			String machucvu = request.getParameter("machucvu");
			String macd = request.getParameter("macd");
			String sql = "update user set maquyen = "+maquyen+", machucvu ="+machucvu+", macd ="+macd+" where ID = "+id+"";
			 try{
				 int kq  = c.RunSQlUpdate(sql);
				  response.getWriter().write("Sửa thành công");
			 
			 }
		       catch (Exception e) {
		    	  
		    	   response.getWriter().write("Sửa thất bại!");
		    	   }
		}	
		if(value.equals("thongbao") && option.equals("edit"))
		{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String id = request.getParameter("id");
		String tentb = request.getParameter("tentbb");
		String hinhanh =  "null";
		String noidung = request.getParameter("noidungg");
		String sql = "update thongbao set IDNguoiDang = "+ID+", TenTB = '"+tentb+"' , ThoiGianDang = now() ,NoiDung = '"+noidung+"', HinhAnh = '"+hinhanh+"' where ID = "+id+"";
		 try{
			 int kq  = c.RunSQlUpdate(sql);
			 response.getWriter().write("Chỉnh sửa thành công!");
		 
		 }
	       catch (Exception e) {
	    	   response.getWriter().write("Sửa thất bại!");
	    	   }
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
