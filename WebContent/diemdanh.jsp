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
		<title>Điểm danh</title>
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
                                            <th>Tên hoạt động</th>
                                            <th>Ngày diễn ra</th>
                                            <th>Danh sách đăng ký</th>
                                            <th>Danh sách đã tham gia</th>
                                            <th>Danh sách không tham gia</th>
                                        </thead>
                                        <tbody>
                                        	<tr>
                                            			<td>1</td>
                                            		<td>Mùa hè xanh</td>
                                                    <td>6/6/2016</td>
                                                  <td><a href="">Xem danh sách đã đăng ký</a></td>
                                                    <td><a href="">Xem danh sách đã tham gia</a></td>
                                                    <td><a href="">Xem danh sách không tham gia</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                    	 </div>
                    </div>
           
          		  </div>    
                                       
             </div>
        </div>
         <div class="text-center">
                        <ul class="pagination">
                            <li><a href="">«</a></li>
                            <li class="active"><a href="menpage1.html">1</a></li>
                            <li><a href="">2</a></li>
                            <li><a href="">»</a></li>
                          </ul>
        </div>
<%@ include file="footer.jsp" %>
</body>
</html>