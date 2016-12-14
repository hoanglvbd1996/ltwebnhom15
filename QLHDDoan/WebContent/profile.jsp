<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file ="connect.jsp" %>
<%@ include file ="header.jsp" %>

<c:choose>
    <c:when test="${sessionScope.MaQuyen eq '4'}">

<% 
	String username =request.getParameter("username");
  try{
	String sSQL ="SELECT * FROM user,phanquyen,chucvu where user.id= "+session.getAttribute("ID")+" and user.MaQuyen = phanquyen.id and chucvu.ID = user.MaChucVu ";		
   rs = stat.executeQuery(sSQL);
   rs.last();
  int numrow = rs.getRow();
  rs.beforeFirst();
   if(numrow == 0)
   {
	   %>
	<div class="panel panel-default">
			<h3 class="text-center">Bạn chưa đăng nhập!</h3>
	 </div>
<% }
 else{%>
<div class="container">
    <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title"></h3>
            </div>
           
            <div class="panel-body">
              <div class="row">
                <% if(rs.next()){ %>
                <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="img/user_placeholder.jpg" class="img-circle img-responsive"> </div>
                <div class=" col-md-9 col-lg-9 "> 
                 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Họ Tên:</td>
                        <td><%=rs.getString("HoTen") %></td>
                      </tr>
                      <tr>
                        <td>Khoa:</td>
                        <td><%=rs.getString("Khoa") %></td>
                      </tr>
                      <tr>
                        <td>Giới tính:</td>
                        <td><%=rs.getString("gioitinh") %></td>
                      </tr>
                      <tr>
                        <td>Số CMND:</td>
                        <td><%=rs.getString("cmnd") %></td>
                      </tr>
                      <tr>
                        <td>Chức vụ:</td>
                        <td><%=rs.getString("tenchucvu") %></td>
                      </tr>
                       <tr>
                        <td>Email:</td>
                        <td ><a href="mailto:<%=rs.getString("email") %>"><%=rs.getString("email") %></a></td>
                      </tr>
                      <tr>
                        <td>Mã Số SV:</td>
                        <td><%=rs.getString("mssv") %></td>
                      </tr>
                      <tr>
                        <td> Lớp:</td>
                        <td><%=rs.getString("lop") %></td>
                      </tr>
                      <tr>
                        <td>Ngày vào đoàn:</td>
                        <td><%=rs.getString("ngayvaodoan") %></td>
                      </tr>
                      <tr>
                        <td>Năm sinh:</td>
                        <td><%=rs.getString("ngaysinh") %></td>
                      </tr>
                     
                       <tr>
                        <td>SĐT:</td>
                        <td ><%=rs.getString("sdt") %></td>
                      </tr>
                     
                        <tr>
                        <td>Địa chỉ:</td>
                        <td><%=rs.getString("diachi") %></td>
                      </tr>
                    
                    </tbody>

                  </table>           
                </div>
              </div>
               <a href="chinhsua.jsp?ID=<%=rs.getString("ID")%>&value=profile&option=edit" class="btn btn-default pull-right">Cập nhật</a>
               <%}}rs.close();             
               }catch(Exception cnfex){out.print(cnfex);}  %> 
            	
            	
            </div>

     </div>
     </div>
    </c:when>
    <c:otherwise>
	<% try{
		String sSQL ="SELECT * FROM user,phanquyen,chucvu where maQuyen= "+session.getAttribute("ID")+" and user.MaQuyen = phanquyen.id and chucvu.ID = user.MaChucVu";		
			   rs = stat.executeQuery(sSQL);
			   rs.last();
			  int numrow = rs.getRow();
			  rs.beforeFirst();
			   if(numrow == 0)
			   {
				   %>
				<div class="panel panel-default">
						<h3>Bạn chưa đăng nhập</h3>
				 </div>
			<% }
			 else{%>
			<div class="container">
			    <div class="panel panel-info">
			            <div class="panel-heading">
			              <h3 class="panel-title"></h3>
			            </div>
			            <div class="panel-body">
			              <div class="row">
			                <% if(rs.next()){ %>
			                <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="img/user_placeholder.jpg" class="img-circle img-responsive"> </div>
			                <div class=" col-md-9 col-lg-9 "> 
			                 
			                  <table class="table table-user-information">
			                    <tbody>
			                      <tr>
			                        <td>Họ Tên:</td>
			                        <td><%=rs.getString("HoTen") %></td>
			                      </tr>
			                      <tr>
			                        <td>Khoa:</td>
			                        <td><%=rs.getString("Khoa") %></td>
			                      </tr>
			                      <tr>
			                        <td>Giới tính:</td>
			                        <td><%=rs.getString("gioitinh") %></td>
			                      </tr>
			                      <tr>
			                        <td>Số CMND:</td>
			                        <td><%=rs.getString("cmnd") %></td>
			                      </tr>
			                      <tr>
			                        <td>Email:</td>
			                        <td><a href="mailto:<%=rs.getString("email") %>"><%=rs.getString("email") %></a></td>
			                      </tr>
			                      <tr>
			                        <td>Năm sinh:</td>
			                        <td><%=rs.getString("ngaysinh") %></td>
			                      </tr>
			                       <tr>
			                        <td>SĐT:</td>
			                        <td><%=rs.getString("sdt") %></td>
			                      </tr>
			                        <tr>
			                        <td>Địa chỉ:</td>
			                        <td><%=rs.getString("diachi") %></td>
			                      </tr>
			                    </tbody>

			                  </table>           
			                </div>
			              </div>
			                <a class="btn btn-default pull-right" href="chinhsua.jsp?ID=<%=rs.getString("ID") %>&value=profile_full&option=edit">Cập nhật</a>
			               <%}}rs.close();             
			               }catch(Exception cnfex){out.print(cnfex);}  %> 
	
			   
	 </div>
		</div>
	 </div>
			   </c:otherwise>
			   </c:choose>
    <%@ include file="footer.jsp" %>
</body>


</html>