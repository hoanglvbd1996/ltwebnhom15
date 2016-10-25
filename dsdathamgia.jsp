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
		<title>Danh sách đã tham gia</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
       <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file ="header.jsp" %>

		<div class="wrapper">	
        	<div class="main-panel">
                  <div class="content">
                    <div class="container-fluid">
                        <div class="row">

                            <div class="col-md-12">
                            <div class="content table-responsive table-full-width">
<table class="table table-hover table-striped">
                                        
                                            <thead>
                                                 <th>#</th>
                                                <th>MSSV</th>
                                                <th>Họ tên</th>
                                                <th>Khoa</th>
                                                <th>Giới tính </th>
                                                <th>Năm sinh</th>
                         
                                                <th></th>
                                               <th></th>
                                            </thead>
                                            <tbody>
                                            <tr>
                                            		<td>1</td>
                                            		<td>14110213</td>
                                                    <td>Nguyễn Trọng</td>
                                                  	<td>Công nghệ thông tin</td>
                                                    <td>Nam</td>
                                                    <td>02-12-1996</td>
                                                 
                                              </tr>
                                              <tr>
                                            		<td>2</td>
                                            		<td>14110065</td>
                                                    <td>Lại Vũ Hoàng</td>
                                                  	<td>Công nghệ thông tin</td>
                                                    <td>Nam</td>
                                                    <td>01-01-1996</td>
                                                   
                                              </tr>
                                              
                                            </tbody>
                                         
</table>

<div class="row-md-2">
        <div class="col-sm-10"> 
        </div>
        <div class="col-sm-2"> 
        <a href="diemdanh.jsp" class="btn btn-default">Trở về</a>     
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