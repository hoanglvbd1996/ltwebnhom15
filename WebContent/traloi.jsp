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
<body>
<%@include file="header.jsp" %>
<div class="container">
  <div class="row-sm-4">
    <div class="col-sm-1"> </div>
    <div class="col-sm-10">
    <% if(rs2.next()){ %>
      <h4>
        <label> Đề tài:</label>
        <span style="color:#036"><strong><%=rs2.getString("tendetai")%></strong></span> <br>
        <label> Nội dung:</label>
        <p><%=rs2.getString("noidung") %></p>
      </h4>
    </div>
    
    <%}  }catch(Exception e){out.print(e);} 
   
	try{String sql1 = "select * from TraLoi join NguoiDung on TraLoi.username = NguoiDung.username where TraLoi.madetai="+madetai+"";
    ResultSet rs1= stat.executeQuery(sql1);
    %>
  </div>
  <div class="row-sm-2">
    <textarea style="height:200px; width:900px"  readonly>hello</textarea>
  </div>
   <div class="row-sm-4">
   <div class="col-sm-1"> </div>
   <div class="col-sm-10">
        <div id="comments">
        <%	while(rs1.next()){ %>
                <div class="comment"><h4 class="author">Người comment: <br><%=rs1.getString("hoten") %></h4> 
                    <div class="">Nội dung: <Br><%=rs1.getString("noidung") %></div>
                </div>
            <%} %>
                
        </div>
     </div>
    </div>
    <textarea style="height:100px; width:900px" ></textarea>
    
  </div>
  <div class="row-sm-1">
    <div class="col-sm-8"> </div>
    <div class="col-sm-4"> <a href="thaoluanview.jsp" class="btn btn-default">Trở về</a> <a href="" class="btn btn-primary">Trả lời</a> </div>
  </div>
  <%}catch(Exception e){out.print(e);} %>
<%@include file="footer.jsp" %>
</body>
</html>