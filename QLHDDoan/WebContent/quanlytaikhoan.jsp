<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file ="header.jsp" %>
<c:choose>
 <c:when test="${sessionScope.ID == null}" >
  		<h3 class="text-center">Bạn chưa đăng nhập!</h3>
   </c:when>
    <c:when test="${sessionScope.ID != null}" >
    <head><title>Danh sách tài khoản</title></head>
    
    	<div class="wrapper">	
        	<div class="main-panel">
              <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                            	   <div class="content table-responsive table-full-width">
                                  <div class="col-md-6 form-group form-inline" >
                                    		<a class="btn btn-default btn-outline"  data-target="#themtaikhoan_modal" data-toggle="modal">Thêm tài khoản</a>
                                  	 </div>
                                    <form action="ketquatimkiem.jsp?value=taikhoan" method="post"> 
                                     <div class="col-md-4 form-group form-inline" >
                                            
                                                <input type="text"size="60px" class="form-control" name="ten" placeholder="Tên thông báo">
                                                </div>
                                                <div class="col-md-2 form-group form-inline" >
	    				  <input type="submit" value="Tìm kiếm" name="submit" class="btn btn-dafault">
                                     
                                    	 </div>
                                     </form>
			  <% 
				    try{
				    	String sSQL ="select *,user.id as UID from  user ,login,phanquyen,chucvu where chucvu.id= user.machucvu and login.id = user.id and phanquyen.id = user.maquyen";		
					    rs = stat.executeQuery(sSQL);
					    int stt = 1;
					 rs.last();
					  int numrow = rs.getRow();
					  rs.beforeFirst();
					   if(numrow == 0)
					   {
						   %>
						<div class="panel panel-default">
								<h3>Tài khoản trống</h3>
						 </div>
					<% }
					 else{%>
                                    <table class="table table-hover table-striped">
                                    	<thead>
                                     		 <th>#</th>
                                            <th>Tên tài khoản</th>
                                            <th>Password</th>
                                            <th>Quyền</th>
                                             <th>Chức vụ</th>
                                            <th>Thời gian truy cập gần nhất</th>
                                             <th>Thời gian đăng xuất gần nhất</th>
                                              <th></th>
                                             <th></th>
                                        </thead>
                                        <tbody>
                                         <% while(rs.next()){ %>
                                        		<tr>
                                            		<td></td>
                                                    <td><%=rs.getString("username") %></td>
                                                    <td><%=rs.getString("password")%></td>
                                                    <td><%=rs.getString("TenQuyen")%></td>
                                                    <td><%=rs.getString("TenChucVu")%></td>
                                                    <td><%=rs.getString("timelogin")%></td>
                                                    <td><%=rs.getString("timelogout")%></td>
                                                   <td><a href="chinhsua.jsp?ID=<%=rs.getString("UID")%>&option=edit&value=taikhoan">Chỉnh sửa</a></td>
                                         	           <td><a  href="" class="xoatk<%=rs.getInt("UID")%>" >Xóa</a></td>
 										<script type="text/javascript">
											 $(document).ready(function() {                        
								                $('.xoatk<%=rs.getInt("UID")%>').click(function() {  
											if (confirm('Có chắc không?')) {
												$.ajax({
													 type: "POST"	,
													url :'chinhsuaxoasubmit',
													scriptCharset: "utf-8" ,
												    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
													data: {
														 ID  : "<%=rs.getInt("UID")%>",
														value : "taikhoan",
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
                                             <%;}}sSQL ="";%>
                                        </tbody>
                                        
                                    </table>
                           <% }catch(Exception cnfex){out.print(cnfex);}%> 
                                </div>
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


   <div id="themtaikhoan_modal" class="modal modal-fullscreen fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
   	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title text-center">Thêm tài khoản</h4>
          </div>
          <div class="modal-body">
            <div class="row">
            <form>
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
                    <input class="btn btn-primary btn-outline"  id="submit" value="Thêm">
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
					$.ajax({
						 type: "POST"	,
						url :'them',
						scriptCharset: "utf-8" ,
					    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
							data: {
								username : $("#username").val(),
								pass: $("#pass").val(),
								mssv: $("#mssv").val(),
								khoa: $("#khoa").val(),
								lop: $("#lop").val(),
								gioitinh: $("#gioitinh").val(),
								ngayvaodoan: $("#ngayvaodoan").val(),
								namsinh: $("#namsinh").val(),
								hoten: $("#hoten").val(),
								sdt: $("#sdt").val(),
								email: $("#email").val(),
								cmnd: $("#cmnd").val(),
								diachi: $("#diachi").val(),
								maquyen: $("#maquyen").val(),
								machucvu: $("#machucvu").val(),
								macd: $("#macd").val(),
								value :	 "taikhoan",
								option :	"add",
							},
							success: function(responseText) {
								  
								alert(responseText);
								location.reoad();
							}
				});
		});
	});
</script>
 <%@ include file="footer.jsp"%>