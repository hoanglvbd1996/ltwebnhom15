<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.String" %>
<%@page import ="javax.servlet.jsp.PageContext" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
 	 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="mycss.css">
    <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
</head>
<body>
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
         	    <li class="">  <a href="thaoluanview.jsp">Thảo luận</a></li>
              </ul>
              <ul class="nav navbar-nav pull-right">
                <li class="nav-item">
                    <a href="login.jsp">Đăng Nhập</a>
               </li> 
              <!-- Doan vien -->
          			    <c:if style="display:none;">
              <ul class="nav navbar-nav">
	          <li class="nav-item">
	            	 <a role="button"><span class="glyphicon glyphicon-bell" style="padding:0; font-size:25px;"></span></a>
               </li>
              <li class="nav-item">
		                <img src="img/user_placeholder.jpg" style="width:50px;height:50px;" alt="" class="dropdown-toggle img-circle" data-toggle="dropdown">
		                <ul class="dropdown-menu  dropmenuheader-1">
		                    <li ><a href="profile.jsp">Xem thông tin cá nhân</a></li> 
		                    <li ><a href="hoatdongdadangky.jsp">Hoạt động đã đăng ký</a></li> 
		                    <li ><a href="xemdiemrenluyen.jsp">Xem điểm rèn luyện</a></li> 
		                    <li ><a href="logout.jsp">Đăng xuất</a></li>
		                </ul>
                </li>
                </ul>
                </c:if>
              <!-- Can bo doan truong -->
         			    <c:if style="display:none;">
              <ul class="nav navbar-nav">
	          <li class="nav-item">
	            	 <a role="button"><span class="glyphicon glyphicon-bell" style="padding:0; font-size:25px;"></span></a>
               </li>
              <li class="nav-item">
		                <img src="img/user_placeholder.jpg" style="width:50px;height:50px;" alt="" class="dropdown-toggle img-circle" data-toggle="dropdown">
		                <ul class="dropdown-menu  dropmenuheader-1">
		                    <li ><a href="profile.jsp">Xem thông tin cá nhân</a></li> 
		                    <li ><a href="quanlyhoatdong.jsp">Quản lý hoạt động</a></li> 
		                    <li ><a href="danhsachchidoan.jsp">Danh sách chi đoàn</a></li> 
		                    <li ><a href="logout.jsp">Đăng xuất</a></li>
		                </ul>
                </li>
                </ul>
                </c:if>
        		    <!-- Can bo doan khoa -->
        			    <c:if >
              <ul class="nav navbar-nav">
	          <li class="nav-item">
	            	 <a role="button"><span class="glyphicon glyphicon-bell" style="padding:0; font-size:25px;"></span></a>
               </li>
              <li class="nav-item">
		                <img src="img/user_placeholder.jpg" style="width:50px;height:50px;" alt="" class="dropdown-toggle img-circle" data-toggle="dropdown">
		                <ul class="dropdown-menu  dropmenuheader-1">
		                    <li ><a href="profile.jsp">Xem thông tin cá nhân</a></li> 
		                    <li ><a href="quanlyhoatdong.jsp">Quản lý hoạt động</a></li> 
		                    <li ><a href="diemdanh.jsp">Điểm danh</a></li> 
		                    <li ><a href="danhsachdoanvien.jsp">Danh sách đoàn viên</a></li> 
		                    <li ><a href="quanlythongbao.jsp">Quản lý thông báo</a></li> 
		                    <li ><a href="logout.jsp">Đăng xuất</a></li>
		                </ul>
                </li>
                </ul>
              </c:if>
               </ul>
        </nav>
    </div>
</body>
</html>