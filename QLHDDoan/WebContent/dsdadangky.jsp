<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file ="header.jsp" %>
<c:choose>
 <c:when test="${sessionScope.ID == null}" >
  		<h3 class="text-center">Bạn chưa đăng nhập!</h3>
  		</c:when>
  <c:when test="${sessionScope.ID != null}" >
  <%
  		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
  		String mahd = request.getParameter("ID");
  		String tenhd = request.getParameter("tenhd");
  
  %>
  <div class="text-center"><h3 id="result"></h3></div>
  	<%
  		String SQLLLL = " SElect distinct tenhd from hoatdong where mahd ="+mahd+"";
  		rs = stat.executeQuery(SQLLLL);
  		if(rs.next())
  		{
  	%>
  <h3><div id="result" class="text-center text-primary">Danh sách đăng ký hoạt động: <%=rs.getString("tenhd")%></div></h3>
  <%} %>
		<div class="wrapper">	
        	<div class="main-panel">
                  <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                            <div class="content table-responsive table-full-width">
								<form>
								<table class="table table-hover table-striped">
                                         
                                            <thead>
                                                 <th>#</th>
                                                <th>MSSV</th>
                                                <th>Họ tên</th>
                                                <th>Khoa</th>
                                                <th>Giới tính </th>
                                                <th>Năm sinh</th>
                                                <th>Đã tham gia</th>
                                                <th></th>
                                               <th></th>
                                            </thead>
                                            <tbody>
                                     <%      		String sql ="select  * from user inner join dangkyhd on dangkyhd.iddk = user.id where dangkyhd.mahd ="+mahd+"";
  		rs = stat.executeQuery(sql);
  		int stt = 1;%> 
                                            <%while (rs.next()){ %>
                                            <tr>
                                            		<td><%=stt++ %></td>
                                            		<td><%=rs.getString("mssv")%></td>
                                                    <td><%=rs.getString("hoten")%></td>
                                                
                                                  	<td><%=rs.getString("khoa")%></td>
                                                    <td><%=rs.getString("gioitinh")%></td>
                                                    <td><%=rs.getString("ngaysinh")%></td>
		                                                    <%if(rs.getInt("trangthai") ==1 ){ %>
		                                                    	<td><input type="checkbox" class="check<%=rs.getInt("ID")%>" checked value="<%=rs.getInt("ID")%>"></td>
		                                                    <%}else if(rs.getInt("trangthai") ==0 ){%>
		                                                    	<td><input type="checkbox" class="check<%=rs.getInt("ID")%>"   value="<%=rs.getInt("ID")%>"></td>
		                                                    <%}%>
                                                       <script type="text/javascript">
								 					$(document).ready(function() {               
												                $('.check<%=rs.getInt("ID")%>').change(function() {  
																$.ajax({
																	 type: "POST"	,
																	url :'checkemail',
																	scriptCharset: "utf-8" ,
																    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
																		data: {
																			mahd: $('#mahd').val(),
																			id : $('.check<%=rs.getInt("ID")%>').val(),
																			value	: "diemdanh",
																			option :"add",
																		},
																		success: function(responseText) { 
																			
																			$('#result').text(responseText);
																		}
															});
													});
												});
										</script>
                                              </tr>
                                                 
                                             <%} %>
                                            </tbody>
                                          <input type="hidden" id="mahd" value="<%=mahd %>">
							</table>
							</form>
<div class="row-md-2">
        <div class="col-sm-10"> 
        </div>
        <div class="col-sm-2"> 
        <a href="diemdanh.jsp" class="btn btn-default">Quay lại</a>     
        	     
        </div>
	</div>
</div>
                            </div>
                    	 </div>
                    </div>
           
          		  </div>    
                                       
             </div>
        </div>
        </c:when>
        </c:choose>
     
        <%@ include file="footer.jsp" %>
