<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file ="header.jsp" %>
<c:choose>
 <c:when test="${sessionScope.ID == null}" >
  		<h3 class="text-center">Bạn chưa đăng nhập!</h3>
  		</c:when>
  <c:when test="${sessionScope.ID != null}" >
<div class="container-fluid">
<%	String id= (String) session.getAttribute("ID");%>
<% 
			String sSQL ="select distinct  *,dangkyhd.TrangThai as TTDK , dangkyhd.mahd as mahd from dangkyhd,user,hoatdong where dangkyhd.mahd = hoatdong.mahd and dangkyhd.iddk = user.id and id ="+id+"";		
		    rs = stat.executeQuery(sSQL);
		    int stt= 1;
  %>
<table class="table table-hover">
    <thead>
        <tr>
            <th>#</th>
            <th>Tên họat động</th>
            <th>Ngày đăng ký</th>
            <th>Trạng thái</th>
             <th></th>
             <th></th>
        </tr>
    </thead>
    <tbody>
    	<% while(rs.next()){ 
    		if(rs.getInt("TTDK") ==1 )
        	{
        		%>
                <tr>
                    <td><%=stt%></td>
                    <td><%=rs.getString("tenhd")%></td>
                    <td class="text-success">Đã hoàn thành </td>
                    <td></td>
                      <td><a href="chitiethoatdong.jsp?ID=<%=rs.getInt("mahd")%>">Xem Chi tiết</a></td>
                </tr>  	
        	<%	stt++;}
        	else if(rs.getInt("TTDK") == 0)
        	{
        		%>
                <tr>
                    <td><%=stt%></td>
                    <td><%=rs.getString("tenhd")%></td>
                    <td class="text-danger">Chưa hoàn thành </td>
                    <td><a href="" class="check<%=rs.getInt("mahd")%>">Hủy</a></td>
                             <script type="text/javascript">
								 					$(document).ready(function() {               
												                $('.check<%=rs.getInt("mahd")%>').click(function() {  
																$.ajax({
																	 type: "POST"	,
																	url :	'chinhsuaxoasubmit',
																	scriptCharset: "utf-8" ,
																    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
																		data: {
																			ID : 	"<%=rs.getInt("mahd")%>",
																			value	: "hoatdonguser",
																			option : "delete",
																		},
																		success: function(responseText) { 
																			
																			alert(responseText);
																			location.reload();
																		}
															});
													});
												});
								</script>
                      <td><a href="chitiethoatdong.jsp?ID=<%=rs.getInt("mahd")%>">Xem Chi tiết</a></td>
                </tr>  	
        		<%}	stt++;%>
        	<%} %>
    </tbody>
</table>
	 <div class="text-center">
                        <ul class="pagination">
                            <li><a href="">«</a></li>
                            <li class="active"><a>1</a></li>
                            <li><a href="">2</a></li>
                            <li><a href="">»</a></li>
                          </ul>
          </div>
  
</div>
</c:when>
</c:choose>
   <%@ include file="footer.jsp" %>