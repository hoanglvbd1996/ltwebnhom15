<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file ="header.jsp" %>
<c:choose>
 <c:when test="${sessionScope.ID == null}" >
  		<h3 class="text-center">Bạn chưa đăng nhập!</h3>
   </c:when>
 <c:when test="${sessionScope.ID != null}" >
<head><title>Quản lý điểm danh</title></head>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");
String sql = "select distinct dangkyhd.MaHD, tenhd,ThoiGianBatDau,hoatdong.TrangThai as trangthaicuahoatdong from dangkyhd join hoatdong on hoatdong.MaHD = dangkyhd.MaHD where ThoiGianBatDau < now();";
try{
		rs= stat.executeQuery(sql);
		rs.last();
		int numrow = rs.getRow();
		rs.beforeFirst();
		int stt=1;
		if(numrow == 0)
		{
		%>
		
		<h3 class="text-center">Chưa có người đăng ký bất kỳ hoạt động nào!</h3>
		
		<%
		}
	else{
	%>  

		<div class="wrapper">	
        	<div class="main-panel">
                  <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                              <div class="content table-responsive table-full-width">
                                    <table class="table table-hover table-striped">
                                    	<thead>
                                     	   <th>#</th>
                                            <th>Tên hoạt động</th>
                                            <th>Ngày diễn ra</th>
                                            <th>Danh sách đăng ký</th>
                                            <th>Danh sách đã tham gia</th>
                                            <th>Danh sách không tham gia</th>
                                        </thead>
                                        <tbody>
                                         <%  while(rs.next()){ %>
                                        	<tr>
                                            			<td><%=stt %></td>
                                            		<td><%=rs.getString("TenHD") %></td>
                                                    <td><%=rs.getString("ThoiGianBatDau") %></td>
                                                  <td><a href="dsdadangky.jsp?ID=<%=rs.getString("MaHD")%>&tenhd=<%=rs.getString("TenHD") %>">Xem danh sách đã đăng ký</a></td>
                                                    <td><a href="dsdathamgia.jsp?ID=<%=rs.getString("MaHD")%>&tenhd=<%=rs.getString("TenHD")%>">Xem danh sách đã tham gia</a></td>
                                                    <td><a href="dschuathamgia.jsp?ID=<%=rs.getString("MaHD")%>&tenhd=<%=rs.getString("TenHD")%>">Xem danh sách không tham gia</a></td>                                           
                                            </tr>
                                          <%stt++;}}}catch(Exception e){out.print(e);}%>
                                        </tbody>
                                    </table>
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
                            <li class="active"><a href="menpage1.html">1</a></li>
                            <li><a href="">2</a></li>
                            <li><a href="">»</a></li>
                          </ul>
        </div>
</c:when>
</c:choose>

 <%@ include file="footer.jsp"%>