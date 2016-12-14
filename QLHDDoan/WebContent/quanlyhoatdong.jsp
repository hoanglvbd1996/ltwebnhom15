<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file ="header.jsp" %>

<c:choose>
 <c:when test="${sessionScope.ID == null}" >
  		<h3 class="text-center">Bạn chưa đăng nhập!</h3>
 </c:when>
   <c:when test="${sessionScope.ID != null}" >
 	  <head><title>Quản lý hoạt động</title></head>
   	 <div class="main-panel">
                 <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                            	   <div class="content table-responsive table-full-width">
                                   
                                   	<div class="col-md-6 form-group form-inline" >
                                    		<a class="btn btn-default btn-outline" data-target="#themhoatdong_modal" data-toggle="modal">Thêm hoạt động</a>
                                    		</div>
                                  <form action="timkiem?value=hoatdong" method="post">
                                    		<div class="col-md-4 form-group form-inline" >
                                                <input type="text"size="60px" class="form-control" name="ten" placeholder="Nhập từ khóa">
                                                </div>
                                                <div class="col-md-2 form-group form-inline" >
	    			  <input type="submit" name="submit" class="btn btn-dafault" value="Tìm kiếm">
                                     </div>
                                  	  </form>
                 <% 
				    try{
				    	String sSQL ="call sp_DShoatdong";		
					    rs = stat.executeQuery(sSQL);
					%>
                            
                                    <table class="table table-hover table-striped">
                                    	<thead>
                                       	 <th>#</th>
                                            <th>Tên hoạt động</th>
                                            <th>Đơn vị tổ chức</th>
                               				<th>Địa điểm</th>
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
                                                    <td><%=rs.getString("mota")%></td>
                                                     <td><%=rs.getString("diadiem")%></td>
                                                    <td><%=rs.getString("thoigianbatdau")%></td>
                                                    <td><%=rs.getString("diemrl")%></td>
                                                    <td><a href="chitiethoatdong.jsp?ID=<%=rs.getInt("MaHD")%>">Xem chi tiết</a></td>
                                                    <td><a href="chinhsua.jsp?ID=<%=rs.getInt("MaHD")%>&option=edit&value=hoatdong">Chỉnh sửa</a></td>
                                                      <td><a href="chinhsua.jsp?ID=<%=rs.getInt("MaHD")%>&option=edit&value=hinhanhhoatdong">Hình ảnh</a></td>
                                                    <td><a  href="" class="xoahd<%=rs.getInt("MaHD")%>" >Xóa</a></td>
 										<script type="text/javascript">
											 $(document).ready(function() {                        
								                $('.xoahd<%=rs.getInt("MaHD")%>').click(function() {  
											if (confirm('Có chắc không?')) {
												$.ajax({
													 type: "POST"	,
													url :'chinhsuaxoasubmit',
													scriptCharset: "utf-8" ,
												    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
													data: {
														 ID  : "<%=rs.getInt("MaHD")%>",
														value : "hoatdong",
														option : "delete"
													},
													success: function(responseText) { 
														alert(responseText);
														location.reload();
													}
											});
											} else {
						    // Do nothing!
						}
	});
});
		</script>
                                           
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
   				<form>
                      <div class="col-lg-5">
                        <h4>Tên hoạt động </h4><p><input required class="form-control" type="text" id="tenhd"></p>
                         </p>
                         <h4>Địa điểm</h4><p><input class="form-control" type="text" id="diadiem" ></p>
                         <h4>Thời gian bắt đầu</h4><p><input class="form-control"  type="datetime-local"  id="tgbatdau" ></p>
                       
                        <h4>Điểm rèn luyện</h4><p><input class="form-control" type="text" id="diemrl" ></p>
                        <h4>Điểm CTXH</h4><p><input class="form-control" type="text" id="diemctxh" ></p>
                        <h4>Duyệt hoạt động</h4><p>
                        	<select id="trangthai" class="form-control">
	                         <option value=0>Không</option>
	                        <option value=1>Có</option>
	                        </select></p>
						</div>  
                         <div class="col-lg-7">
                         <h4>Nội dung</h4><p> <textarea class="form-control" rows="20" id="noidung"> </textarea></p>
						</div>  
               	   <div class="modal-footer">
                    <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="quanlyhoatdong.jsp">Close</a>
               		  <input class="btn btn-primary btn-outline" value="Thêm" id="submithd"/>
              	</div>
         	 </form>
         	 </div></div>
    </div>
   </c:when>
  
  </c:choose>
  <script type="text/javascript">
 					 $(document).ready(function() {                        
	                $('#submithd').click(function() {  
						$.ajax({
							 type: "POST"	,	
							url :'them',
							scriptCharset: "utf-8" ,
						    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
								data: {
									tenhd : $('#tenhd').val(),
									diadiem: $('#diadiem').val(),
									tgbatdau: $('#tgbatdau').val(),
									diemrl: $('#diemrl').val(),
									diemctxh: $('#diemctxh').val(),
									trangthai: $('#trangthai').val(),
									noidung: $('#noidung').val(),
									value:"hoatdong",option:"add"
								},
								success: function(responseText) {
									  
									alert(responseText);
									location.reoad();
								}
						});
					});
});
</script>
  <script type="text/javascript">
 $(document).ready(function() {                        
	                $('#xoahd').click(function() {  
					$.ajax({
						 type: "POST"	,
						url :'them',
						scriptCharset: "utf-8" ,
					    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
							data: {
								 tenhd  : $('#tenhd').val(),
								 diadiem : $('#diadiem').val(),
								 tgbatdau : $('#tgbatdau').val(),
								 diemrl : $('#diemrl').val(),
								 diemctxh : $('#diemctxh').val(),
								 trangthai : $('#trangthai').val(),
								 noidung : $('#noidung').val(),
								 hinhanh : $('#hinhanh').val(),
								value : "hoatdong",
								option : "add"
							},
							success: function(responseText) { 
								alert(responseText);
								location.reload();
							}
				});
		});
	});
</script>
  <%@ include file="footer.jsp"%>