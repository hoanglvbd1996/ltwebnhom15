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
	<title>Quản lý tin nhắn</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
       <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
</head>
 <body>                 
<%@ include file ="header.jsp" %>
 <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                            	   <div class="content table-responsive table-full-width">
                                   	<form>
                                    			<a class="btn btn-default btn-outline"  data-target="#tentinnhan_modal" data-toggle="modal">Soạn tin nhắn</a>
                                  	  </form>
                                  	  		  <% 
				    	String sSQL ="	select * from  TinNhan";		
					    rs = stat.executeQuery(sSQL);
					%>
                                    <table class="table table-hover table-striped">
                                    	<thead>
                                     	  <th></th>
                                            <th>Tiêu đề</th>
                                            <th>Người gửi</th>
                                            <th>Người nhận</th>
                                            <th>Ngày gửi</th>
                                           <th></th>
                                            <th>Chi tiết</th>
                                        </thead>
                                        <tbody>	
                                            <% while(rs.next()){ %>
                                            <tr>
                                            	<td></td>
                                                <td><%=rs.getString("tieude") %></td>
                                                <td><%=rs.getString("idnguoigui") %></td>
                                                <td><%=rs.getString("idnguoinhan") %></td>
                                                <td><%=rs.getString("tggui") %></td>
                                                  <td><a href="chinhsuaxoasubmit.jsp?idnguoigui=<%=rs.getString("idnguoigui")%>&option=delete&value=tinnhan">Xóa</a></td>
                                                <td><a  href="chitiettinnhan2.jsp">Xem</a></td>
                                            </tr>
                                            <%} %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                    	 </div>
                    </div> 
                    
     	   <div id="soantinnhan_modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
   	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title text-center">Soạn tin nhắn</h4>
          </div>
          <div class="modal-body">
            <div class="row">
                        <h4 style="margin-left:20px;">Tiêu đề</h4><p><input class="form-control" type="text" name="tieude"></p>
                         <h4 style="margin-left:20px;">Gửi tới</h4><p><input class="form-control" type="text" name="idnguoinhan"></p>
                         <h4 style="margin-left:20px;">Nội dung</h4><p> <textarea class="form-control" rows="10" name="noidung"></textarea></p>
                      </div>   
               	   <div class="modal-footer">
                     <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="quanlytinnhan.jsp">Close</a>
                    <input class="btn btn-primary btn-outline" type="submit" name="submit">
              	</div>
             </div>
          </div>
      </div>
    </div>
   <%  String idnguoigui=request.getParameter("idnguoigui"); 
	
		String sSQL1 ="	select * from  TinNhan where idnguoigui='"+idnguoigui+"'";		
		 rs = stat.executeQuery(sSQL1);

	%>
    <div id="chitiettinnhan_modal" class="modal modal-fullscreen fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
   	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title text-center">Chi tiết tin nhắn</h4>
          </div>
          <div class="modal-body">
         
            <div class="row" style="margin-left:50px;">
       		      <%if(rs.next()){ %>
                        <h4>Người gửi</h4><label><%=rs.getString("idnguoigui")%></label>
                       <h4>Người nhận</h4><label><%=rs.getString("idnguoinhan")%></label>
                           <h4>Ngày gừi</h4><label><%=rs.getString("tggui")%></label>
                         <h4>Nội dung</h4><p><%=rs.getString("noidung")%></p>
                          <% }%>
               	   <div class="modal-footer">
                     <a type="button" data-dismiss="modal" class="btn btn-warning btn-outline" href="quanlytinnhan.jsp">Close</a>
              	</div>
             </div>
          </div>
      </div>
    </div>
   
	</div>	
	<%@ include file="footer.jsp" %>
</body>
</html>