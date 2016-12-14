<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file ="header.jsp" %>
<c:choose>
 <c:when test="${sessionScope.ID == null}" >
  		<h3 class="text-center">Bạn chưa đăng nhập!</h3>
   </c:when>
    <c:when test="${sessionScope.ID != null}" >
    <head><title>Quản lý thông báo</title></head>
    		  <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                            	   <div class="content table-responsive table-full-width">
                                   	
                                      <div class="col-md-6 form-group form-inline" >
                                                <a class="btn btn-default btn-outline" data-target="#themthongbao_modal" data-toggle="modal">Thêm thông báo</a>
                                                
                                     </div>
                                     <form action="timkiem?value=thongbao" method="post"> 
                                     <div class="col-md-4 form-group form-inline" >
                                            
                                                <input type="text"size="60px" class="form-control" name="ten" placeholder="Tên thông báo">
                                                </div>
                                                <div class="col-md-2 form-group form-inline" >
	      <input type="submit" value="Tìm kiếm" name="submit" class="btn btn-dafault">
                                     
                                    	 </div>
                                     </form>
                                  	 
                     <% 
				    	String sSQL ="	select *,thongbao.id as IDTB from thongbao join user on thongbao.IDnguoidang = user.id";		
					    rs = stat.executeQuery(sSQL);
					 rs.last();
					  int numrow = rs.getRow();
					  rs.beforeFirst();
					   if(numrow == 0)
					   {
						   %>
						<div class="panel panel-default">
								<h3>Thông báo trống</h3>
						 </div>
					<% }
					 else{%>           	  
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
                                      			 <td><%=rs.getString("noidung") %></td>
                                      			 <td><%=rs.getString("thoigiandang") %></td>                                     		
                                      			 <td><%=rs.getString("Hoten") %></td>
                                       			 <td><a href="chitietthongbao.jsp?ID=<%=rs.getInt("IDTB")%>">Xem chi tiết</a></td>
                                                  <td><a href="chinhsua.jsp?ID=<%=rs.getInt("IDTB")%>&option=edit&value=thongbao">Chỉnh sửa</a></td>
                                                    <td><a href="chinhsua.jsp?ID=<%=rs.getInt("IDTB")%>&option=edit&value=hinhanhthongbao">Hình ảnh</a></td>
  													<td><a  href="" class="xoatb<%=rs.getInt("IDTB")%>" >Xóa</a></td>
                                            </tr>
                                               
	 										<script type="text/javascript">
												 $(document).ready(function() {                        
									                $('.xoatb<%=rs.getInt("IDTB")%>').click(function() {  
															if (confirm('Có chắc không?')) {
																$.ajax({
																	 type: "POST"	,
																	url :'chinhsuaxoasubmit',
																	scriptCharset: "utf-8" ,
																    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
																	data: {
																		 ID  : "<%=rs.getInt("IDTB")%>",
																		value : "thongbao",
																		option : "delete"
																	},
																	success: function(responseText) { 
																		alert(responseText);
																		location.reload();
																	}
															});
																	} else {}
											    // Do nothing!	
											    });
											});	</script>
												
                                            <%}} %>
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
             <form action="them?option=add&value=thongbao" method="post">
                      <div class="col-lg-4">
                     
                        <h4>Tên thông báo</h4><p><input class="form-control" type="text" name="tentbb"></p>                  
                          <h4>Thời gian đăng</h4><p><input class="form-control" name="thoigiandang" placeholder="tự cập nhật" disabled></p>
                      </div>
                      <div class="col-lg-8">
                      	 <h4>Nội dung</h4><textarea class="form-control" rows="15" name="noidungg" style="resize:none"></textarea>
                      </div>   
               	   <div class="modal-footer">
                   <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="danhsachdoanvien.jsp">Close</a>
                    <input class="btn btn-primary btn-outline" type="submit" id="submit" value="Thêm">
              	</div>
  	</form>
 	            </div>
          </div>
      </div>
    </div>
</div>
    </c:when>
 </c:choose>
    <script type="text/javascript">
 $(document).ready(function() {                        
	                $('#submit').click(function() {  
								alert("Thêm thành công!");
								window.location = "quanlythongbao.jsp";
				});
	});
</script>
    <%@include file="footer.jsp"%>