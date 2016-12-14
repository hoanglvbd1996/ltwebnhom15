
<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file ="header.jsp" %>

<head><title>Trang chủ</title></head>
	<div class="container">
            <div class="row">
            <div class="container-fluid">
          
			                <div style="border-bottom: 2px solid red" class="block-title">
			                <div class="row">
			              	  <div class="col-md-4">
			              	  	 <a style="background-color: red; color: white; padding:9px;">THÔNG BÁO MỚI</a>
			              	  </div>
			                	
			                     <form class="col-md-8" action="ketquatimkiem.jsp?value=thongbao" method="post">  
			                        <div class="col-md-4 form-group form-inline" >  
							      	  	<input type="text" class="form-control" name="ten" placeholder="Tên thông báo">    </div>
								  	 <div class="col-md-2 form-group form-inline" >
	      <input type="submit" value="Tìm kiếm" name="submit" class="btn btn-dafault"></div>    
								  </form>
							    
							    
			                </div>
			                
			                   <div style="border-bottom: 2px solid red" ></div>
			                </div>
			  <br><div class="panel-group">
				    <% 
				    try{
						String sSQL ="select  * from thongbao where ((curdate() -date(thongbao.ThoiGianDang)) <= 5)   order by ThoiGianDang DESC;";
										
					    rs = stat.executeQuery(sSQL);
					    rs.last();
					   int numrow = rs.getRow();
					   rs.beforeFirst();
					    if(numrow == 0)
					    {
					%>
						<div class="panel panel-default">
              				<h3>Hiện chưa có thông báo mới</h3>
           		  		 </div>
					<% }
					else{%>
					
				                                 <% while(rs.next()){
				                                		 
				                                	 %>
				                                <div class="panel panel-default">
              									 <div class="panel-heading"><h4><a  href="chitietthongbao.jsp?ID=<%=rs.getString("ID")%>"><%= rs.getString("TenTB") %></a></h4>
              									 <br><a style="color: black"> [Ngày đăng bài: <%=rs.getString("ThoiGianDang") %>]</a> </div>
              									 <div class="panel-body"> 
	              									 <div class="row">
		              									 <div class="col-md-3">
		              									 <img  class="img-responsive"  src="img/<%=rs.getString("HinhAnh") %>"></div>
		              									 <div class="col-md-9"><%=rs.getString("NoiDung") %></div>
	              									 </div>
              									 </div>
              									 </div>
				                                <%}sSQL ="";}%> 
				                          	<%  	
											}catch(Exception cnfex){out.print(cnfex);}%>     		
										                                
				                       
				        	   
			  			  </div>
			  			  </div>
					
					</div>
					<div style="border-bottom: 2px solid #2c54aa" class="block-title">
			                    <a style="background-color: #2c54aa; color: white; padding:5px;">THÔNG BÁO CŨ</a>
			                        <div style="border-bottom: 2px solid #2c54aa" ></div>
			                </div>
			                <br>
					<div class="panel-group">
				    <% 
				    try{
						String sSQL ="select  * from thongbao where ((curdate() -date(thongbao.ThoiGianDang)) <= 10 and (curdate() -date(thongbao.ThoiGianDang)) >5)   order by ThoiGianDang DESC;";		
					    rs = stat.executeQuery(sSQL);
					    rs.last();
					    int numrow = rs.getRow();
					    rs.beforeFirst();
					    if(numrow ==0)
					    {
					%>
						<div class="panel panel-default">
              				<h3>Hiện chưa có thông báo cũ</h3>
           		  		 </div>
					<% }
					else{%>
					
				                                 <% while(rs.next()){ %>
				                                <div class="panel panel-default">
              									 <div class="panel-heading"><h4><a  href="chitietthongbao.jsp?ID=<%=rs.getString("ID")%>"><%= rs.getString("TenTB") %></a></h4>
              									 <br><a style="color: black"> [Ngày đăng bài: <%=rs.getString("ThoiGianDang") %>]</a> </div>
              									 <div class="panel-body"> 
	              									 <div class="row">
		              									 <div class="col-md-3">
		              									 <img  class="img-responsive" src="img/<%=rs.getString("HinhAnh") %>"></div>
		              									 <div class="col-md-9"><%=rs.getString("NoiDung") %></div>
	              									 </div>
              									 </div>
              									 </div>
				                                <%}sSQL ="";}%> 
				                          	<%  	
											}catch(Exception cnfex){out.print(cnfex);}%>     		
										                                
				                       
				        	   
			  			  </div>
			  			  </div>
<%@ include file ="footer.jsp"%>