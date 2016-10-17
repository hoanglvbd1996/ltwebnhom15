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
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
       <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file ="header.jsp" %>
    <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title"></h3>
            </div>
            	<% String username =request.getParameter("username");%>
              <% 
              
				 try{
				String sSQL ="select * from NguoiDung join TaiKhoan on TaiKhoan.username = NguoiDung.username where Nguoidung.username ='"+username+"'";		
			    rs = stat.executeQuery(sSQL);
			%>
            <div class="panel-body">
              <div class="row">
                <% if(rs.next()){ %>
                <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="img/<%=rs.getString("urlhinhanh")%>" class="img-circle img-responsive"> </div>
                <div class=" col-md-9 col-lg-9 "> 
                 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Họ Tên:</td>
                        <td><%=rs.getString("hoten") %></td>
                      </tr>
                      <tr>
                        <td>Khoa:</td>
                        <td><%=rs.getString("khoa") %></td>
                      </tr>
                      <tr>
                        <td>Giới tính:</td>
                        <td><%=rs.getString("gioitinh") %></td>
                      </tr>
                      <tr>
                        <td>Số CMND:</td>
                        <td><%=rs.getString("cmnd") %></td>
                      </tr>
                      <tr>
                        <td>Chức vụ:</td>
                        <td><%=rs.getString("chucvu") %></td>
                      </tr>
                      <tr>
                        <td>Email:</td>
                        <td><a href="mailto:<%=rs.getString("email") %>"><%=rs.getString("email") %></a></td>
                      </tr>
                      <tr>
                        <td>Mã Số SV:</td>
                        <td><%=rs.getString("mssv") %></td>
                      </tr>
                      <tr>
                        <td> Lớp:</td>
                        <td><%=rs.getString("lop") %></td>
                      </tr>
                      <tr>
                        <td>Ngày vào đoàn:</td>
                        <td><%=rs.getString("ngayvaodoan") %></td>
                      </tr>
                      <tr>
                        <td>Năm sinh:</td>
                        <td><%=rs.getString("ngaysinh") %></td>
                      </tr>
                       <tr>
                        <td>SĐT:</td>
                        <td><%=rs.getString("sdt") %></td>
                      </tr>
                        <tr>
                        <td>Địa chỉ:</td>
                        <td><%=rs.getString("diachi") %></td>
                      </tr>
                    </tbody>

                  </table>           
                </div>
              </div>
               
               <%}rs.close();%>
              <% }catch(Exception cnfex){out.print(cnfex);}%> 
            <a class="btn btn-default pull-right" href="chinhsua.jsp?username=<%=username%>&option=edit&value=profile">Cập nhật</a>
            </div>
     </div>
     	<%@ include file="footer.jsp" %>
</body>
</html>