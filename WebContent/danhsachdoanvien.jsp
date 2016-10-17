<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.String" %>
<%@page import ="javax.servlet.jsp.PageContext" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file ="connect.jsp" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
		<title>Danh sách đoàn viên</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
       <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file ="header.jsp" %>
                     <div class="content">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                       <div class="content table-responsive table-full-width">   
										<form>
                                    		<a class="btn btn-default btn-outline" data-target="#themdoanvien_modal" data-toggle="modal">Thêm đoàn viên</a>
                                  	  </form>     
                     <% 
				    	String sSQL ="	select * from  NguoiDung  join TaiKhoan on NguoiDung.username = TaiKhoan.username where TaiKhoan.chucvu =N'dv'";		
					    rs = stat.executeQuery(sSQL);
					%>         
                                        <table class="table table-hover table-striped">
                                        
                                            <thead>
                                                 <th>#</th>
                                                <th>MSSV</th>
                                                <th>Họ tên</th>
                                                <th>Khoa</th>
                                                <th>Lớp</th>
                                                <th>Giới tính </th>
                                                <th>Năm sinh</th>
                                                <th>Email</th>
                                                <th>SDT</th>
                                                <th>Ngày vào đoàn</th>
                                                <th>CMND</th>
                                                <th>Địa chỉ</th>
                                                <th></th>
                                               <th></th>
                                            </thead>
                                            <tbody>
                                            <%while (rs.next()){ %>
                                                <tr>
                                                        <td></td>
                                                        <td><%=rs.getString("mssv") %></td>
                                                        <td><%=rs.getString("hoten") %></td>
                                                        <td><%=rs.getString("khoa") %></td>
                                                        <td><%=rs.getString("lop") %></td>
                                                        <td><%=rs.getString("gioitinh") %></td>
                                                        <td><%=rs.getString("ngaysinh") %>></td>
                                                        <td><%=rs.getString("email") %></td>
                                                        <td><%=rs.getString("sdt") %></td>
                                                        <td><%=rs.getString("ngayvaodoan") %></td>
                                                        <td><%=rs.getString("cmnd") %></td>
                                                        <td><%=rs.getString("diachi") %></td>
                                                         <td><a href="chinhsua.jsp?username=<%=rs.getString("username")%>&option=edit&value=doanvien">Chỉnh sửa</a></td>
                                                    <td><a href="chinhsuaxoasubmit.jsp?username=<%=rs.getString("username")%>&option=delete&value=doanvien">Xóa</a></td>
											</tr>
										<%} %>
                                            </tbody>
                                            
                                        </table>
                                    </div>
                                </div>
                             </div>
                        </div>
                      </div>                        
 <div id="themdoanvien_modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
   	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title text-center">Thêm đoàn viên</h4>
          </div>
          <div class="modal-body">
            <div class="row">
            	<form method="post" action="them.jsp?value=doanvien&option=add">
                      <div class="col-lg-4">
                       <h4>username</h4><p><input class="form-control" type="text" name="username"></p>
                          <h4>password</h4><p><input class="form-control" type="text" name="pass"></p>
                        <h4>MSSV</h4><p><input class="form-control" type="text" name="mssv"></p>
                         <h4>Khoa</h4><p><input class="form-control" type="text" name="khoa"></p>
                         <h4>Lớp</h4><p><input class="form-control" type="text" name="lop"></p>
                         <h4>Giới tính</h4><p>  
                            <select class="form-control" name="gioitinh">                    
                                <option value="Nam">Nam</option>
                                 <option value="Nữ">Nữ</option>
                             </select>
                             </p>
                          <h4>Ngày vào đoàn</h4> <p><input class="form-control" type="date" name="ngayvaodoan"></p>
                         <h4>Năm sinh</h4><p><input class="form-control" type="date" name="namsinh"></p>
                      </div>
                      <div class="col-lg-8">
                        <h4>Họ tên</h4> <p><input class="form-control" type="text" name="hoten"></p>
                        <h4>Số điện thoại</h4> <p><input class="form-control" type="text" name="sdt"></p>
                        <h4>Email</h4> <p><input class="form-control" type="text" name="email"></p>
                        <h4>Số CMND</h4> <p><input class="form-control" type="text" name="cmnd"></p>
                         <h4>Địa chỉ</h4> <p><input class="form-control" type="text" name="diachi"></p>
                      </div>   
               	   <div class="modal-footer">
                   <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="danhsachdoanvien.jsp">Close</a>
                    <input class="btn btn-primary btn-outline" type="submit" name="submit">
              	</div>
         	 </form>
             </div>
          </div>
      </div>
    </div>
    </div>
<%@ include file="footer.jsp" %>
</body>
</html>