
<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file ="header.jsp" %>
<head><title>Danh sách chi đoàn</title></head>
<c:choose>
  <c:when test="${sessionScope.ID == null}" >
  		<h3 class="text-center">Bạn chưa đăng nhập!</h3>
   </c:when>
 <c:when test="${sessionScope.ID != null}" >
 	<div class="wrapper">	
        	<div class="main-panel">
              <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                            	   <div class="content table-responsive table-full-width">
                                   	<form>
                                    		<a class="btn btn-default btn-outline"  data-target="#themchidoan_modal" data-toggle="modal">Thêm chi đoàn</a>
                                  			 
                                  	  </form>
                                 <h3 id="result" class="text-center text-warning"></h3>
			  <% 
				    try{
				    	String sSQL ="select *,chidoan.id as IDCD from  chidoan join user on chidoan.id = user.macd and user.MaQuyen !=4";		
					    rs = stat.executeQuery(sSQL);
					    int stt = 1;
					 rs.last();
					  int numrow = rs.getRow();
					  rs.beforeFirst();
					   if(numrow == 0)
					   {
						   %>
						<div class="panel panel-default">
								<h3>Danh sách chi đoàn rỗng</h3>
						 </div>
					<% }
					 else{%> 
					 				
                                    <table class="table table-hover table-striped">
                                    	<thead>
                                     		 <th>#</th>
                                            <th>Tên chi đoàn</th>
                                            <th>Họ tên các cán bộ đoàn</th>
                                            <th>Email</th>
                                            <th>SDT</th>
                                              <th></th>
                                             <th></th>
                                        </thead>
                                        <tbody>
                                         <% while(rs.next()){ %>
                                        		<tr>
                                            		<td><%=stt %></td>
                                                    <td><%=rs.getString("TenCD") %></td>
                                                    <td><%=rs.getString("HoTen")%></td>
                                                    <td><%=rs.getString("Email")%></td>
                                                    <td><%=rs.getString("SDT") %></td>
                                                   <td><a href="chinhsua.jsp?ID=<%=rs.getString("IDCD")%>&value=chidoan&option=edit">Chỉnh sửa</a></td>
                                                
                                         	   	           <td><a  href="" class="xoacd<%=rs.getInt("IDCD")%>" >Xóa</a></td>
 										<script type="text/javascript">
											 $(document).ready(function() {                        
								                $('.xoacd<%=rs.getInt("IDCD")%>').click(function() {  
											if (confirm('Có chắc không?')) {
												$.ajax({
													 type: "POST"	,
													url :'chinhsuaxoasubmit',
													scriptCharset: "utf-8" ,
												    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
													data: {
														 ID  : "<%=rs.getInt("IDCD")%>",
														value : "chidoan",
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
                                             <%stt++;;}}sSQL ="";%>
                                        </tbody>
                                        
                                    </table>
                           <% }catch(Exception cnfex){out.print(cnfex);}%> 
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
</div>
</div>

   <div id="themchidoan_modal" class="modal modal-fullscreen fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
   	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title text-center">Thêm chi đoàn</h4>
          </div>
          <div class="modal-body">
            <div class="row">
            	<form ><!--method="post" action="them?value=chidoan&option=add"-->
                      <div class="col-lg-12">
                        <h4>Tên chi đoàn</h4><p><input class="form-control" type="text" name="tenchidoan" id="tenchidoan"></p>
                         <h4>Cán bộ</h4><p>
                         <% 
	                         try{
					    	String sSQL ="select * from user where user.MaQuyen !=4";		
						    rs = stat.executeQuery(sSQL);   
					    %>
					    	
					    	<select name="MaCB" id="MaCB" class="form-control">
						    	
						    	<% while(rs.next())
							    { %>
						    		<option value="<%=rs.getString("ID")%>"><%=rs.getString("Hoten")%></option>
						    	<%} %>
					    	</select>	
					    	    <%} catch(Exception cnfex){out.print(cnfex);}%>
					    </p>	
					    	
					</div>   
               	   <div class="modal-footer">
                 <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="danhsachchidoan.jsp">Close</a>
                    <input class="btn btn-primary btn-outline" value="Thêm" id="themcd">
              	</div>
         	
         	 </form> 	
             </div>
          </div>
      </div>
    </div>
</div>

 
 <head>
<script type="text/javascript">
		 $(document).ready(function() {                        
	                $('#themcd').click(function() {  
					$.ajax({
						 type: "POST"	,
						url :'them',
						scriptCharset: "utf-8" ,
					    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
							data: {
								tenchidoan:$('#tenchidoan').val(),
								MaCB:$('#MaCB').val(),value:"chidoan",option:"add"
							},
							success: function(responseText) {
								  
								$('#result').text(responseText);
							}
				});
		});
	});
	          
</script> 
</head>
 </c:when>

</c:choose>

<%@ include file ="footer.jsp"%>