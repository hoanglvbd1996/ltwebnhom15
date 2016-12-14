
<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file ="header.jsp" %>
<title>Chỉnh sửa </title>
</head>
<body>
<% 
	String value = request.getParameter("value");
	String option = request.getParameter("option");
	if(value.equals("chidoan") && option.equals("edit"))
	{
		try{
	       
	      	String machidoan =request.getParameter("ID");
	        String query = "select *, chidoan.id as idcd from chidoan inner join user on user.macd = chidoan.id and chidoan.id ="+machidoan+"";       
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

        			
        	<%if(rs.next()){ %>
        			<input type="hidden" id="machidoan" value="<%=rs.getString("idcd")%>">
                    <h4>Tên chi đoàn</h4><p><input class="form-control" type="text" id="tenchidoan" value="<%=rs.getString("TenCD") %>"></p>     
                     <h4>Họ tên các cán bộ đoàn</h4>
                     <select id="MaCB" class="form-control">
                   	 <option value="<%=rs.getInt("ID")%>" selected="selected"><%=rs.getString("HoTen")%> </option>
             <%}%>             
             <%   ResultSet rs1 = stat.executeQuery("select ID,HoTen from user where maquyen !=4"); 
             		while(rs1.next()){%>     	
             			 <option value="<%=rs1.getInt("ID")%>"><%=rs1.getString("HoTen")%> </option>
             		<%} %>
                     </select>
                   
           	   <div class="modal-footer">
                <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="danhsachchidoan.jsp">Close</a>
                <input class="btn btn-primary btn-outline" id="submitcd" Value="Sửa" >
          	</div>
	
        </div>
      </div>
  </div>
	</div>	
	 	 <%}catch (SQLException e1) {
			out.println(e1);
		} %>
	<% }
	else if(value.equals("doanvien") && option.equals("edit"))   
	 {
			String id =request.getParameter("ID");
	        String profilequery = "select * from  user where id ="+id+"";       
	        rs = stat.executeQuery(profilequery);

    %>
     	<div class="modal-dialog">
    <div class="modal-content" >
      <div class="modal-header">
	        <h4 class="modal-title text-center">Chỉnh sửa đoàn viên</h4>
 		</div>
      <div class="modal-body" style=" margin-left:20px;">
	        <div class="row">
	        	<% if(rs.next()){ %>
	        	<div class="form-group">		  
		        	<form  method="post" action="ChinhSua?value=doanvien&option=edit">
		        	<div class="col-lg-4">
		        		<input type="hidden" id="id" value="<%=rs.getString("ID")%>">
                       <h4>username</h4><p><input class="form-control" type="text" id="username" value="<%=rs.getString("Username")%>"></p>
                       <h4>password</h4><p><input class="form-control" type="text" id="pass" value="<%=rs.getString("Password")%>"></p>
                       <h4>MSSV</h4><p><input class="form-control" type="text" id="mssv" value="<%=rs.getString("mssv")%>"></p>
                       <h4>Khoa</h4><p><input class="form-control" type="text" id="khoa" value="<%=rs.getString("khoa")%>"></p>
                       <h4>Lớp</h4><p><input class="form-control" type="text" id="lop" value="<%=rs.getString("lop")%>"></p>
                       <h4>Giới tính</h4><p>  
                            <select class="form-control" id="gioitinh">     
                            	<%if(rs.getString("gioitinh").equals("Nam")){%>
                            		<option value="Nam" selected="selected">Nam</option>
                                    <option value="Nữ">Nữ</option>
                            		               
                            	<%}
                            	else{ %>
                            	<option value="Nam" >Nam</option>
                                    <option value="Nữ" selected="selected">Nữ</option>
                            	<%}%>
                                
                             </select>
                             </p>
                       <h4>Ngày vào đoàn</h4> <p><input class="form-control" type="date" id="ngayvaodoan" value="<%=rs.getString("ngayvaodoan")%>"></p>
                      <h4>Năm sinh</h4><p><input class="form-control" type="date" id="namsinh" value="<%=rs.getString("ngaysinh")%>"></p>
                    </div>
                      <div class="col-lg-8">
                        <h4>Họ tên</h4> <p><input class="form-control" type="text" id="hoten" value="<%=rs.getString("hoten")%>"></p>
                        <h4>Số điện thoại</h4> <p><input class="form-control" type="text" id="sdt" value="<%=rs.getString("sdt")%>"></p>
                        <h4>Email</h4> <p><input class="form-control" type="text" id="email" value="<%=rs.getString("email")%>"></p>
                        <h4>Số CMND</h4> <p><input class="form-control" type="text" id="cmnd" value="<%=rs.getString("cmnd")%>"></p>
                         <h4>Địa chỉ</h4> <p><input class="form-control" type="text" id="diachi" value="<%=rs.getString("diachi")%>"></p>
                          <%
                          		String sql1 ="select * from phanquyen";		
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
                      </div>  	 <div class="modal-footer">
			                <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="danhsachdoanvien.jsp">Close</a>
			                <input class="btn btn-primary btn-outline" id="submitdv" value="Chỉnh sửa">
			          	</div>
                 </form>
                 </div>
		   <%}profilequery ="";%>
	        </div></div></div></div>
	<%}
	else if(value.equals("hoatdong") && option.equals("edit"))   
	 {
			String mahd =request.getParameter("ID");
	        String hoatdongquery = "select * from hoatdong where mahd = "+mahd+"";       
	        rs = stat.executeQuery(hoatdongquery);
	%>      		
  	<div class="modal-dialog">
        <div class="modal-content">
        <%if(rs.next()){ %>
   		<form>
   			
                      <div class="col-lg-5">
                      <input type="hidden" id="mahd" value="<%=rs.getString("mahd")%>">
                        <h4>Tên hoạt động </h4><p><input required class="form-control" type="text" id="tenhd" value="<%=rs.getString("tenhd")%>"></p>
                         <h4>Địa điểm</h4><p><input class="form-control" type="text" id="diadiem" value="<%=rs.getString("diadiem")%>" ></p>
                         <h4>Thời gian bắt đầu</h4><p><input class="form-control" type="datetime-local" id="tgbatdau" value="<%=rs.getString("thoigianbatdau")%>"></p>
                       
                        <h4>Điểm rèn luyện</h4><p><input class="form-control" type="text" id="diemrl" value="<%=rs.getString("diemrl")%>" ></p>
                        <h4>Điểm CTXH</h4><p><input class="form-control" type="text" id="diemctxh" value="<%=rs.getString("diemctxh")%>"></p>
                        <h4>Duyệt hoạt động</h4><p><select id="trangthai" class="form-control">
                        	<% 
                        	if(rs.getInt("trangthai") ==0 )
                        	{%>
                        	
                        		<option value="0" selected="selected">Không</option>
                        		<option value="1">Có</option>
                        	<%}
                        	if(rs.getInt("trangthai") == 1)
                        	{%>
                        		<option value="0" >Không</option>
                        		<option value="1" selected="selected">Có</option>
	                         <%}  %> 
	                        
	                        </select></p>
						</div>  
                         <div class="col-lg-7">
                         <h4>Nội dung</h4><p> <textarea class="form-control" rows="20" id="noidung"><%=rs.getString("noidung")%>  </textarea></p>
                         <h4>Hình ảnh kèm theo</h4><p><input class="form-control" type="file" id="hinhanh" value="<%=rs.getString("hinhanh")%>"></p>
						</div>  
               	   <div class="modal-footer">
                    <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="quanlyhoatdong.jsp">Close</a>
                    <input class="btn btn-primary btn-outline" id="submit_hoatdong" value="Sửa">
              	</div>
         	 </form>
       </div></div>
       
   	 <%}} 
        else if(value.equals("profile") && option.equals("edit"))          
      {
   	    	String id =request.getParameter("ID");
   	        String profilequery = "SELECT * FROM user,phanquyen,chucvu where user.id= "+id+" and user.MaQuyen = phanquyen.id and chucvu.ID = user.MaChucVu";       
   	        rs = stat.executeQuery(profilequery);
		%>
     
       <div class="modal-dialog">
        <div class="modal-content">
         <div class="modal-header">
   	        <h4 class="modal-title text-center">Chỉnh sửa thông tin</h4>
    		</div>
         <div class="modal-body">
   	        	
   	        	<div class="form-group">		  
   		        	<form > <!-- method="post" action="chinhsuaxoasubmit.jsp?value=profile&option=edit" -->
   		        	<% while(rs.next()){ %>
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
                             <input disabled class="form-control input-md" type="text" value="<%=rs.getString("tenchucvu")%>">

                           <label >Email:</label>
                            <input  class="form-control "  id="email" type="text" value="<%=rs.getString("email") %>">

                           <label >Mã Số SV:</label>
                             <input disabled class="form-control" type="text" value="<%=rs.getString("mssv") %>">

                           <label > Lớp:</label>
                             <input disabled class="form-control " type="text" value="<%=rs.getString("lop")%>">
                           <label >Ngày vào đoàn:</label>
                             <input disabled  class="form-control " type="text" value="<%=rs.getString("ngayvaodoan") %>">

                           <label >Năm sinh:</label>
                            <input disabled class="form-control " type="text" value="<%=rs.getString("ngaysinh") %>">
                           <label >SĐT:</label>
                            <input  class="form-control " id="sdt" type="text" value="<%=rs.getString("sdt") %>">
                             <label >Địa chỉ:</label>
                            <input  class="form-control " id="diachi" type="text" value="<%=rs.getString("diachi") %>">
    					 <div class="modal-footer">
   			                <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href=profile.jsp?username=<%=rs.getString("username")%>>Close</a>
   			                <input class="btn btn-primary btn-outline" id="submit_profile" value="Sửa" >
   			          	</div>
   			          	<% }%> 
                    </form>
                    </div>
   					
   	        </div></div></div>
   	  <%} else if(value.equals("thongbao") && option.equals("edit"))          
   	  {
   			String id =request.getParameter("ID");
	        String profilequery = "select * from thongbao where ID = "+id+"";       
	        rs = stat.executeQuery(profilequery);
   	  %>
   		<div id="themthongbao_modal" >
   	   	<div class="modal-dialog">
   	   	<input type="hidden" id="id" value="<%=id%>">
   	        <div class="modal-content">
   	          <div class="modal-header">
   	     
   	            <h4 class="modal-title text-center">Sửa thông báo</h4>
   	          </div>
   	          <div class="modal-body">
   	            <div class="row">
   	                <form>
   	                	<%if(rs.next()){ %>
   	                      <div class="col-lg-4">
   	                      
   	                        <h4>Tên thông báo</h4><p><input class="form-control" type="text" id="tentbb" value="<%=rs.getString("tentb")%>"></p>                  
   	                          <h4>Thời gian đăng</h4><p><input class="form-control" id="thoigiandang" value="<%=rs.getString("thoigiandang")%>" placeholder="tự cập nhật" disabled></p>
   	                          <h4>Hình ảnh kèm theo</h4><p><input class="form-control" type="file" id="hinhanhh" value="<%=rs.getString("hinhanh")%>"></p>
   	                      </div>
   	                      <div class="col-lg-8">
   	                      	 <h4>Nội dung</h4><textarea class="form-control" rows="15" id="noidungg"  style="resize:none"><%=rs.getString("noidung")%></textarea>
   	                      </div>   
   	                      <%} %>
   	               	   <div class="modal-footer">
   	                   <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="quanlythongbao.jsp">Close</a>
   	                    <input class="btn btn-primary btn-outline" id="submit_thongbao" value="Sửa">
   	              	</div>
   	         	 </form>
   	             </div>
   	          </div>
   	      </div>
   	    </div>
   	</div>
   	  <%}else if(value.equals("hinhanhthongbao") && option.equals("edit"))   
   	  {
   			String id =request.getParameter("ID");
   	 %>
   	  
   	  <div id="themthongbao_modal" >
   	   	<div class="modal-dialog">
   	   	<input type="hidden" id="id" value="<%=id%>">
   	        <div class="modal-content">
   	          <div class="modal-header">
   	     
   	            <h4 class="modal-title text-center">Sửa thông báo</h4>
   	          </div>
   	          <div class="modal-body">
   	            <div class="row">
   	                <form action="UploadServlet?value=thongbao&ID=<%=id %>" method="post" enctype="multipart/form-data">
   	                      <div class="col-lg-4">
   	                        <h4>Hình ảnh</h4><p><input class="form-control" type="file" name="uploadFile"></p>                  
  							</div>
   	               	   <div class="modal-footer">
   	                   <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="quanlythongbao.jsp">Close</a>
   	                    <input class="btn btn-primary btn-outline" type="submit" value="Sửa">
   	              	</div>
   	         	 </form>
   	             </div>
   	          </div>
   	      </div>
   	    </div>
   	</div>
   	  <% }else if(value.equals("hinhanhhoatdong") && option.equals("edit"))   
   	  {
   			String id =request.getParameter("ID");
   	 %>
   	  
   	  <div id="themthongbao_modal" >
   	   	<div class="modal-dialog">
   	   	<input type="hidden" id="id" value="<%=id%>">
   	        <div class="modal-content">
   	          <div class="modal-header">
   	     
   	            <h4 class="modal-title text-center">Sửa hoạt động</h4>
   	          </div>
   	          <div class="modal-body">
   	            <div class="row">
   	                <form action="UploadServlet?value=hoatdong&ID=<%=id %>" method="post" enctype="multipart/form-data">
   	                      <div class="col-lg-4">
   	                        <h4>Hình ảnh</h4><p><input class="form-control" type="file" name="uploadFile"></p>                  
  							</div>
   	               	   <div class="modal-footer">
   	                   <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="quanlyhoatdong.jsp">Close</a>
   	                    <input class="btn btn-primary btn-outline" type="submit" value="Sửa">
   	              	</div>
   	         	 </form>
   	             </div>
   	          </div>
   	      </div>
   	    </div>
   	</div>
   	  <% }else if(value.equals("taikhoan") && option.equals("edit"))   
   	  {
   			String id =request.getParameter("ID");
   	 %>
   	  
   	  <div id="themthongbao_modal" >
   	   	<div class="modal-dialog">
   	   	<input type="hidden" id="uid" value="<%=id%>">
   	        <div class="modal-content">
   	          <div class="modal-header">
   	     
   	            <h4 class="modal-title text-center">Sửa tài khoản</h4>
   	          </div>
   	          <div class="modal-body">
   	            <div class="row">
   	          			   <%
                          		String sql6 ="select hoten from user where id = "+id+"";		
 						   		 rs = stat.executeQuery(sql6); 
 						    %>
   	            				 <%if (rs.next()){ %>                   
                              		  <h3 class="text-center"><%=rs.getString("Hoten") %></h3> 
                                <%} %>
   	                        <%
                          		String sql1 ="select * from phanquyen";		
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
   	               	   <div class="modal-footer">
   	                   <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="quanlytaikhoan.jsp">Close</a>
   	                    <input class="btn btn-primary btn-outline" id="submittk" value="Sửa">
   	              	</div>
   	             </div>
   	          </div>
   	      </div>
   	    </div>
   	</div>
   	  <% }%>
   	  <script type="text/javascript">
		 	 $(document).ready(function() {                        
			                $('#submit_profile').click(function() {  
							$.ajax({
								 type: "POST"	,
								url :'ChinhSua',
								scriptCharset: "utf-8" ,
							    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
									data: {
										email: $('#email').val(),
										sdt:  $('#sdt').val(),
										diachi: $('#diachi').val(),
										value:"profile",option:"edit"
									},
									success: function(responseText) { 
										//$('#result').text(responseText);
										alert(responseText);

										window.location = "profile.jsp";
									}
						});
				});
			});
		 	 $(document).ready(function() {                        
				                $('#submit_thongbao').click(function() {  
								$.ajax({
									 type: "POST"	,
									url :'ChinhSua',
									scriptCharset: "utf-8" ,
								    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
										data: {
											tentbb: $('#tentbb').val(),
											id : $('#id').val(),
											hinhanhh: $('#hinhanhh').val(),
											noidungg: $('#noidungg').val(),
											value:"thongbao",
											option:"edit",
										},
										success: function(responseText) { 
											//$('#result').text(responseText);
											alert(responseText);
											window.location = "quanlythongbao.jsp";
										}
							});
					});
				});
			 $(document).ready(function() {                        
				                $('#submit_hoatdong').click(function() {  
								$.ajax({
									 type: "POST"	,
									url :'ChinhSua',
									scriptCharset: "utf-8" ,
								    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
										data: {
											mahd : $('#mahd').val(),
											tenhd: $('#tenhd').val(),
											diadiem: $('#diadiem').val(),
											tgbatdau: $('#tgbatdau').val(),
											diemrl: $('#diemrl').val(),
											diemctxh: $('#diemctxh').val(),
											trangthai: $('#trangthai').val(),
											noidung: $('#noidung').val(),
											hinhanh: $('#hinhanh').val(),
											value:	"hoatdong",
											option: "edit",
										},
										success: function(responseText) { 
											//$('#result').text(responseText);
											alert(responseText);
											window.location = "quanlyhoatdong.jsp";
										}
							});
					});
				});
 	</script>
 	<script type="text/javascript">
		 $(document).ready(function() {                        
	                $('#submitdv').click(function() {  
					$.ajax({
						 type: "POST"	,
						url :'ChinhSua',
						scriptCharset: "utf-8" ,
					    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
							data: {
								id : $('#id').val(),
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
								option:	"edit",
							},
							success: function(responseText) {
								  
								alert(responseText);
								window.location = "danhsachdoanvien.jsp";
							}
				});
		});
	});
</script>
 	<script type="text/javascript">
		 $(document).ready(function() {                        
	                $('#submittk').click(function() {  
					$.ajax({
						 type: "POST"	,
						url :'ChinhSua',
						scriptCharset: "utf-8" ,
					    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
							data: {
								id : $('#uid').val(),
								maquyen: $('#maquyen').val(),
								machucvu: $('#machucvu').val(),
								macd: $('#macd').val(),
								
								value: "taikhoan",
								option:	"edit",
							},
							success: function(responseText) {
								  
								alert(responseText);
								window.location = "quanlytaikhoan.jsp";
							}
				});
		});
	});
</script>
</script>
 	<script type="text/javascript">
		 $(document).ready(function() {                        
	                $('#submitcd').click(function() {  
					$.ajax({
						 type: "POST"	,
						url :'ChinhSua',
						scriptCharset: "utf-8" ,
					    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
							data: {
								machidoan : $('#machidoan').val(),
								tenchidoan : $('#tenchidoan').val(),
								MaCB : $('#MaCB').val(),
								
								value: "chidoan",
								option:	"edit",
							},
							success: function(responseText) {
								  
								alert(responseText);
								window.location = "danhsachchidoan.jsp";
							}
				});
		});
	});
</script>
<%@ include file ="footer.jsp" %>	