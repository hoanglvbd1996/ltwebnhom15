package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/timkiem")

public class timkiem extends HttpServlet {
		
		
	private static final long serialVersionUID = 1L;
	
	 @SuppressWarnings({ "unchecked", "rawtypes" })
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
	 connect c = new connect();
	 c.DBConnectionManager();
		PrintWriter out = response.getWriter();
		ResultSet rs = null;
			String value=request.getParameter("value");
			ArrayList al = null;
			ArrayList kq =  new ArrayList();
			if(value.equals("thongbao"))
					{
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=UTF-8");
				String ten = request.getParameter("ten");
				
				String sql = "Select * from thongbao where tentb like '%"+ten+"%'";
				try {
					rs = c.RunSQlExec(sql);
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				try {
					while(rs.next())
					{

						 
					    try {
							out.println(rs.getString("TenTB"));
						} catch (SQLException e) {
							e.printStackTrace();
						}	
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
	if(value.equals("hoatdong") )
	{
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String ten = request.getParameter("ten");
		
		String sql = "Select * from hoatdong where tenhd like '%"+ten+"%'";
						try {
						rs = c.RunSQlExec(sql);
						rs.last();
					 int numrow = rs.getRow();
					   rs.beforeFirst();
					    if(numrow == 0)
					 {
					    	out.println("Không tìm thấy");
					 }
			
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			try {
				while(rs.next())
				{
					
					  al = new ArrayList();	 
					 
					  al.add(rs.getString("Mahd"));

					  al.add(rs.getString("hinhanh"));
					  al.add(rs.getString("tenhd"));
					  al.add(rs.getString("thoigianbatdau"));
					  al.add(rs.getString("diemrl"));
					  al.add(rs.getString("diemctxh"));
					  al.add(rs.getString("diadiem"));
					  out.println("al :: " + al);
					 
					  kq.add(al);
				}
				
				 request.setAttribute("kq", kq);
				 request.setCharacterEncoding("utf-8");
				 RequestDispatcher view = request.getRequestDispatcher("/ketquatimkiem.jsp?value=hoatdong");
		            view.forward(request, response);		
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
		if(value.equals("thaoluan") )
		{
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=UTF-8");
				String ten = request.getParameter("ten");
				
				String sql = "Select * from thaoluan where tieude like '%"+ten+"%'";
				try {
					rs = c.RunSQlExec(sql);
					rs.last();
					int numrow = rs.getRow();
				 rs.beforeFirst();
				    if(numrow == 0)
				 {
				    	out.println("Không tìm thấy");
				 }
		
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
					try {
						while(rs.next())
						{
							out.println(rs.getString("tieude"));
						}
					} catch (SQLException e) {
						e.printStackTrace();
					}
		}
		if(value.equals("doanvien") )
		{
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=UTF-8");
				String ten = request.getParameter("ten");
				
				String sql = "Select * from user where hoten like '%"+ten+"%'";
				try {
					rs = c.RunSQlExec(sql);
					rs.last();
					int numrow = rs.getRow();
				 rs.beforeFirst();
				    if(numrow == 0)
				 {
				    	out.println("Không tìm thấy");
				 }
		
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
					try {
						while(rs.next())
						{
							out.println(rs.getString("id"));
						}
					} catch (SQLException e) {
						e.printStackTrace();
	}
		}

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
		
}
