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
		<title>Quản lý thông báo</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
       <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="header.jsp" %>
		    <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                            	   <div class="content table-responsive table-full-width">
                                   	<form>
                                      <div class="col-md-6 form-group form-inline" >
                                                <a class="btn btn-default btn-outline" data-target="#themthongbao_modal" data-toggle="modal">Thêm thông báo</a>
                                     </div>
                                  	  </form>
                     <% 
				    	String sSQL ="	select * from ThongBao";		
					    rs = stat.executeQuery(sSQL);
					%>             	  
                                    <table class="table table-hover table-striped">
                                    	<thead>
                                     	  <th>#</th>
                                            <th>Tên thông báo</th>
                                            <th>Trích đoạn</th>
                                            <th>Thời gian</th>
                                             
                                              <th>Người đăng</th>
                                        </thead>
                                        <tbody>
                                        <%while(rs.next()) {%>
                                        	<tr>	
                                       		     <td></td>
                                            	<td><%=rs.getString("tentb") %></td>
                                      			 <td><%=rs.getString("trichdoan") %></td>
                                      			 <td><%=rs.getString("thoigian") %></td>
                                      			
                                      		
                                      			 <td><%=rs.getString("idnguoidang") %></td>
                                       			 <td><a href="chitietthongbao.jsp?matb=<%=rs.getInt("matb")%>">Xem chi tiết</a></td>
                                                  <td><a href="chinhsua.jsp?matb=<%=rs.getInt("matb")%>&option=edit&value=thongbao">Chỉnh sửa</a></td>
                                                 <td><a  href="chinhsuaxoasubmit.jsp?matb=<%=rs.getInt("matb")%>&option=delete&value=thongbao">Xóa</a></td>
                                            </tr>
                                            <%} %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                    	 </div>
                    </div>
          		  </div>      
 <div id="themthongbao_modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
   	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title text-center">Thêm thông báo</h4>
          </div>
          <div class="modal-body">
            <div class="row">
            	<form method="post" action="them.jsp?value=thongbao&option=add&id=<%=session.getAttribute("username")%>">
                      <div class="col-lg-4">
                        <h4>Tên thông báo</h4><p><input class="form-control" type="text" name="tentb"></p>
                         <h4>Trích đoạn</h4><p><textarea class="form-control" rows="5" name="trichdoan" style="resize:none"></textarea></p>
                         <p><input class="form-control" type="hidden" name="idnguoidang"></p>
                          <h4>Thời gian</h4><p><input class="form-control" name="thoigian" placeholder="Tự cập nhật" disabled></p>
                          <h4>Hình ảnh kèm theo</h4><p><input class="form-control" type="file" name="urlhinhanh"></p>
                      </div>
                      <div class="col-lg-8">
                      	 <h4>Nội dung</h4><textarea class="form-control" rows="15" name="noidung" style="resize:none"></textarea>
                      </div>   
               	   <div class="modal-footer">
                    <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="quanlythongbao.jsp">Close</a>
                    <input class="btn btn-primary btn-outline" type="submit" name="submit">
              	</div>
         	 </form>
             </div>
          </div>
      </div>
    </div>
</div>
  <%@include file="footer.jsp" %>              
</body>
</html>