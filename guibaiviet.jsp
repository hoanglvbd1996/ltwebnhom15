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
	<title>Gửi bài viết</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
    <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
 <%

String username = request.getParameter("username");
%>
</head>
<body>
	<%@ include file ="header.jsp" %>


<form class="form-inline"  method="post" action="them.jsp?option=add&value=thaoluan&username=<%=session.getAttribute("username")%>">
	
<div class="container" >	
	<div class="col-sm-2">
	</div><div class="col-sm-8">
	<div class="row-md-6">
		<label> Tiêu đề </label>
        <input type="text"size="84%" class="form-control" placeholder="Tên bài viết" name="tendetai"><br>
        <label> Nội dung</label>
	</div>
	<div class="row-md-6" >
       	<textarea class="form-control" style="height:300px; width:700px;resize:none;"  name="noidung"></textarea>
	</div>
    <div class="row-md-2">
        <div class="col-sm-8"> 
        </div>
        <div class="col-sm-4"> 
        <a href="thaoluanview.jsp" class="btn btn-default">Hủy</a>     
        	     <input class="btn btn-primary btn-outline" type="submit" name="submit">
        </div>
	</div>
	</div>
	
</div>
 </form>

<%@ include file="footer.jsp" %>
</body>
</html>