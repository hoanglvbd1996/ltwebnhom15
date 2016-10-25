<%@page import="java.io.ObjectInputStream.GetField"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.*" %>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file ="connect.jsp" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Hoạt động</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
    <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
    <script>
    function imgError(image) {
        image.onerror = "";
        image.src = "/img/default.jpg";
        return true;
    }
    </script>
</head>
<body>
	<%@ include file="header.jsp" %>
   <div class="container">
   <div class="row">
   						
				<div class="container-fluid">
				<div style="border-bottom: 2px solid red" class="block-title">
			                     <form class="form-inline">
			                     <a style="background-color: red; color: white; padding:9px;">HOẠT ĐỘNG MỚI</a>
	        <input type="text"size="120px" class="form-control" placeholder="Tên bài viết">
	      <button type="button" class="btn btn-dafault">Tìm kiếm </button>
	    </form>
			                        <div style="border-bottom: 2px solid red" ></div>
			              </div><BR>
			               <div class="panel-group">
  				 <% 
				    try{
						String sSQL ="select * , mahd as ID  from HoatDong  where tgbatdau >getdate() order by tgbatdau DESC;";		
					    rs = stat.executeQuery(sSQL);
					%>
					
					 <% while(rs.next()){ %>
					 <div class="panel panel-default">
              									
              									 <div class="panel-body"> 
	              									 <div class="row">
		              									 <div class="col-md-4">
		              									 <img  class="img-responsive" src="img/<%=rs.getString("urlhinhanh") %>"></div>
		              									 <div class="col-md-8"><h4 ><a  href="chitiethoatdong.jsp?mahd=<%=rs.getInt("mahd")%>" style="padding: 0px;"><%=rs.getString("tenhd") %></a></h4>
							<time>Thời gian bắt đầu: <%=rs.getString("tgbatdau") %></time>
							<h5>Điểm rèn luyện: <%=rs.getString("diemrl") %>; Điểm công tác xã hội: <%=rs.getString("diemctxh") %></h5>
							<h5>Địa điểm: </h5>
							</div></div>
	              									 </div>
              									 </div>
              		
					
				  
			   <%}sSQL ="";%>
			   <%  	
							}catch(Exception cnfex){
						}%> 
				</div>
				
				<div style="border-bottom: 2px solid #2c54aa" class="block-title">
			                    <a style="background-color: #2c54aa; color: white; padding:5px;" >HOẠT ĐỘNG ĐÃ QUA</a>
			                        <div style="border-bottom: 2px solid #2c54aa" ></div>
			              </div><BR>
			               <div class="panel-group">
  				 <% 
				    try{
						String sSQL ="select * , mahd as ID  from HoatDong  where tgbatdau <=getdate() order by tgbatdau DESC;";		
					    rs = stat.executeQuery(sSQL);
					%>
					
					 <% while(rs.next()){ %>
					 
					
					 <div class="panel panel-default">
				      
				      <div class="panel-body"><div class="row"><div class="col-md-4">
							<img  class="img-responsive" src="img/<%=rs.getString("urlhinhanh") %>">
						</div>
						<div class="col-md-8">
						
							<h4><a  href="chitiethoatdong.jsp?mahd=<%=rs.getInt("mahd")%>" style="padding: 0px;"><%=rs.getString("tenhd") %></a></h4>
							<time>Thời gian bắt đầu: <%=rs.getString("tgbatdau") %></time>
							<h5>Điểm rèn luyện: <%=rs.getString("diemrl") %>; Điểm công tác xã hội: <%=rs.getString("diemctxh") %></h5>
							<h5>Địa điểm: </h5>
							</div>   </div></div>
				    </div>
						
					
					
				   <hr>
			   <%}sSQL ="";%>
			   <%  	
							}catch(Exception cnfex){
						}%> 
				</div>
				</div>
				
			 <%conn.close(); %>
 </div>
 </div>
 
  <%@include file="footer.jsp" %>
</body>

</html>