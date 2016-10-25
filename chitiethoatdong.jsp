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
	<title>Chi tiết hoạt động</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
    <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
</head>
<%
String mahd =request.getParameter("mahd");
String sql1 = "Select * from HoatDong where mahd='"+mahd+"'";
rs = stat.executeQuery(sql1);
%>
<body>
<%@include file="header.jsp" %>
    <div class="container">
                <div class="row">
                    <%if(rs.next()){ %>
                         <h3 class="page-header"><%=rs.getString("tenhd") %></h3>
                         <div class="col-md-2"><h4>Đơn vị tổ chức</h4> <h4 style="color:blue;"><%=rs.getString("donvitochuc") %> </h4></div>
                         <div class="col-md-3"><h4>Ngày diễn ra hoạt động</h4> <h4 style="color:blue;"><%=rs.getString("tgbatdau") %> </h4></div>
                         <div class="col-md-2"><h4>Địa điểm</h4> <h4 style="color:blue;"><%=rs.getString("diadiem") %> </h4></div>
                         <div class="col-md-2"><h4>Điểm rèn luyện</h4> <h4 style="color:blue;"><%=rs.getString("diemrl") %> </h4></div>
                         <div class="col-md-3"><h4>Điểm công tác xã hội</h4> <h4 style="color:blue;"><%=rs.getString("diemctxh") %> </h4></div>
                    
                 </div>
                 <div class="row">
                 		<div class="col-md-4">
                 		<label>Hình ảnh</label>
                         <img class="img-thumbnail well " src="img\<%=rs.getString("urlhinhanh") %>" alt="Card image" style="width:500px;">
                         <button class="btn btn-outline btn-success form-control" >Đăng ký hoạt động này</button><br><br>   
                         </div>
                         <div class="col-md-8">
                          <label>Nội dung</label>   
                          <br>                
                          <textarea class="form-control" style="height:200px;resize:none;"><%=rs.getString("noidung") %></textarea>                                                              
                                               
                          </div>
              </div>

    <%} %>
    </div>
    <%@include file="footer.jsp" %>
</body>

</html>