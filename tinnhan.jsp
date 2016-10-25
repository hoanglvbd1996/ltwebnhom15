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
	<title>Tin nhắn</title>
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
				    	String sSQL ="	select * from  TinNhan";		
					    rs = stat.executeQuery(sSQL);
					%> 
                                    	<thead>
                                     	  <th></th>
                                            <th>Tiêu đề</th>
                                            <th>Người gửi</th>
                                            <th>Nội dung</th>
                                            <th>Ngày Nhận</th>
                                           <th></th>
                                        <th>Chi tiết</th>
                                        </thead>
                                        <tbody>	
                                        
                                            <% while(rs.next()){ %>
                                            <%if(session.getAttribute("username").equals(rs.getString("idnguoinhan"))) { %>
                                            <tr>
                                            	<td></td>
                                                <td><%=rs.getString("tieude") %></td>
                                                <td><%=rs.getString("idnguoigui") %></td>
                                               <td><%=rs.getString("noidung") %></td>
                                                <td><%=rs.getString("tggui") %></td>
                                                  <td><a href="chinhsuaxoasubmit.jsp?idnguoigui=<%=rs.getString("idnguoigui")%>&option=delete&value=tinnhan">Xóa</a></td>
                                                <td><a  href="chitiettinnhan.jsp" >Xem</a></td>
                                            </tr>
                                            <%} %>
                                            <%} %>
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
				    	String sSQL1 ="	select * from  TinNhan";		
					    rs = stat.executeQuery(sSQL1);
					%> 
                                    	<thead>
                                     	  <th></th>
                                            <th>Tiêu đề</th>
                                            <th>Gửi đến</th>
                                            <th>Nội dung</th>
                                            <th>Ngày Nhận</th>
                                           <th></th>
                                            <th>Chi tiết</th>
                                        </thead>
                                        <tbody>	
                                            <% while(rs.next()){ %>
                                            <%if(session.getAttribute("username").equals(rs.getString("idnguoigui"))) { %>
                                            <tr>
                                            	<td></td>
                                                <td><%=rs.getString("tieude") %></td>
                                                <td><%=rs.getString("idnguoinhan") %></td>
                                               <td><%=rs.getString("noidung") %></td>
                                                <td><%=rs.getString("tggui") %></td>
                                                  <td><a href="chinhsuaxoasubmit.jsp?idnguoigui=<%=rs.getString("idnguoigui")%>&option=delete&value=tinnhan">Xóa</a></td>
                                                <td><a  href="?idnguoigui=<%=rs.getString("idnguoigui")%>" data-target="#chitiettinnhan_modal" data-toggle="modal">Click</a></td>
                                            </tr>
                                            <%} %>
                                            <%} %>
                                        </tbody>
                                    </table>
                                    </div>
                                    </div>
                                    
    </div>
    
    <div id="menu2" class="tab-pane fade" style="height:600px">
      <div class="panel panel-default">
    <div class="panel-body">
    	<div class="container" >	

	<div class="row">
	<div class="col-sm-2"></div>
	<div class="col-sm-6">	
        <input type="text" style="width:700px" class="form-control" placeholder="Người nhận" name="idnguoinhan"><br>      
		<input type="text" style="width:700px" class="form-control" placeholder="Tiêu đề" name="idnguoinhan"><br>  
	
       	<textarea class="form-control" style="height:300px; width:700px; resize:none" placeholder="Nội dung" name="noidung"></textarea>
       	</div>
     <div class="col-sm-3"></div>	  	
	</div>
    <div class="row">
        <div class="col-sm-8"> 
        </div>
        <div class="col-sm-4"> 
          
        	     <input class="btn btn-primary btn-outline" type="submit" name="submit">
        </div>
	</div>
	</div>
	
</div>
    	
    </div>
    </div>
    </div>
    
  </div>
                                  	  		  
       </div>    
	<%@ include file="footer.jsp" %>
</body>
</html>