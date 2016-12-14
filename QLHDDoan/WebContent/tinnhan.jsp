 
<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file ="header.jsp" %>
<c:choose>
 <c:when test="${sessionScope.ID == null}" >
  		<h1>Bạn chưa đăng nhập!</h1>
   </c:when>
 <c:when test="${sessionScope.ID != null}" >
<head><title>Quản lý tin nhắn</title></head>
 
 <div class="container-fluid">
       <ul class="nav nav-tabs">
				    <li class="active"><a data-toggle="tab" href="#home">Tin nhắn đến</a></li>
				    <li><a data-toggle="tab" href="#menu1">Tin nhắn đi</a></li>
				    <li><a data-toggle="tab" href="#menu2">Soạn tin nhắn</a></li>
  		</ul>
 		 <div class="tab-content">
		    <div id="home" class="tab-pane fade in active" style="height:400px">
		    <div class="panel panel-default">
		    <div class="panel-body">
		      <table class="table table-hover table-striped">
   			  <% 
				    String sSQL ="call sp_DSTinnhanNhan("+session.getAttribute("ID")+")";		
					 rs = stat.executeQuery(sSQL);
					 rs.last();
					  int numrow = rs.getRow();
					  rs.beforeFirst();
					   if(numrow == 0)
					   {
						   %>
						<div class="panel panel-default">
								<h3>Tin nhắn trống</h3>
						 </div>
					<% }
					 else{%>
                                    	<thead>
                                     	  <th></th>
                                            <th>Tiêu đề</th>
                                            <th>Người gửi</th>
                                            <th>Email</th>
                                            <th>Nội dung</th>
                                            <th>Ngày Nhận</th>
                                                    <!--  <th></th>-->
                                        <th>Chi tiết</th>
                                        </thead>
                                        <tbody>	
                                        
                                            <% while(rs.next()){ %>
                                            <tr>
                                            	<td></td>
                                                <td><%=rs.getString("TieuDe") %></td>
                                                <td><%=rs.getString("HoTen")%> </td>
                                                 <td><%=rs.getString("email") %></td>
                                               <td><%=rs.getString("NoiDung") %></td>
                                                <td><%=rs.getString("ThoiGianGui") %></td>
                                               <!-- <td><a href="chinhsuaxoasubmit?ID=<%=rs.getString("MaTNN")%>&option=delete&value=tinnhannhan">Xóa</a></td> -->
                                                <td><a href="chitiettinnhan.jsp?ID=<%=rs.getString("MaTNN")%>" class="button">Click</a></td>
                                            </tr>

                                            <%}} %>
                                        </tbody>
                                    </table>
                                    </div>
                                    </div>
    </div>
    <div id="menu1" class="tab-pane fade" style="height:400px">
    <div class="panel panel-default">
    <div class="panel-body">
     <table class="table table-hover table-striped">
     <% 
				    	String sSQL1 ="call sp_DSTinnhanGui("+session.getAttribute("ID")+")";		
					    rs = stat.executeQuery(sSQL1);
						    rs.last();
						  numrow = rs.getRow();
						  rs.beforeFirst();
						   if(numrow == 0)
						   {
							   %>
							<div class="panel panel-default">
									<h3>Tin nhắn trống</h3>
							 </div>
						<% }
						else{%>
                                    	<thead>
                                     	  <th></th>
                                            <th>Tiêu đề</th>
                                            <th>Gửi đến</th>
                                             <th>Email</th>
                                            <th>Nội dung</th>
                                            <th>Ngày Gửi</th>
                                          <!--  <th></th>-->
                                            <th>Chi tiết</th>
                                        </thead>
                                        <tbody>	
                                            <% while(rs.next()){ %>
                                            <tr>
                                            	<td></td>
                                                <td><%=rs.getString("TieuDe") %></td>
                                                <td><%=rs.getString("HoTen") %></td>
                                                <td><%=rs.getString("email") %></td>
                                               <td><%=rs.getString("NoiDung") %></td>
                                                <td><%=rs.getString("ThoiGianGui") %></td>
                                              <!-- <td><a href="chinhsuaxoasubmit?ID=<%=rs.getString("MaTNG")%>&option=delete&value=tinnhangui">Xóa</a></td> -->
                                                   <td><a href="chitiettinnhan.jsp?ID=<%=rs.getString("MaTNG")%>" class="button">Click</a></td>
                                            </tr>
                                            <%}rs.close();} %>
                                        </tbody>
                                    </table>
                                    </div>
                                    </div>
                                    
    </div>
    
    <div id="menu2" class="tab-pane fade" style="height:600px">
    <form >
			      <div class="panel panel-default">
			    <div class="panel-body">
			    	<div class="container" >	
			
				<div class="row">
				<div class="col-sm-2"></div>
				<div class="col-sm-6">	
			        <input type="text" style="width:700px" class="form-control" placeholder="email người nhận" id="emailnguoinhan"><br><div id="result"></div>   
					<input type="text" style="width:700px" class="form-control" placeholder="Tiêu đề" id="tieude"><br>  
				
			       	<textarea class="form-control" style="height:300px; width:700px; resize:none" placeholder="Nội dung" id="noidung"></textarea>
			       	</div>
			     <div class="col-sm-3"></div>	  	
				</div>
			    <div class="row">
			        <div class="col-sm-8"> 
			        </div>
			        <div class="col-sm-4">      
			        	     <input class="btn btn-primary btn-outline" id="gui" value="Gửi">
			        </div>
				</div>
				</div>	
					</div>   	
					    </div>
</form> 
  </div>
	 </div>  
  </div>
		  </c:when>
   
  </c:choose>
   <script type="text/javascript">
		 
		 	 $(document).ready(function() {                        
				                $('#emailnguoinhan').change(function() {  
								$.ajax({
									 type: "POST"	,
									url :'checkemail',
										scriptCharset: "utf-8" ,
									    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
										data: {
											email: $('#emailnguoinhan').val(),
											value: "checkemail",
											option : "add",
										},
										success: function(responseText) { 
											$('#result').text(responseText);
										}
							});
					});
				});
			 $(document).ready(function() {                        
				                $('#gui').click(function() {  
								$.ajax({
									 type: "POST"	,
									url :'checkemail',
									scriptCharset: "utf-8" ,
								    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
										data: {
											email: $('#emailnguoinhan').val(),
											tieude: $('#tieude').val(),
											noidung:  $('#noidung').val(),
											value: "tinnhan",
											option :"add",
										},
										success: function(responseText) { 
											alert(responseText);
										}
							});
					});
				});
 	</script>
  <%@ include file="footer.jsp"%>