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
		<title>Quản lý hoạt động</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
       <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file ="header.jsp" %>
    <div class="main-panel">
                 <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                            	   <div class="content table-responsive table-full-width">
                                   	<form>
                                    		<a class="btn btn-default btn-outline" data-target="#themhoatdong_modal" data-toggle="modal">Thêm hoạt động</a>
                                  	  </form>
                 <% 
				    try{
				    	String sSQL ="select * from HoatDong order by tgbatdau DESC";		
					    rs = stat.executeQuery(sSQL);
					%>
                            
                                    <table class="table table-hover table-striped">
                                    	<thead>
                                       	 <th>#</th>
                                            <th>Tên hoạt động</th>
                                            <th>Đơn vị tổ chức</th>
                                            <th>Ngày diễn ra</th>
                                            <th>Điểm rèn luyện</th>
                                            <th>Nội dung </th>
                                            <th></th>
                                             <th></th>
                                        </thead>
                                          <tbody>
                                          <% while(rs.next()){ %>
                                        	<tr>
                                            		<td></td>
                                            		<td><%=rs.getString("tenhd")%></td>
                                                    <td><%=rs.getString("donvitochuc")%></td>
                                                    <td><%=rs.getString("tgbatdau")%></td>
                                                    <td><%=rs.getString("diemrl")%></td>
                                                    <td><a href="chitiethoatdong.jsp?mahd=<%=rs.getInt("mahd")%>">Xem chi tiết</a></td>
                                                    <td><a href="chinhsua.jsp?mahd=<%=rs.getInt("mahd")%>&option=edit&value=hoatdong">Chỉnh sửa</a></td>
                                                    <td><a href="chinhsuaxoasubmit.jsp?mahd=<%=rs.getInt("mahd")%>&option=delete&value=hoatdong">Xóa</a></td>
                                            </tr>
                                            
                                            <%} %>
                                        </tbody>
                                    </table>
                            <% }catch(Exception cnfex){out.print(cnfex);}%> 
                                </div>
                            </div>
                    	 </div>
                    </div>
          		  </div>                    
             </div>
                  <div class="text-center">
                        <ul class="pagination">
                            <li><a href="">«</a></li>
                            <li class="active"><a >1</a></li>
                            <li><a href="">2</a></li>
                            <li><a href="">»</a></li>
                          </ul>
                      </div>
 <div id="themhoatdong_modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
   		<div class="modal-dialog">
        <div class="modal-content">
   		<form method="post" action="them.jsp?option=add&value=hoatdong">
                      <div class="col-lg-5">
                      	 <h4>Mã hoạt động (int)</h4><p><input class="form-control" type="text" name="mahd"></p>
                        <h4>Tên hoạt động (not null)</h4><p><input class="form-control" type="text" name="tenhd"></p>
                         <h4>Đơn vị tổ chức</h4><p>
                         <select name="donvitochuc" class="form-control">
		                         <option value="Đoàn khoa">Đoàn khoa</option>
		                         <option value="Đoàn trường">Đoàn trường</option>
                         </select>
                         </p>
                         <h4>Thời gian bắt đầu</h4><p><input class="form-control"  type="date" name="tgbatdau" ></p>
                          <h4>Thời gian kết thúc</h4><p><input class="form-control"  type="date" name="tgketthuc" ></p>
                        <h4>Điểm rèn luyện</h4><p><input class="form-control" type="text" name="diemrl" ></p>
                        <h4>Điểm CTXH</h4><p><input class="form-control" type="text" name="diemctxh" ></p>
                        <h4>Xuất hiện trên trang chủ</h4><p><select name="trangchu" class="form-control">
	                         <option value=0>Không</option>
	                        <option value=1>Có</option>
	                        </select></p>
						</div>  
                         <div class="col-lg-7">
                         <h4>Nội dung</h4><p> <textarea class="form-control" rows="20" name="noidung"> </textarea></p>
                         <h4>Hình ảnh kèm theo</h4><p><input class="form-control" type="file" name="urlhinhanh"></p>
						</div>  
               	   <div class="modal-footer">
                    <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="quanlyhoatdong.jsp">Close</a>
                    <input class="btn btn-primary btn-outline" type="submit" name="submit">
              	</div>
         	 </form>
         	 </div></div>
    </div>
	<%@ include file="footer.jsp" %>
</body>
</html>