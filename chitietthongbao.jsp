<%@page import="java.io.ObjectInputStream.GetField"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.*" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file ="connect.jsp" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Chi tiết thông báo</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
    <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
</head>
<%
String matb =request.getParameter("matb");
String sql1 = "Select * from ThongBao where matb='"+matb+"'";
rs = stat.executeQuery(sql1);
%>
<body >
	<%@ include file="header.jsp" %>
   <div class="container">
                <div class="row">
                    <%if(rs.next()){ %>
                
                        <h3 class="page-header"><%=rs.getString("tentb") %></h3>
                         <div class="col-md-5">
	                          <div class="row">
		                         <div class="col-md-6"><h4>Người thông báo</h4> <h4 style="color:blue;"><%=rs.getString("idnguoidang") %> </h4></div>
		                         <div class="col-md-6"><h4>Ngày đăng</h4> <h4 style="color:blue;"><%=rs.getString("thoigian") %> </h4></div>
	                         </div>
	                          <div class="row">
	                           		<div class="col-md-12"><h4>Hình ảnh</h4>
                         <img class="img-thumbnail well " src="img\<%=rs.getString("urlhinhanh") %>" alt="Card image" style="width:500px;"></div>
	                          </div>
                          </div>
                         
                         <div class="col-md-7">
                         <div class="row">
                     	<h4>Trích đoạn</h4> <textarea class="form-control" style="height:100px;resize:none;"><%=rs.getString("trichdoan") %></textarea></div>
                         <div class="row">
                         <h4>Nội dung</h4> <textarea class="form-control" style="height:300px;resize:none;"><%=rs.getString("noidung") %></textarea></div>
                     	
                    </div>
               
               
               
						
  </div>
    <%} %>
    <br>
    </div>
    <%@include file="footer.jsp" %>
</body>

</html>