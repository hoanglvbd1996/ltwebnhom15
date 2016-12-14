
<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file ="header.jsp" %>
   <head><title>Hoạt động</title></head>
   <div class="container">
   <div class="row">
   						
				<div class="container-fluid">
				<div style="border-bottom: 2px solid red" class="block-title">
			                   <form class="form-inline" action="timkiem?value=hoatdong" method="post">
			                     <a style="background-color: red; color: white; padding:9px;">HOẠT ĐỘNG MỚI</a>
						     		   <input type="text"size="140px" class="form-control" name="ten" placeholder="Tên hoạt động">
								      <input type="submit" class="btn btn-dafault" name="submit" value="Tìm kiếm ">
							    </form>
					                        <div style="border-bottom: 2px solid red" ></div>
			              </div><BR>
			               <div class="panel-group">
  				 <% 
				    try{
						String sSQL ="select * from hoatdong where mahd not in(select dangkyhd.mahd from hoatdong,dangkyhd where hoatdong.MaHD = dangkyhd.MaHD  and hoatdong.TrangThai =1 and dangkyhd.iddk = "+session.getAttribute("ID")+")  and ThoiGianBatDau >  Now() order by ThoiGianBatDau DESC limit 10;";		
					    rs = stat.executeQuery(sSQL);
					    rs.last();
					   int numrow = rs.getRow();
					   rs.beforeFirst();
					    if(numrow == 0)
					    {
					%>
						<div class="panel panel-default">
              				<h3>Hiện chưa có hoạt động mới</h3>
           		  		 </div>
					<% }
					else{%>
					
					 <% while(rs.next()){ 
					
					 %>
					 <div class="panel panel-default">
						<div class="panel-body"> 
	              			 <div class="row">
		              		 <div class="col-md-4">
		              		 <img  class="img-responsive" src="img/<%=rs.getString("HinhAnh") %>"></div>
		              				 <div class="col-md-8"><h4 ><a  href="chitiethoatdong.jsp?ID=<%=rs.getInt("MaHD")%>" style="padding: 0px;"><%=rs.getString("TenHD") %></a></h4>
									<time>Thời gian bắt đầu: <%=rs.getString("ThoiGianBatDau") %></time>
									<h5>Điểm rèn luyện: <%=rs.getString("DiemRL") %>; Điểm công tác xã hội: <%=rs.getString("DiemCTXH") %></h5>
									<h5>Địa điểm:<%=rs.getString("DiaDiem")%></h5>
									</div></div>
	              				 </div>
              				 </div>			  
			      <%}sSQL ="";}%> 
			   <%  	
				}catch(Exception cnfex){}%> 
				</div>
				
				<div style="border-bottom: 2px solid #2c54aa" class="block-title">
			                    <a style="background-color: #2c54aa; color: white; padding:5px;" >HOẠT ĐỘNG ĐÃ QUA</a>
			                        <div style="border-bottom: 2px solid #2c54aa" ></div>
			              </div><BR>
			               <div class="panel-group">
  				 <% 
				    try{
						String sSQL ="select * from hoatdong where hoatdong.TrangThai = 1 and  hoatdong.ThoiGianBatDau < now() or hoatdong.MaHD in (SELECT dangkyhd.MaHD from hoatdong,dangkyhd WHERE hoatdong.MaHD = dangkyhd.MaHD and dangkyhd.iddk = "+session.getAttribute("ID")+")";		
					    rs = stat.executeQuery(sSQL);
					   rs.last();
					   int numrow = rs.getRow();
					   rs.beforeFirst();
					    if(numrow == 0)
					    {
					%>
						<div class="panel panel-default">
              				<h3>Hiện chưa có hoạt động cũ</h3>
           		  		 </div>
					<% }
					else{%>
						 <% while(rs.next()){ %>				
					<div class="panel panel-default">
						<div class="panel-body"> 
	              			 <div class="row">
		              		 <div class="col-md-4">
		              		 <img  class="img-responsive" src="img/<%=rs.getString("HinhAnh") %>"></div>
		              				 <div class="col-md-8"><h4 ><a  href="chitiethoatdong.jsp?ID=<%=rs.getInt("MaHD")%>" style="padding: 0px;"><%=rs.getString("TenHD") %></a></h4>
									<time>Thời gian bắt đầu: <%=rs.getString("ThoiGianBatDau") %></time>
									<h5>Điểm rèn luyện: <%=rs.getString("DiemRL") %>; Điểm công tác xã hội: <%=rs.getString("DiemCTXH") %></h5>
									<h5>Địa điểm:<%=rs.getString("DiaDiem")%></h5>
									</div></div>
	              				 </div>
              				 </div>								
				   <hr>
			   <%}sSQL ="";}%>
			   <%  	
							}catch(Exception cnfex){
						}%> 
				</div>
				</div>			
			 <%conn.close(); %>
 </div>
 </div>
 
<%@ include file ="footer.jsp" %>