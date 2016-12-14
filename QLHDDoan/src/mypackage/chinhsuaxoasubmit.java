package mypackage;


import java.io.IOException;

import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/chinhsuaxoasubmit")
public class chinhsuaxoasubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public chinhsuaxoasubmit() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		connect c = new connect();
		c.DBConnectionManager();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String value=request.getParameter("value");
		String option=request.getParameter("option");
		HttpSession session = request.getSession();
		String ID= (String) session.getAttribute("ID");
		
		if(value.equals("tinnnhannhan") && option.equals("delete"))
		{
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			String matnn = request.getParameter("ID");
			String sql = "delete from tinnhannhan where MaTNN ="+matnn+"";
			 try{
				 PrintWriter out = response.getWriter();
				 int kq  = c.RunSQlUpdate(sql);
				 response.getWriter().write("xóa thành công");
			 
			 }
		       catch (Exception e) {
		    	   PrintWriter out = response.getWriter();
		    	   response.getWriter().write("xóa thất bại");
		    	   }
		}
		if(value.equals("tinnnhangui") && option.equals("delete"))
		{
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			String matng = request.getParameter("ID");
			String sql = "DELETE from tinnhangui where MaTNG ="+matng+"";
			 try{
				 PrintWriter out = response.getWriter();
				 int kq  = c.RunSQlUpdate(sql);
				 out.println("xóa thành công");
			 
			 }
		       catch (Exception e) {
		    	   PrintWriter out = response.getWriter();
		    	   out.println("xóa thất bại");
		    	   }
		}
		if(value.equals("chidoan") && option.equals("delete"))
		{
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			String matcd = request.getParameter("ID");
			String sql = "DELETE from chidoan where Id ="+matcd+"";
			 try{
				 PrintWriter out = response.getWriter();
				 int kq  = c.RunSQlUpdate(sql);
				 response.getWriter().write("xóa thành công");
			 
			 }
		       catch (Exception e) {
		    	   PrintWriter out = response.getWriter();
		    	   response.getWriter().write("xóa thất bại");
		    	   }
		}
		if(value.equals("doanvien") && option.equals("delete"))
		{
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			String madv = request.getParameter("ID");
			String sql = "DELETE from user where Id ="+madv+"";
			 try{
				 PrintWriter out = response.getWriter();
				 int kq  = c.RunSQlUpdate(sql);
				 response.getWriter().write("xóa thành công");
			 
			 }
		       catch (Exception e) {
		    	   PrintWriter out = response.getWriter();
		    	   response.getWriter().write("xóa thất bại");
		    	   }
		}
		if(value.equals("hoatdong") && option.equals("delete"))
		{
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			String mahd = request.getParameter("ID");
			String sql = "DELETE from hoatdong where mahd ="+mahd+"";
			 try{
				 PrintWriter out = response.getWriter();
				 int kq  = c.RunSQlUpdate(sql);
				 response.getWriter().write("xóa thành công");
			 
			 }
		       catch (Exception e) {
		    	   PrintWriter out = response.getWriter();
		    	   response.getWriter().write("xóa thất bại");
		    	   }
		}
		if(value.equals("taikhoan") && option.equals("delete"))
		{
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			String UID = request.getParameter("ID");
			String sql = "DELETE from user where id ="+UID+"";
			 try{
				 int kq  = c.RunSQlUpdate(sql);
				 response.getWriter().write("xóa thành công");
			 
			 }
		       catch (Exception e) {
		    	   response.getWriter().write("xóa thất bại");
		    	   }
		}
		if(value.equals("thongbao") && option.equals("delete"))
		{
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			String matb = request.getParameter("ID");
			String sql = "DELETE from thongbao where id ="+matb+"";
			 try{
				 PrintWriter out = response.getWriter();
				 int kq  = c.RunSQlUpdate(sql);
				 response.getWriter().write("xóa thành công");
			 
			 }
		       catch (Exception e) {
		    	   PrintWriter out = response.getWriter();
		    	   response.getWriter().write("xóa thất bại");
		    	   }
		}
		if(value.equals("hoatdonguser") && option.equals("delete"))
		{
			String mahd = request.getParameter("ID");
			String sql = "DELETE from dangkyhd where mahd ="+mahd+" and iddk = "+ID+"";
			 try{
				 PrintWriter out = response.getWriter();
				 int kq  = c.RunSQlUpdate(sql);
				 response.getWriter().write("Hủy hoạt động thành công!");
			 
			 }
		       catch (Exception e) {
		    	   PrintWriter out = response.getWriter();
		    	   response.getWriter().write("Hủy hoạt động thất bại!");
		    	   }
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
