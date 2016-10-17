<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.String" %>
<%@page import ="javax.servlet.jsp.PageContext" %>
<%@page import ="javax.el.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html>
<head>

	<meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="mycss.css">
    <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
</head>
<body>
 <%   session.getAttribute("chucvu");
 		session.getAttribute("username");
 %>
	<header >
    	<div class="container">
       		<div class="text-center"><img src="img/banner.jpg"></div>
        </div>
    </header>
    <div class="container-fluid">
    	<nav class="navbar navbar-default">
              <ul class="nav navbar-nav">
                <li><a href="index.jsp">Trang chủ </a></li>
                 <li>
        			  <a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Các hoạt động<span class="caret"></span></a>
             	    <ul class="dropdown-menu dropmenuheader ">
                        <li class=""><a href="cuadoankhoa.jsp">Của đoàn khoa</a></li>
                        <li class=""><a href="cuadoantruong.jsp">Của đoàn trường</a></li>
               	   </ul>
 		          </li>
         	    <li class=""> <a href="thaoluanview.jsp">Thảo luận</a></li>         	       		  
              </ul>
         	    <c:choose>
              <c:when test="${sessionScope.chucvu eq 'dv'}">
           	   <ul class="nav navbar-nav pull-right">
	 	         <li class="nav-item">
	            	 <a role="button"><span class="glyphicon glyphicon-bell" style="padding:0; font-size:25px;"></span></a>
           	    </li>
         	     <li class="nav-item">
		                <img src="img/user_placeholder.jpg" style="width:50px;height:50px;" alt="" class="dropdown-toggle img-circle" data-toggle="dropdown">
		                <ul class="dropdown-menu  dropmenuheader-1">
		                    <li ><a href="profile.jsp?username=${sessionScope.username}">Xem thông tin cá nhân</a></li> 
		                    <li ><a href="hoatdongdadangky.jsp?username=${sessionScope.username}">Hoạt động đã đăng ký</a></li> 
		                    <li ><a href="xemdiemrenluyen.jsp?username=${sessionScope.username}">Xem điểm rèn luyện</a></li> 
		                    <li ><a href="logout.jsp">Đăng xuất</a></li>
		                </ul>
                </li>
                </ul>
                </c:when>
                 <c:when test="${sessionScope.chucvu eq 'cbdk'}">
                 <ul class="nav navbar-nav pull-right">
                    <li class="nav-item">
			            	 <a role="button"><span class="glyphicon glyphicon-bell" style="padding:0; font-size:25px;"></span></a>
		               </li>
		         	    <li class="nav-item">
				                <img src="img/user_placeholder.jpg" style="width:50px;height:50px;" alt="" class="dropdown-toggle img-circle" data-toggle="dropdown">
				                <ul class="dropdown-menu  dropmenuheader-1">
				                    <li ><a href="profile.jsp?username=${sessionScope.username}">Xem thông tin cá nhân</a></li> 
				                    <li ><a href="quanlyhoatdong.jsp">Quản lý hoạt động</a></li> 
				                    <li ><a href="danhsachchidoan.jsp">Danh sách chi đoàn</a></li> 
				                    <li ><a href="logout.jsp">Đăng xuất</a></li>
				                </ul>
		                </li>
            	   </ul>
            	   </c:when>
              <c:when test="${sessionScope.chucvu eq 'cbdt'}">
            	       <ul class="nav navbar-nav pull-right">
			          <li class="nav-item">
			            	 <a role="button"><span class="glyphicon glyphicon-bell" style="padding:0; font-size:25px;"></span></a>
		               </li>
		              <li class="nav-item">
				                <img src="img/user_placeholder.jpg" style="width:50px;height:50px;" alt="" class="dropdown-toggle img-circle" data-toggle="dropdown">
				                <ul class="dropdown-menu  dropmenuheader-1">
				                     <li ><a href="profile.jsp?username=${sessionScope.username}">Xem thông tin cá nhân</a></li> 
				                    <li><a href="quanlyhoatdong.jsp">Quản lý hoạt động</a></li> 
				                    <li><a href="diemdanh.jsp">Điểm danh</a></li> 
				                    <li><a href="danhsachdoanvien.jsp">Danh sách đoàn viên</a></li> 
				                    <li><a href="quanlythongbao.jsp">Quản lý thông báo</a></li> 
				                    <li><a href="logout.jsp">Đăng xuất</a></li>
				                </ul>
		                </li>
		           </ul>
		      </c:when>
		      <c:when test="${sessionScope.chucvu eq 'admin'}">
            	  <ul class="nav navbar-nav pull-right">
			          <li class="nav-item">
			            	 <a role="button"><span class="glyphicon glyphicon-bell" style="padding:0; font-size:25px;"></span></a>
		               </li>
		              <li class="nav-item">
				                <img src="img/user_placeholder.jpg" style="width:50px;height:50px;" alt="" class="dropdown-toggle img-circle" data-toggle="dropdown">
				                <ul class="dropdown-menu  dropmenuheader-1">
				                     <li ><a href="profile.jsp?username=${sessionScope.username}">Xem thông tin cá nhân</a></li> 
				                    <li><a href="danhsachdoanvien.jsp">Danh sách đoàn viên</a></li> 
				                    <li><a href="quanlyhoatdong.jsp">Quản lý hoạt động</a></li> 
				                    <li><a href="diemdanh.jsp">Điểm danh</a></li> 
				                     <li><a href="quanlytaikhoan.jsp">Quản lý tài khoản</a></li> 
				                      <li><a href="quanlytinnhan.jsp">Quản lý tin nhắn</a></li> 
				                    <li><a href="danhsachdoanvien.jsp">Danh sách đoàn viên</a></li> 
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
</body>
</html>