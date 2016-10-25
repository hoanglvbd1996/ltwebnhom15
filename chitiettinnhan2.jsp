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
	<title>Nội dung tin nhắn</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
       <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="container" >	

	<div class="row">
	<div class="col-sm-2"></div>
	<div class="col-sm-6">	
        <input type="text" style="width:700px" class="form-control" placeholder="Người Gửi" name="idnguoinhan"><br>      
		<input type="text" style="width:700px" class="form-control" placeholder="Tiêu đề" name="idnguoinhan"><br>  
	
       	<textarea class="form-control" style="height:300px; width:700px; resize:none" placeholder="Nội dung" name="noidung"></textarea>
       	</div>
     <div class="col-sm-3"></div>	  	
	</div>
    <div class="row">
        <div class="col-sm-8"> 
        </div>
        <div class="col-sm-4"> 
          <a href="quanlytinnhan.jsp" class="btn btn-default">Trở về</a>  
        	   
        </div>
	</div>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>