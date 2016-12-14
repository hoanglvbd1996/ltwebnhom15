<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file ="header.jsp" %>
<%
try{
	String ID =request.getParameter("ID");
	String sql = "Select * from phanquyen, hoatdong inner join user on user.id = hoatdong.idnd where MaHD="+ID+" and phanquyen.ID = MaQuyen";
	rs = stat.executeQuery(sql);
	rs.last();
	int numrow = rs.getRow();
	rs.beforeFirst();
	 if(numrow == 0)
 {
%>

    <h1>Error 404!</h1>
   
<% }
else{%>           		  		 
  <div class="container">
                <div class="row">
                    <%if(rs.next()){ %>
                    <head><title><%=rs.getString("TenHD")%></title></head>
                         <h3 class="page-header"><%=rs.getString("TenHD") %></h3>
                         <div class="col-md-2"><h4>Đơn vị tổ chức</h4> <h4 style="color:blue;"><%=rs.getString("MoTa") %> </h4></div>
                         <div class="col-md-3"><h4>Ngày diễn ra hoạt động</h4> <h4 style="color:blue;"><%=rs.getString("ThoiGianBatDau") %> </h4></div>
                         <div class="col-md-2"><h4>Địa điểm</h4> <h4 style="color:blue;"><%=rs.getString("DiaDiem") %> </h4></div>
                         <div class="col-md-2"><h4>Điểm rèn luyện</h4> <h4 style="color:blue;"><%=rs.getString("DiemRL") %> </h4></div>
                         <div class="col-md-3"><h4>Điểm công tác xã hội</h4> <h4 style="color:blue;"><%=rs.getString("DiemCTXH") %> </h4></div>
                    
                 </div>
                 <div class="row">
                 		<div class="col-md-4">
                 		<label>Hình ảnh</label>
                         <img class="img-thumbnail well " src="img\<%=rs.getString("HinhAnh") %>" alt="Card image" style="width:500px;">
                         <form>
                         	<input type="hidden" id="mahd" value="<%=rs.getString("MaHD")%>">
                         	<input id="dangkyhd" class="btn btn-outline btn-success form-control" value="Đăng ký hoạt động này"><br><br>   
                         </div>
                         </form>
                         <div class="col-md-8">
                          <label>Nội dung</label>   
                          <br>                
                          <textarea class="form-control" style="height:200px;resize:none;"><%=rs.getString("NoiDung") %></textarea>                                                              
                                               
                          </div>
              </div>

       <%}sql ="";} rs.close();%> 
    </div>
  <%}
	catch (Exception e) {
		%> <h1>Error 404!</h1><%
 	   }%>
 	     <script type="text/javascript">
		 	 $(document).ready(function() {                        
			                $('#dangkyhd').click(function() {  
							$.ajax({
								 type: "POST"	,
								 scriptCharset: "utf-8" ,
								    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
								url :'dangky',
									data: {
										ID: $('#mahd').val(),
									},
									success: function(responseText) { 
										//$('#result').text(responseText);
										alert(responseText);
									}
						});
				});
			});
 	</script>
<%@ include file ="footer.jsp" %>