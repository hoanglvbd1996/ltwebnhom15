<%@page import="java.io.ObjectInputStream.GetField"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.*" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file ="connect.jsp" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
    <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
    <style>
	</style>
</head>
<body>
	 <%request.setCharacterEncoding("UTF-8");%>
<%	
String value = request.getParameter("value");
String option = request.getParameter("option");
	if(value.equals("chidoan") && option.equals("delete"))
	{
			String machidoan =request.getParameter("machidoan");
	       String query = "DELETE ChiDoan WHERE machidoan= '"+machidoan+ "'";
	       
	       try{int statm = stat.executeUpdate(query);}
	       catch (Exception e) {
	    	   e.printStackTrace();
	    	   }
	    	 response.sendRedirect("danhsachchidoan.jsp");
	}
	else if(value.equals("chidoan") && option.equals("edit"))
	{
		String machidoan=request.getParameter("machidoan");
	    String tenchidoan=request.getParameter("tenchidoan");
	    String hoten=request.getParameter("hoten");
	    String email=request.getParameter("email");
	    String sdt=request.getParameter("sdt");
	    
	  	 String query = "UPDATE ChiDoan SET tenchidoan=N'" + tenchidoan + "' , hotencanbodoan=N'" + hoten +"' , email='" + email + "' , sdt='" + sdt +  "' WHERE machidoan ="+machidoan+"";
	  	  try{int statm = stat.executeUpdate(query);}
	  	  catch (Exception e) {
	   	   e.printStackTrace();
	   	   }
		 response.sendRedirect("danhsachchidoan.jsp");
		conn.close();	
	}
	else if(value.equals("hoatdonguser") && option.equals("delete"))
	{
		String username =request.getParameter("username");
	       String query = "DELETE DangKy WHERE id= '"+username+ "'";
	       try{int statm = stat.executeUpdate(query);}
	       catch (Exception e) {
	    	   e.printStackTrace();
	    	   }
	    	 response.sendRedirect("hoatdongdadangky.jsp");
		conn.close();	
	}
	else if(value.equals("profile") && option.equals("edit"))
	{
		String username =request.getParameter("username");
		String email =request.getParameter("email");
		String sdt =request.getParameter("sdt");
		String diachi =request.getParameter("diachi");
	       String query = "UPDATE NguoiDung SET email ='"+email+"' , sdt ='"+sdt+"' , diachi =N'"+diachi+"' where username ='"+username+"'";
	       try{int statm = stat.executeUpdate(query);}
	       catch (Exception e) {
	    	   e.printStackTrace();
	    	   }
	    	 response.sendRedirect("profile.jsp?username="+username);
		conn.close();	
	}

	else if(value.equals("hoatdong") && option.equals("delete"))
	{
		String mahd =request.getParameter("mahd");
		 String query1 ="DELETE DangKy where mahd ="+mahd+"";
	       String query = "DELETE HoatDong where mahd ="+mahd+"";
	       try{int statm1 = stat.executeUpdate(query1);
	    	   int statm = stat.executeUpdate(query);}
	       catch (Exception e) {
	    	   e.printStackTrace();
	    	   }
	    	 response.sendRedirect("quanlyhoatdong.jsp");
		conn.close();	
	}
	else if(value.equals("doanvien") && option.equals("edit"))
	{
		String username =request.getParameter("username");
		String mssv =request.getParameter("mssv");
		String hoten =request.getParameter("hoten");
		String khoa =request.getParameter("khoa");
		String lop =request.getParameter("lop");
		String gioitinh =request.getParameter("gioitinh");
		String namsinh =request.getParameter("namsinh");
		String email =request.getParameter("email");
		String sdt =request.getParameter("sdt");
		String diachi =request.getParameter("diachi");
	       String query = "UPDATE NguoiDung SET mssv ='"+mssv+"' , hoten =N'"+hoten+"' , khoa =N'"+khoa+"', lop ='"+lop+"' , gioitinh =N'"+gioitinh+"', ngaysinh ='"+namsinh+"' , email ='"+email+"', sdt ='"+sdt+"' , diachi =N'"+diachi+"' where username ='"+username+"'";
	       try{int statm = stat.executeUpdate(query);}
	       catch (Exception e) {
	    	   e.printStackTrace();
	    	   }
	    	 response.sendRedirect("danhsachdoanvien.jsp");
		conn.close();	
	}
	else if(value.equals("doanvien") && option.equals("delete"))
	{
		String username =request.getParameter("username");
		String query1="DELETE TaiKhoan where username ='"+username+"'";
				String query2="DELETE NguoiDung where username ='"+username+"'";
	       try{
	    	   int statm1 = stat.executeUpdate(query1);
	    			   int statm2 = stat.executeUpdate(query2);
	    	   }
	       catch (Exception e) {
	    	   e.printStackTrace();
	    	   }
	    	 response.sendRedirect("danhsachdoanvien.jsp");
		conn.close();	
	}
	else if(value.equals("thongbao") && option.equals("edit"))
	{
		String matb =request.getParameter("matb");
		String tentb =request.getParameter("tentb");
		String noidung =request.getParameter("noidung");
		String thoigian =request.getParameter("thoigian");
		String trichdoan =request.getParameter("trichdoan");
		String username =request.getParameter("username");
	       String query = "UPDATE ThongBao SET tentb =N'"+tentb+"' , noidung =N'"+noidung+"', thoigian ='"+thoigian+"' , trichdoan =N'"+trichdoan+"', idnguoidang ='"+username+"' where matb ="+matb+"";
	       try{int statm = stat.executeUpdate(query);}
	       catch (Exception e) {
	    	   e.printStackTrace();
	    	   }
	    	 response.sendRedirect("quanlythongbao.jsp");
		conn.close();	
	}
	else if(value.equals("thongbao") && option.equals("delete"))
	{
		String matb =request.getParameter("matb");
	       String query = "DELETE ThongBao where matb ="+matb+"";
	       try{int statm = stat.executeUpdate(query);}
	       catch (Exception e) {
	    	   e.printStackTrace();
	    	   }
	    	 response.sendRedirect("quanlythongbao.jsp");
		conn.close();	
	}
	else if(value.equals("hoatdong") && option.equals("edit"))
	{
  					String mahd=request.getParameter("mahd");
  			        String tenhd=request.getParameter("tenhd");
  			        String donvitochuc=request.getParameter("donvitochuc");
  			      String tgbatdau=request.getParameter("tgbatdau");
				        String tgketthuc=request.getParameter("tgketthuc");
	  			        String diemrl=request.getParameter("diemrl");
	  			      String diemctxh=request.getParameter("diemctxh");
	  			    String tomtat=request.getParameter("tomtat");
	  			  String trangchu=request.getParameter("trangchu");
  			  	    String noidung=request.getParameter("noidung");
  			 	   String urlhinhanh=request.getParameter("urlhinhanh");
  			      String query = "UPDATE Hoatdong set tenhd=N'"+tenhd+"', donvitochuc =N'"+donvitochuc+"',tgbatdau='"+tgbatdau+"',tgketthuc='"+tgketthuc+"',diemrl="+diemrl+",diemctxh="+diemctxh+",noidung=N'"+noidung+"',urlhinhanh='img/"+urlhinhanh+"',tomtat =N'"+tomtat+"',TrangChu="+trangchu+" where mahd ="+mahd+"";
  			     try{
  			    	 int statm = stat.executeUpdate(query);
  			    	response.sendRedirect("quanlyhoatdong.jsp");
  			     }
  			   catch (Exception e) {
  		    	   e.printStackTrace();
  		    	   }
  				   	 
  				   	 conn.close();
	}
	else if(value.equals("taikhoan") && option.equals("delete"))
	{
  					String username=request.getParameter("username");
  			    
  			      String query1 = "DELETE NguoiDung  where username ='"+username+"'";
  			    String query2 = "DELETE TaiKhoan  where username ='"+username+"'";
  			     try{
  			    	 int statm1 = stat.executeUpdate(query1);
  			    	 int statm2 = stat.executeUpdate(query2);
  			    	response.sendRedirect("quanlytaikhoan.jsp");
  			     }
  			   catch (Exception e) {
  		    	   e.printStackTrace();
  		    	   }
  				   	 
  				   	 conn.close();
	}
	else if(value.equals("taikhoan") && option.equals("edit"))
	{

			String user=request.getParameter("user"); 
			String pass=request.getParameter("pass"); 
			String chucvu=request.getParameter("chucvu"); 
	      String query1 = "UPDATE TaiKhoan set pass='"+pass+"',chucvu='"+chucvu+"' where username ='"+user+"'";

  			     try{
  			    	 int statm1 = stat.executeUpdate(query1);
  			    	response.sendRedirect("quanlytaikhoan.jsp");
  			     }
  			   catch (Exception e) {
  		    	   e.printStackTrace();
  		    	   }
  				   	 
  				   	 conn.close();
	}
	%>

</body>
</html>
	