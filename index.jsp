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
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
    <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
    <style>
     .carousel-control.right, .carousel-control.left {
     background-image: none !important;
     color: #303f9f !important;
  }
	</style>
<title>Trang của đoàn trường ĐH SPKT</title>
</head>

<body>
	<%@ include file ="header.jsp" %>
	<div class="container">
            <div class="row">
            <div class="container-fluid">
          
			                <div style="border-bottom: 2px solid red" class="block-title">
			                    
			                     <form class="form-inline">
			                     <a style="background-color: red; color: white; padding:9px;">THÔNG BÁO MỚI</a>
	        <input type="text"size="120px" class="form-control" placeholder="Tên bài viết">
	      <button type="button" class="btn btn-dafault">Tìm kiếm </button>
	    </form>
			                        <div style="border-bottom: 2px solid red" ></div>
			                </div>
			  <br><div class="panel-group">
				    <% 
				    try{
						String sSQL ="select matb as ID, * from ThongBao where thoigian>= (getdate()-3) order by thoigian DESC;";		
					    rs = stat.executeQuery(sSQL);
					%>
				                                <% while(rs.next()){ %>
				                                <div class="panel panel-default">
              									 <div class="panel-heading"><a  href="chitietthongbao.jsp?matb=<%=rs.getString("matb")%>"><%= rs.getString("tentb") %></a>
              									 <br><a style="color: black"> [Ngày đăng bài: <%=rs.getString("thoigian") %>]</a> </div>
              									 <div class="panel-body"> 
	              									 <div class="row">
		              									 <div class="col-md-3">
		              									 <img  class="img-responsive" src="img/<%=rs.getString("urlhinhanh") %>"></div>
		              									 <div class="col-md-9"><%=rs.getString("trichdoan") %></div>
	              									 </div>
              									 </div>
              									 </div>
				                                <%}sSQL ="";%>
				                          	<%  	
											}catch(Exception cnfex){out.print(cnfex);}%>     		
										                                
				                       
				        	   
			  			  </div>
			  			  </div>
					
					</div>
					<div style="border-bottom: 2px solid #2c54aa" class="block-title">
			                    <a style="background-color: #2c54aa; color: white; padding:5px;">THÔNG BÁO CŨ</a>
			                        <div style="border-bottom: 2px solid #2c54aa" ></div>
			                </div>
			                <br>
					<div class="panel-group">
				    <% 
				    try{
						String sSQL ="select matb as ID, * from ThongBao where thoigian< (getdate()-3) order by thoigian DESC;";		
					    rs = stat.executeQuery(sSQL);
					%>
				                                <% while(rs.next()){ %>
				                                <div class="panel panel-default">
              									 <div class="panel-heading"><a  href="chitietthongbao.jsp?matb=<%=rs.getString("matb")%>"><%= rs.getString("tentb") %></a>
              									 <br><a style="color: black"> [Ngày đăng bài: <%=rs.getString("thoigian") %>]</a> </div>
              									 <div class="panel-body"> 
	              									 <div class="row">
		              									 <div class="col-md-3">
		              									 <img  class="img-responsive" src="img/<%=rs.getString("urlhinhanh") %>"></div>
		              									 <div class="col-md-9"><%=rs.getString("trichdoan") %></div>
	              									 </div>
              									 </div>
              									 </div>
				                                <%}sSQL ="";%>
				                          	<%  	
											}catch(Exception cnfex){out.print(cnfex);}%>     		
										                                
				                       
				        	   
			  			  </div>
			  			  </div>
					
					</div>
					 
	</div>
	

	<%@ include file="footer.jsp" %>

</body>
</html>
