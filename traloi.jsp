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
		<title>Trả lời</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
       <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
</head>
<body>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}
th, td {
	text-align: left;
	padding: 8px;
}
 tr:nth-child(even) {
background-color: #f2f2f2
}
th {
	background-color:#036;
	color: white;
}
</style>
</head>
<%
String madetai = request.getParameter("madetai");

String sql2 = "select * from ThaoLuan  where madetai="+madetai+"";
try{

ResultSet rs2= stat.executeQuery(sql2);
%>
<body >
	<%@ include file ="header.jsp" %>
	<div class="container" >
  <div class="row-sm-4">
    <div class="col-sm-12">
    <% if(rs2.next()){ %>
      <h4>
        <label> Đề tài:</label>
        <span style="color:#036"><strong><%=rs2.getString("tendetai")%></strong></span> <br>
        <label> Nội dung:</label>
        <textarea class="form-control" style="height:200px; resize:none;"  readonly><%=rs2.getString("noidung") %></textarea>
      </h4>
    </div>
    
    <%}  
    }catch(Exception e){out.print(e);} 
   
	try{String sql1 = "select * from TraLoi join NguoiDung on TraLoi.username = NguoiDung.username where TraLoi.madetai="+madetai+"";
    ResultSet rs1= stat.executeQuery(sql1);
    %>
  </div>

   <div class="row-sm-4">
   
   <div class="col-sm-12">
        <div id="comments">
        <div class="panel-group">
        <%	while(rs1.next()){ %>
       		
       		<div class="panel panel-default">
      			<div class="panel-heading"><%=rs1.getString("hoten") %> [<%=rs1.getString("thoigian") %>] </div>
      			<div class="panel-body"><%=rs1.getString("noidung") %></div>
   			 </div>      
            <%} %>
                 </div>
        </div>
        <textarea class="form-control" style="height:100px;resize:none;"  name="noidung"></textarea>
        <div class="col-sm-9"></div> <a href="thaoluanview.jsp" class="btn btn-default">Trở về</a> <a href="" class="btn btn-primary">Trả lời</a> 

  
     </div>
    </div>
    
    
  </div>
  <%}catch(Exception e){out.print(e);} %>
 
<%@include file="footer.jsp" %>
</body>
</html>