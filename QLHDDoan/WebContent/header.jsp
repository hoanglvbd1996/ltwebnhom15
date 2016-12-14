
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.String" %>
<%@page import ="javax.servlet.jsp.PageContext" %>
<%@page import ="javax.el.*" %>
 <%@ page import="java.io.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
  <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
  <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>--> 
  <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
   <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <script src="framwork/js/jquery.min.js"></script> 
  <script src="framwork/js/bootstrap.min.js"></script>
  	
    <link rel="stylesheet" href="mycss.css">
   </head>
<body>
 <% 
 	session.getAttribute("chucvu");
 	session.getAttribute("username");
 %>
	<header >
    	<div class="container">
    	<div class="col-md-3"></div>
       		<div class="text-center"><img src="img/banner.jpg"  class="img-responsive" ></div>
        </div>
    </header>
    <div class="container-fluid">
    	<nav class="navbar navbar-default">
              <ul class="nav navbar-nav" style="font-size:20px;">
             	  <li id ="tc" class=""><a onclick ="tc()" class=" hvr-underline-from-center" href="index.jsp">Trang chủ </a></li>
                 <li id ="hd" class="" ><a onclick ="hd()" class="hvr-underline-from-center" href="hoatdong.jsp">Hoạt động</a></li>
         	    <li id ="tl"  class="" > <a onclick ="tl()" class="hvr-underline-from-center" href="thaoluanview.jsp">Thảo luận</a></li>         	       		  
              </ul>
         	    <c:choose>
             <c:when test="${sessionScope.chucvu eq '4'}">
           	   <ul class="nav navbar-nav pull-right">
         	     <li class="nav-item">
		                <img src="img/user_placeholder.jpg" style="width:50px;height:50px;" alt="" class="dropdown-toggle img-circle" data-toggle="dropdown">
		                <ul class="dropdown-menu dropmenuheader-1">
		                    <li ><a href="profile.jsp?username=${sessionScope.username}">Xem thông tin cá nhân</a></li> 
		                    <li ><a href="tinnhan.jsp">Tin nhắn</a></li>
		                    <li ><a href="hoatdongdadangky.jsp?username=${sessionScope.username}">Hoạt động đã đăng ký</a></li> 
		                    <li ><a href="xemdiemrenluyen.jsp?username=${sessionScope.username}">Xem điểm rèn luyện</a></li> 
		                    <li ><a href="logout.jsp">Đăng xuất</a></li>
		                </ul>
                </li>
                </ul>
                </c:when>
                 <c:when test="${sessionScope.chucvu eq '2'}">
                 <ul class="nav navbar-nav pull-right">
		         	    <li class="nav-item">
				                <img src="img/user_placeholder.jpg" style="width:50px;height:50px;" alt="" class="dropdown-toggle img-circle" data-toggle="dropdown">
				                <ul class="dropdown-menu  dropmenuheader-1">
				                    <li ><a href="profile.jsp?username=${sessionScope.username}&value=canbo">Xem thông tin cá nhân</a></li> 
				                    <li ><a href="tinnhan.jsp">Tin nhắn</a></li>
				                    <li ><a href="quanlyhoatdong.jsp">Quản lý hoạt động</a></li> 
				                    <li ><a href="danhsachchidoan.jsp">Danh sách chi đoàn</a></li> 
				                    <li ><a href="logout.jsp">Đăng xuất</a></li>
				                </ul>
		                </li>
            	   </ul>
            	   </c:when>
              <c:when test="${sessionScope.chucvu eq '1'}">
            	       <ul class="nav navbar-nav pull-right">
		              <li class="nav-item">
				                <img src="img/user_placeholder.jpg" style="width:50px;height:50px;" alt="" class="dropdown-toggle img-circle" data-toggle="dropdown">
				                <ul class="dropdown-menu  dropmenuheader-1">
				                     <li ><a href="profile.jsp?username=${sessionScope.username}&value=canbo">Xem thông tin cá nhân</a></li> 
				                     <li ><a href="tinnhan.jsp">Tin nhắn</a></li>
				                    <li><a href="quanlyhoatdong.jsp">Quản lý hoạt động</a></li> 
				                    <li><a href="diemdanh.jsp">Điểm danh</a></li> 
				                    <li><a href="danhsachdoanvien.jsp">Danh sách đoàn viên</a></li> 
				                    <li><a href="quanlythongbao.jsp">Quản lý thông báo</a></li> 
				                    <li><a href="logout.jsp">Đăng xuất</a></li>
				                </ul>
		                </li>
		           </ul>
		      </c:when>
		      <c:when test="${sessionScope.chucvu eq '3'}">
            	  <ul class="nav navbar-nav pull-right">
		              <li class="nav-item">
				                <img src="img/user_placeholder.jpg" style="width:50px;height:50px;" alt="" class="dropdown-toggle img-circle" data-toggle="dropdown">
				                <ul class="dropdown-menu  dropmenuheader-1">
				                     <li ><a href="profile.jsp?username=${sessionScope.username}&value=canbo">Xem thông tin cá nhân</a></li> 
				                     <li ><a href="tinnhan.jsp">Tin nhắn</a></li>
				                     <li><a href="danhsachchidoan.jsp">Quản lý chi đoàn</a></li>
				                    <li><a href="danhsachdoanvien.jsp">Quản lý đoàn viên</a></li> 
				                    <li><a href="quanlyhoatdong.jsp">Quản lý hoạt động</a></li> 
				                    <li><a href="diemdanh.jsp">Điểm danh</a></li> 
				                     <li><a href="quanlytaikhoan.jsp">Quản lý tài khoản</a></li> 
				                    <li><a href="quanlythongbao.jsp">Quản lý thông báo</a></li> 
				                    <li><a href="logout.jsp">Đăng xuất</a></li>
				                </ul>
		                </li>
		           </ul>
		      </c:when>
		   <c:otherwise>
      	    <ul class="nav navbar-nav pull-right">
            	  <li class="nav-item">
                    <a href="login.jsp">Đăng Nhập</a>
           		  </li> 
            </ul>
            </c:otherwise>
	</c:choose>
   </nav>
    </div>
 
    
