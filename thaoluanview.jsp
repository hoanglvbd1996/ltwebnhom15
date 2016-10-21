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
	<title>Thảo luận</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
    <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
    <%
    String username = request.getParameter("username");
String sql1 = "Select * from ThaoLuan join NguoiDung on ThaoLuan.manguoidang = NguoiDung.username";
rs = stat.executeQuery(sql1);
%>
</head>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color:#036;
    color: white;
}
</style>
</head>

<body>
<%@ include file="header.jsp" %>
<div class="container-fluid">	
<div class="row-md-4"> 
	   	<div class="col-sm-4"> 
	   <a href="guibaiviet.jsp?username=<%=session.getAttribute("username")%>" class="btn btn-primary">Gửi đề tài mới</a>
	  
	    </div>
	  	<div class="col-sm-8">
	    <form class="form-inline">
	        <input type="text"size="80%" class="form-control" placeholder="Tên bài viết">
	      <button type="button" class="btn btn-dafault">Tìm kiếm </button>
	    </form>
	    </div>
  </div>
  
  <div class="row-md-8">
  
<table class="table table-hover table-striped" >
			 <thead>
			    <th width="70%">Tiêu đề</th>
			    <th width="16%">Người gửi</th>
			    <th width="8%">Lượt xem</th>
			    <th width="6%">Trả lời</th>
			  </thead>
			 <tbody>
			 <%while(rs.next()){ %>
			  <tr>
			    <td><a href="traloi.jsp?madetai=<%=rs.getString("madetai")%>"><strong class="text-success"><%=rs.getString("tendetai")%></strong></a><br></td>
			    <td><%=rs.getString("hoten")%></td>
			    <td>0</td>
			    <td>0</td>
			  </tr>
			  <%} %>
			</tbody>
</table>
  </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>