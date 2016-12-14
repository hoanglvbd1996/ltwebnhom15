<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file ="header.jsp" %>
<%
String ID =request.getParameter("ID");
String sql = "Select * from thongbao inner join user on user.id = thongbao.IDNguoiDang where thongbao.ID="+ID+"";
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
                    <%if(rs.next()){ %>
              			  <head><title><%=rs.getString("TenTB") %></title></head>
                        <h3 class="page-header"><%=rs.getString("TenTB") %></h3>
                         <div class="container">
	                          <div class="row">
		                         <div class="col-md-2"><h4>Người thông báo</h4> <h4 style="color:blue;"><%=rs.getString("HoTen") %> </h4></div>
		                         <div class="col-md-2"><h4>Ngày đăng</h4> <h4 style="color:blue;"><%=rs.getString("ThoiGianDang") %> </h4></div>
	                           <div class="col-md-8"> <h4>Trích đoạn</h4> <label class="form-control" style="height:100px;resize:none;"><%=rs.getString("NoiDung") %></label></div>
                          </div>
	                         </div>
                       	
                         <div class="row">
	                           		<div class="col-md-4"><h4>Hình ảnh</h4>
                        			 <img class="img-thumbnail well " src="img/<%=rs.getString("HinhAnh") %>" alt="Card image" style="width:500px;"></div>
	                         
	                        	 	<div class="col-md-8"><h4>Nội dung</h4> <label class="form-control" style="height:300px;resize:none;"><%=rs.getString("NoiDung") %></label></div>
	                          </div> 	
             				
    <%}sql ="";} rs.close();%>
    <br>
    </div>
<%@ include file ="footer.jsp"%>