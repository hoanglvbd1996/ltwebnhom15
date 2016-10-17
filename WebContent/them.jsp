<%@page import="java.io.ObjectInputStream.GetField"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.*" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page contentType="text/html; charset=UTF-8"  pageEncoding="ISO-8859-1"%>
<%@ include file ="connect.jsp" %>
<jsp:include page="header.jsp"></jsp:include>
<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
<body>

	 <%request.setCharacterEncoding("UTF-8");%>
    <%

    String value = request.getParameter("value");
    String option = request.getParameter("option");
	if(value.equals("chidoan") && option.equals("add"))
	{
  					String tenchidoan=request.getParameter("tenchidoan");
  			        String hoten=request.getParameter("hoten");
  			        String email=request.getParameter("email");
  			        String sdt=request.getParameter("sdt");
  			      String query = "insert into ChiDoan(tenchidoan,hotencanbodoan,email,sdt) values(N'"+tenchidoan+"',N'"+hoten+"','"+email+"','"+sdt+"')";
  			     try{
  			    	 int statm = stat.executeUpdate(query);
  			    	response.sendRedirect("danhsachchidoan.jsp");
  			     }
  			   catch (Exception e) {
  		    	   e.printStackTrace();
  		    	   }
  				   	 
  				   	 conn.close();
	}
	else if(value.equals("hoatdong") && option.equals("add"))
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
  			      String query = "insert into Hoatdong(mahd,tenhd,donvitochuc,tgbatdau,tgketthuc,diemrl,diemctxh,noidung,urlhinhanh,tomtat,TrangChu) values("+mahd+",N'"+tenhd+"',N'"+donvitochuc+"','"+tgbatdau+"','"+tgketthuc+"','"+diemrl+"','"+diemctxh+"',N'"+noidung+"','img/"+urlhinhanh+"',N'"+tomtat+"',"+trangchu+")";
  			     try{
  			    	 int statm = stat.executeUpdate(query);
  			    	response.sendRedirect("quanlyhoatdong.jsp");
  			     }
  			   catch (Exception e) {
  		    	   e.printStackTrace();
  		    	   }
  				   	 
  				   	 conn.close();
	}
	else if(value.equals("doanvien") && option.equals("add"))
	{
  					String mssv=request.getParameter("mssv");
  					String username=request.getParameter("username");
  					String pass=request.getParameter("pass");
  			        String khoa=request.getParameter("khoa");
  			        String lop=request.getParameter("lop");
  			      String gioitinh=request.getParameter("gioitinh");
				        String ngayvaodoan=request.getParameter("ngayvaodoan");
	  			        String namsinh=request.getParameter("namsinh");
	  			      String hoten=request.getParameter("hoten");
	  			    String sdt=request.getParameter("sdt");
  				  String email=request.getParameter("email");
  			  	    String cmnd=request.getParameter("cmnd");
  			 	   String diachi=request.getParameter("diachi");
  			 	   String query1="insert into TaiKhoan(username,pass,chucvu) values('"+username+"','"+pass+"',N'dv')";
  			      String query = "insert into NguoiDung(username,mssv,khoa,lop,gioitinh,ngayvaodoan,ngaysinh,hoten,sdt,email,diachi) values(N'"+username+"',"+mssv+",N'"+khoa+"','"+lop+"',N'"+gioitinh+"','"+ngayvaodoan+"','"+namsinh+"',N'"+hoten+"','"+sdt+"','"+email+"',N'"+diachi+"')";
  			     try{
  			    	 
  			    	 int statm1 = stat.executeUpdate(query1);
  			    	 int statm = stat.executeUpdate(query);
  			    	response.sendRedirect("danhsachdoanvien.jsp");
  			     }
  			   catch (Exception e) {
  		    	   out.print(e);
  		    	   }
  				   	 
  				   	 conn.close();
	}
	else if(value.equals("thongbao") && option.equals("add"))
	{
  					String tentb=request.getParameter("tentb");
  					String trichdoan=request.getParameter("trichdoan");
  			        String thoigian=request.getParameter("thoigian");
  			        String noidung=request.getParameter("noidung");
  			     	 String id =request.getParameter("id");
  			      String query = "insert into ThongBao(tentb,trichdoan,thoigian,noidung,idnguoidang) values(N'"+tentb+"',N'"+trichdoan+"',N'"+thoigian+"',N'"+noidung+"','"+id+"')";
  			     try{
  			    	 
  			    	 int statm = stat.executeUpdate(query);
  			    	response.sendRedirect("quanlythongbao.jsp");
  			     }
  			   catch (Exception e) {
  		    	   out.print(e);
  		    	   }
  				   	 
  				   	 conn.close();
	}
	else if(value.equals("taikhoan") && option.equals("add"))
	{
  					String username=request.getParameter("username");
  					String pass=request.getParameter("pass");
  			        String chucvu=request.getParameter("chucvu");
  			        if(username =="")
  			        {
  			        	out.print("Username null!");
  			        }
  			      if(pass =="" )
			        {
			        	out.print("password null!");
			        }
  			      else{
  			      String query1 = "insert into TaiKhoan(username,pass,chucvu) values('"+username+"','"+pass+"','"+chucvu+"')";
  			    String query2 = "insert into NguoiDung(username) values('"+username+"')";
  			     try{
  			    	 
  			    	 int statm1 = stat.executeUpdate(query1);
  			    	 int statm2 = stat.executeUpdate(query2);
  			    	response.sendRedirect("quanlytaikhoan.jsp");
  			     }
  			   catch (Exception e) {
  		    	   out.print(e);
  		    	   }
  				   	 
  				   	 conn.close();
  			      }
	}
	else if(value.equals("thaoluan") && option.equals("add"))
	{
  					String username=request.getParameter("username");
  					String tendetai=request.getParameter("tendetai");
  			      String noidung= request.getParameter("noidung");
  			      String query = "insert into ThaoLuan(tendetai,manguoidang,noidung) values('"+tendetai+"','"+username+"','N"+noidung+"')";
  			     try{
  			    	 
  			    	 int statm1 = stat.executeUpdate(query);
  			    	response.sendRedirect("thaoluanview.jsp");
  			     }
  			   catch (Exception e) {
  		    	   out.print(e);
  		    	   }
  				   	 
  				   	 conn.close();
	}
	%>
</body>
</html>