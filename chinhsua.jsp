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
      <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
<title>Chỉnh sửa </title>
</head>
<body>
<% 
	String value = request.getParameter("value");
	String option = request.getParameter("option");
	if(value.equals("chidoan") && option.equals("edit"))
	{
	       
	      	String machidoan =request.getParameter("machidoan");
	        String query = "SELECT * from ChiDoan WHERE machidoan= '"+machidoan+ "'";       
	        rs = stat.executeQuery(query);

    %>
   	<div class="modal-dialog">
    <div class="modal-content" >
      <div class="modal-header">
         <a type="button" class="close" data-dismiss="modal" aria-hidden="true" href="danhsachchidoan.jsp">×</a>
        <h4 class="modal-title text-center">Chỉnh sửa chi đoàn</h4>
      </div>
      <div class="modal-body" style=" margin-left:20px;">
        <div class="row">
        	<% if(rs.next()){ %>
        	<form method="post" action="chinhsuaxoasubmit.jsp?option=edit&value=chidoan">
        			<input type="hidden" name="machidoan" value="<%= rs.getString("machidoan") %>">
                    <h4>Tên chi đoàn</h4><p><input class="form-control" type="text" name="tenchidoan" value="<%=rs.getString("tenchidoan") %>"></p>
                     <h4>Họ tên các cán bộ đoàn</h4><p><input class="form-control" type="text" name="hoten" value="<%= rs.getString("hotencanbodoan") %>"></p>
                     <h4>Email</h4><p><input class="form-control" type="text" name="email" value="<%= rs.getString("email") %>"></p>
                     <h4>SDT</h4><p><input class="form-control" type="text"   name="sdt"  value="<%= rs.getString("sdt") %>"></p>

           	   <div class="modal-footer">
                <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="danhsachchidoan.jsp">Close</a>
                <input class="btn btn-primary btn-outline" type="submit" name="submit" >
          	</div>
     	 </form>
	   <%}query ="";%>
        </div>
      </div>
  </div>
	</div>
	
	<% }
	 else if(value.equals("profile") && option.equals("edit"))          
	 {
	    	String username =request.getParameter("username");
	        String profilequery = "select * from NguoiDung join TaiKhoan on TaiKhoan.username = NguoiDung.username where Nguoidung.username = '"+username+ "'";       
	        rs = stat.executeQuery(profilequery);

    %>
     	<div class="modal-dialog">
    <div class="modal-content" >
      <div class="modal-header">
	        <h4 class="modal-title text-center">Chỉnh sửa thông tin</h4>
 		</div>
      <div class="modal-body" style=" margin-left:20px;">
	        <div class="row">
	        	<% if(rs.next()){ %>
	        	<div class="form-group">		  
		        	<form  method="post" action="chinhsuaxoasubmit.jsp?value=profile&option=edit">
		        	 <input type="hidden" name="username" value="<%=rs.getString("username") %>">
		        		 <label >Họ tên :</label>
                        <input disabled class="form-control" type="text" value="<%=rs.getString("hoten") %>">
                        <label>Khoa:</label>
                 	       <input disabled class="form-control" type="text" value="<%=rs.getString("khoa") %>">

                       <label >Giới tính:</label>
                         <input disabled class="form-control" type="text" value="<%=rs.getString("gioitinh") %>">
                        <label >Số CMND:</label>
                         <input disabled class="form-control" type="text" value="<%=rs.getString("cmnd")%>">

                        <label >Chức vụ:</label>
                          <input disabled class="form-control input-md" type="text" value="<%=rs.getString("chucvu")%>">

                        <label >Email:</label>
                         <input  class="form-control "  name="email" type="text" value="<%=rs.getString("email") %>">

                        <label >Mã Số SV:</label>
                          <input disabled class="form-control" type="text" value="<%=rs.getString("mssv") %>">

                        <label > Lớp:</label>
                          <input disabled class="form-control " type="text" value="<%=rs.getString("lop")%>">
                        <label >Ngày vào đoàn:</label>
                          <input disabled  class="form-control " type="text" value="<%=rs.getString("ngayvaodoan") %>">

                        <label >Năm sinh:</label>
                         <input disabled class="form-control " type="text" value="<%=rs.getString("ngaysinh") %>">
                           <label >SĐT:</label>
                         <input  class="form-control " name="sdt" type="text" value="<%=rs.getString("sdt") %>">
                          <label >Địa chỉ:</label>
                         <input  class="form-control " name="diachi" type="text" value="<%=rs.getString("diachi") %>">
 					 <div class="modal-footer">
			                <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href=profile.jsp?username=<%=rs.getString("username")%>>Close</a>
			                <input class="btn btn-primary btn-outline" type="submit" name="submit" >
			          	</div>
                 </form>
                 </div>
		   <%}profilequery ="";%>
	        </div></div></div></div>
	        
	   
	<%}
	 else if(value.equals("hoatdong") && option.equals("edit"))   
	 {
			String mahd =request.getParameter("mahd");
	        String hoatdongquery = "select * from HoatDong where mahd = "+mahd+"";       
	        rs = stat.executeQuery(hoatdongquery);
	%>      		
  	<div class="modal-dialog">
        <div class="modal-content">
        <%if(rs.next()){ %>
   		<form method="post" action="chinhsuaxoasubmit.jsp?option=edit&value=hoatdong">
   			
                      <div class="col-lg-5">
                      	 <h4>Mã hoạt động (int)</h4><p><input class="form-control" type="text" name="mahd" value="<%=rs.getString("mahd")%>"></p>
                        <h4>Tên hoạt động (not null)</h4><p><input  value="<%=rs.getString("tenhd")%>" class="form-control" type="text" name="tenhd"></p>
                         <h4>Đơn vị tổ chức</h4><p>
                         <select name="donvitochuc" class="form-control">
		                         <option value="Đoàn khoa">Đoàn khoa</option>
		                         <option value="Đoàn trường">Đoàn trường</option>
                         </select>
                         </p>
                          <h4>Địa điểm</h4><p><input class="form-control" value="<%=rs.getString("diadiem")%>" type="text" name="diadiem" ></p>
                         <h4>Thời gian bắt đầu</h4><p><input class="form-control"  value="<%=rs.getString("tgbatdau")%>" type="date" name="tgbatdau" ></p>
                          <h4>Thời gian kết thúc</h4><p><input class="form-control"  value="<%=rs.getString("tgketthuc")%>" type="date" name="tgketthuc" ></p>
                        <h4>Điểm rèn luyện</h4><p><input class="form-control"  value="<%=rs.getString("diemrl")%>" type="text" name="diemrl" ></p>
                        <h4>Điểm CTXH</h4><p><input class="form-control"  value="<%=rs.getString("diemctxh")%>" type="text" name="diemctxh" ></p>
                        <h4>Duyệt hoạt động</h4><p><select name="trangchu" class="form-control">
	                         <option value=0>Không</option>
	                        <option value=1>Có</option>
	                        </select></p>
						</div>  
                         <div class="col-lg-7">
                         <h4>Nội dung</h4><p> <textarea  class="form-control" rows="20" name="noidung"> <%=rs.getString("noidung")%> </textarea></p>
                         <h4>Hình ảnh kèm theo</h4><p><input class="form-control" type="file" name="urlhinhanh"></p>
						</div>  
               	   <div class="modal-footer">
                      <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="quanlyhoatdong.jsp">Close</a>
                    <input class="btn btn-primary btn-outline" type="submit" name="submit">
              	</div>
         	 </form>
         	 <%} %>
         	 </div></div>
       
	<%}
	 else if(value.equals("doanvien") && option.equals("edit"))   
	 {
			String username =request.getParameter("username");
	        String profilequery = "select * from NguoiDung join TaiKhoan on TaiKhoan.username = NguoiDung.username where Nguoidung.username = '"+username+ "'";       
	        rs = stat.executeQuery(profilequery);

    %>
     	<div class="modal-dialog">
    <div class="modal-content" >
      <div class="modal-header">
	        <h4 class="modal-title text-center">Chỉnh sửa thông tin</h4>
 		</div>
      <div class="modal-body" style=" margin-left:20px;">
	        <div class="row">
	        	<% if(rs.next()){ %>
	        	<div class="form-group">		  
		        	<form  method="post" action="chinhsuaxoasubmit.jsp?value=doanvien&option=edit">
		        	 <input type="hidden" name="username" value="<%=rs.getString("username") %>">
		        		 <label >Họ tên :</label>
                        <input class="form-control" name="hoten" type="text" value="<%=rs.getString("hoten") %>">
                        <label>Khoa:</label>
                 	       <input class="form-control"  name="khoa"type="text" value="<%=rs.getString("khoa") %>">

                       <label >Giới tính:</label>
                         <input  class="form-control" name="gioitinh" type="text" value="<%=rs.getString("gioitinh") %>">
                        <label >Số CMND:</label>
                         <input  class="form-control" name="cmnd" type="text" value="<%=rs.getString("cmnd")%>">

                        <label >Chức vụ:</label>
                          <input  class="form-control input-md" name="chucvu" type="text" value="<%=rs.getString("chucvu")%>">

                        <label >Email:</label>
                         <input  class="form-control "  name="email" name="email" type="text" value="<%=rs.getString("email") %>">

                        <label >Mã Số SV:</label>
                          <input class="form-control" name="mssv" type="text" value="<%=rs.getString("mssv") %>">

                        <label > Lớp:</label>
                          <input class="form-control " name="lop" type="text" value="<%=rs.getString("lop")%>">
                        <label >Ngày vào đoàn:</label>
                          <input  class="form-control " name="ngayvaodoan" type="text" value="<%=rs.getString("ngayvaodoan") %>">

                        <label >Năm sinh:</label>
                         <input  class="form-control "name="namsinh" type="text" value="<%=rs.getString("ngaysinh") %>">
                           <label >SĐT:</label>
                         <input  class="form-control " name="sdt" type="text" value="<%=rs.getString("sdt") %>">
                          <label >Địa chỉ:</label>
                         <input  class="form-control " name="diachi" type="text" value="<%=rs.getString("diachi") %>">
 					 <div class="modal-footer">
			                <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="danhsachdoanvien.jsp">Close</a>
			                <input class="btn btn-primary btn-outline" type="submit" name="submit" >
			          	</div>
                 </form>
                 </div>
		   <%}profilequery ="";%>
	        </div></div></div></div>
	   <%}
	 else if(value.equals("thongbao") && option.equals("edit"))   
	 {
			String matb =request.getParameter("matb");
	        String profilequery = "select * from ThongBao join NguoiDung on NguoiDung.username = ThongBao.idnguoidang and matb ='"+matb+ "'";       
	        rs = stat.executeQuery(profilequery);
	       
	        
	     
    %>
   	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title text-center">Sửa thông báo</h4>
          </div>
          <div class="modal-body">
            <div class="row">
            <%if(rs.next()){ %>
            	<form method="post" action="chinhsuaxoasubmit.jsp?option=edit&value=thongbao">
                      <div class="col-lg-4">
                       <input type="hidden" name="matb" value="<%=rs.getString("matb") %>">
                        <h4>Tên thông báo</h4><p><input class="form-control" type="text" name="tentb" value="<%=rs.getString("tentb")%>"></p>
                         <h4>Người thông báo (username)</h4><p><input class="form-control"  type="text" name="username" value="<%=rs.getString("username")%>"></p>
                    <h4>Hình ảnh kèm theo</h4><p><input class="form-control" type="file" name="urlhinhanh"></p>
                    </div>
                    
                      <div class="col-lg-8">
                      	  <h4>Nội dung</h4><p><textarea class="form-control" rows="15" name="noidung" style="resize:none"><%=rs.getString("noidung")%></textarea></p>
                      	 <h4>Trích đoạn</h4><p><textarea class="form-control" rows="5" name="trichdoan" style="resize:none"><%=rs.getString("trichdoan")%></textarea></p>
                      </div>   
               	   <div class="modal-footer">
                     <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="quanlythongbao.jsp">Close</a>
                    <input class="btn btn-primary btn-outline" type="submit" name="submit">
              	</div>
         	 </form>
         	 <%} %>
             </div>
          </div>
      </div>
    </div>  
   <%}
	 else if(value.equals("taikhoan") && option.equals("edit"))   
	 {
			String username =request.getParameter("username");
	        String profilequery = "select * from TaiKhoan where username ='"+username+"'";      
	        rs = stat.executeQuery(profilequery);

    %>
   	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title text-center">Sửa tài khoản</h4>
          </div>
          <div class="modal-body">
            <div class="row">
            <%if(rs.next()){ %>
            	<form method="post" action="chinhsuaxoasubmit.jsp?option=edit&value=taikhoan">
                       <div class="col-lg-12">
                        <h4>Tên tài khoản</h4><p><input class="form-control" type="text" disabled name="user" value=<%=rs.getString("username") %>></p>
                         <h4>Password</h4><p><input class="form-control" type="text" name="pass" value=<%=rs.getString("pass") %>></p>
                         <h4>Chức vụ</h4><p>
                         	<select name="chucvu"  class="form-control">
                         		<option value="dv">Đoàn viên</option>
                         		<option value="admin">Admin</option>
                         		<option value="cbdk">Cán bộ đoàn khoa</option>
                         		<option value="cbdt">Cán bộ đoàn trường</option>
                         	</select>
                         </p>
					</div>   
					   <div class="modal-footer">
                 <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="quanlytaikhoan.jsp">Close</a>
                    <input class="btn btn-primary btn-outline" type="submit" name="submit">
              	</div>
         	 </form>
         	 <%} %>
             </div>
          </div>
      </div>
    </div>  
	<%} %> 
</body>
</html>