<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file ="header.jsp" %>
<c:choose>
 <c:when test="${sessionScope.ID == null}" >
  		<h3 class="text-center">Bạn chưa đăng nhập!</h3>
   </c:when>
    <c:when test="${sessionScope.ID != null}" >
    <head><title>Danh sách đoàn viên</title></head>
                    <div class="content">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                       <div class="content table-responsive table-full-width">   
										<div class="col-md-6 form-group form-inline" >
                                    		<a class="btn btn-default btn-outline" data-target="#themdoanvien_modal" data-toggle="modal">Thêm đoàn viên</a>
                                    		</div>
                                    	<form action="timkiem?value=doanvien" method="post">
                                    		<div class="col-md-4 form-group form-inline" >
                                                
                                                <input type="text"size="60px" class="form-control" name="ten" placeholder="Nhập từ khóa">
                                                </div>
                                                <div class="col-md-2 form-group form-inline" >
	     										 <input type="submit" name="submit" class="btn btn-dafault" value="Tìm kiếm">
                                     		</div>
                                  	  </form>     
                     <% 
				    	String sSQL ="call sp_DSdoanvien";		
					    rs = stat.executeQuery(sSQL);
					 rs.last();
					  int numrow = rs.getRow();
					  rs.beforeFirst();
					  int stt=1;
					   if(numrow == 0)
					   {
						   %>
						<div class="panel panel-default">
								<h3>Danh sách đoàn viên rỗng</h3>
						 </div>
					<% }
					 else{%>        
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
                                                <th>Chức vụ</th>
                                                <th>Thuộc chi đoàn</th>
                                                <th></th>
                                               <th></th>
                                            </thead>
                                            <tbody>
                                            <%while (rs.next()){ %>
                                                <tr>
	                                                        <td><%=stt++ %></td>
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
	                                                        <td><%=rs.getString("TenChucvu") %></td>
	                                                        <td><%=rs.getString("TenCD") %></td>
	                                                           <td><a href="chinhsua.jsp?ID=<%=rs.getString("UID")%>&option=edit&value=doanvien">Chỉnh sửa</a></td> 
											           <td><a  href="" class="xoadv<%=rs.getInt("UID")%>" >Xóa</a></td>
 										<script type="text/javascript">
											 $(document).ready(function() {                        
								                $('.xoadv<%=rs.getInt("UID")%>').click(function() {  
											if (confirm('Có chắc không?')) {
												$.ajax({
													 type: "POST"	,
													url :'chinhsuaxoasubmit',
													scriptCharset: "utf-8" ,
												    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
													data: {
														 ID  : "<%=rs.getInt("UID")%>",
														value : "doanvien",
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
										<%}}rs.close(); %>
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
            	<form method="post" action="them?value=doanvien&option=add">
                      <div class="col-lg-4">
                       <h4>username</h4><p><input class="form-control" type="text" id="username"></p>
                          <h4>password</h4><p><input class="form-control" type="text" id="pass"></p>
                        <h4>MSSV</h4><p><input class="form-control" type="text" id="mssv"></p>
                         <h4>Khoa</h4><p><input class="form-control" type="text" id="khoa"></p>
                         <h4>Lớp</h4><p><input class="form-control" type="text" id="lop"></p>
                         <h4>Giới tính</h4><p>  
                            <select class="form-control" id="gioitinh">                    
                                <option value="Nam">Nam</option>
                                 <option value="Nữ">Nữ</option>
                             </select>
                             </p>
                          <h4>Ngày vào đoàn</h4> <p><input class="form-control" type="date" id="ngayvaodoan"></p>
                         <h4>Năm sinh</h4><p><input class="form-control" type="date" id="namsinh"></p>
                      </div>
                      <div class="col-lg-8">
                        <h4>Họ tên</h4> <p><input class="form-control" type="text" id="hoten"></p>
                        <h4>Số điện thoại</h4> <p><input class="form-control" type="text" id="sdt"></p>
                        <h4>Email</h4> <p><input class="form-control" type="text" id="email"></p>
                        <h4>Số CMND</h4> <p><input class="form-control" type="text" id="cmnd"></p>
                         <h4>Địa chỉ</h4> <p><input class="form-control" type="text" id="diachi"></p>
                          <%String sql1 ="select * from phanquyen";		
 						    rs = stat.executeQuery(sql1); 
 						    %>
                          <h4>Quyền</h4><p>  
                            <select class="form-control" id="maquyen"> 
                            <%while (rs.next()){ %>                   
                                <option value="<%=rs.getInt("ID")%>"><%=rs.getString("TenQuyen") %></option>
                                <%} %>
                             </select>
                             </p>
                           <%String sql2 ="select * from chucvu";		
 						    rs = stat.executeQuery(sql2); 
 						    %>
                          <h4>Chức vụ</h4><p>  
                            <select class="form-control" id="machucvu"> 
                            <%while (rs.next()){ %>                   
                                <option value="<%=rs.getInt("ID")%>"><%=rs.getString("tenchucvu") %></option>
                                <%} %>
                             </select>
                             </p>  
                               <%String sql3 ="select * from chidoan";		
 						    rs = stat.executeQuery(sql3); 
 						    %>
                          <h4>Chi đoàn</h4><p>  
                            <select class="form-control" id="macd"> 
                            <%while (rs.next()){ %>                   
                                <option value="<%=rs.getInt("ID")%>"><%=rs.getString("tencd") %></option>
                                <%} %>
                             </select>
                             </p>  
                      </div>   
               	   <div class="modal-footer">
                   <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="danhsachdoanvien.jsp">Close</a>
                    <input class="btn btn-primary btn-outline"  id="submitdv" value="Thêm">
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
	                $('#submitdv').click(function() {  
					$.ajax({
						 type: "POST"	,
						url :'them',
						scriptCharset: "utf-8" ,
					    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
							data: {
								username : $('#username').val(),
								pass: $('#pass').val(),
								mssv: $('#mssv').val(),
								khoa: $('#khoa').val(),
								lop: $('#lop').val(),
								gioitinh: $('#gioitinh').val(),
								ngayvaodoan: $('#ngayvaodoan').val(),
								namsinh: $('#namsinh').val(),
								hoten: $('#hoten').val(),
								sdt: $('#sdt').val(),
								email: $('#email').val(),
								cmnd: $('#cmnd').val(),
								diachi: $('#diachi').val(),
								maquyen: $('#maquyen').val(),
								machucvu: $('#machucvu').val(),
								macd: $('#macd').val(),
								
								value: "doanvien",
								option:	"add",
							},
							success: function(responseText) {
								  
								alert(responseText);
								window.reload();
							}
				});
		});
	});
</script>
 <%@ include file="footer.jsp"%>