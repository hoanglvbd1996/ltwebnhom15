<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.String" %>
<%@page import ="javax.servlet.jsp.PageContext" %>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file ="connect.jsp" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Quản lý tài khoản</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
       <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
</head>
			   		
<%@ include file ="header.jsp" %>
<div class="wrapper">	
        	<div class="main-panel">
              <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                            	   <div class="content table-responsive table-full-width">
                                   	<form>
                                    		<a class="btn btn-default btn-outline"  data-target="#themtaikhoan_modal" data-toggle="modal">Thêm tài khoản</a>
                                  	  </form>
			  <% 
				    try{
				    	String sSQL ="	select * from  TaiKhoan";		
					    rs = stat.executeQuery(sSQL);
					    int stt = 1;
					%>
                                    <table class="table table-hover table-striped">
                                    	<thead>
                                     		 <th>#</th>
                                            <th>Tên tà khoản</th>
                                            <th>Password</th>
                                            <th>Chức vụ</th>
                                              <th></th>
                                             <th></th>
                                        </thead>
                                        <tbody>
                                         <% while(rs.next()){ %>
                                        		<tr>
                                            		<td></td>
                                                    <td><%=rs.getString("username") %></td>
                                                    <td><%=rs.getString("pass")%></td>
                                                    <td><%=rs.getString("chucvu")%></td>
                                                   <td><a href="chinhsua.jsp?username=<%=rs.getString("username")%>&option=edit&value=taikhoan">Chỉnh sửa</a></td>
                                                    <td><a href="chinhsuaxoasubmit.jsp?username=<%=rs.getString("username")%>&option=delete&value=taikhoan">Xóa</a></td>
                                         	   </tr>  
                                             <%;}sSQL ="";%>
                                        </tbody>
                                        
                                    </table>
                           <% }catch(Exception cnfex){out.print(cnfex);}%> 
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
                            <li class="active"><a >1</a></li>
                            <li><a href="">2</a></li>
                            <li><a href="">»</a></li>
                          </ul>
                      </div>


   <div id="themtaikhoan_modal" class="modal modal-fullscreen fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
   	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title text-center">Thêm tài khoản</h4>
          </div>
          <div class="modal-body">
            <div class="row">
            	<form method="post" action="them.jsp?value=taikhoan&option=add">
                      <div class="col-lg-12">
                        <h4>Tên tài khoản</h4><p><input class="form-control" type="text" name="username"></p>
                         <h4>Password</h4><p><input class="form-control" type="text" name="pass"></p>
                         <h4>Chức vụ</h4><p>
                         	<select name="chucvu"  class="form-control">
                         		<option value="dv">Đoàn viên</option>
                         		<option value="admin">Admin</option>
                         		<option value="cbdk">Cán bộ đoàn khoa</option>
                         		<option value="cbdt">Cán bộ đoàn trường</option>
                         	</select>
                         </p>
					</div>   
               	   <div class="modal-footer">
                     <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="quanlytaikhoan.jsp">Close</a>
                    <input class="btn btn-primary btn-outline" type="submit" name="submit">
              	</div>
         	 </form> 	  
             </div>
          </div>
      </div>
    </div>
</div>
 		
	<%@ include file="footer.jsp" %>
</body>

</html>