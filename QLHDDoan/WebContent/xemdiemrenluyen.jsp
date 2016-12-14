<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file ="header.jsp" %>
<c:choose>
 <c:when test="${sessionScope.ID == null}" >
  		<h3 class="text-center">Bạn chưa đăng nhập!</h3>
  		</c:when>
  <c:when test="${sessionScope.ID != null}" >
<div class="container">
<%	String id= (String) session.getAttribute("ID");%>
<% 
			String sSQL ="select distinct  ThoiGianBatDau,tenhd,DiemRL,DiemCTXH  from DangKyHD,user,Hoatdong where dangkyhd.mahd = hoatdong.mahd and dangkyhd.iddk = user.id and dangkyhd.TrangThai =1 and user.id ="+id+" ";		
		    rs = stat.executeQuery(sSQL);
		    int stt= 1;
		    int rl =0;
		    int ctxh =0;
%>
<table class="table table-hover">
    <thead>
        <tr>
            <th>#</th>
            <th>Tên họat động</th>
            <th>Ngày tham gia</th>
            <th>Điểm rèn luyện</th>
            <th>Điểm CTXH</th>
        </tr>
    </thead>
    <tbody>
      <% while(rs.next()){ %>
        <tr>
            <td><%=stt %></td>
			<td><%=rs.getString("tenhd") %></td>
            <td><%=rs.getString("ThoiGianBatDau")%></td>
            <td class="text-success"><%=rs.getInt("diemrl") %></td>
            <td class="text-success"><%=rs.getInt("diemctxh") %></td>
    	  </tr>
      <%stt++; rl +=rs.getInt("diemrl");ctxh +=rs.getInt("diemctxh"); }%>
        <tr>
        	<td></td>
            <td></td>
            <td>Tổng số điểm:</td>
            <td class="text-success"><%=rl %></td>
            <td class="text-success"><%=ctxh %></td>
        </tr>
    </tbody>
</table>
   				 <div class="text-center">
                        <ul class="pagination">
                            <li><a href="">«</a></li>
                            <li class="active"><a >1</a></li>
                            <li><a href="">2</a></li>
                            <li><a href="">»</a></li>
                          </ul>
                      </div>
</div>
</c:when>
</c:choose>
<%@ include file="footer.jsp" %>