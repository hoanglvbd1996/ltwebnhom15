<%@page import="java.io.ObjectInputStream.GetField"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.*" %>

<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
    <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
    <style>
	</style>
<title>Đăng nhập</title>
</head>
<body>
    <div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Đăng nhập </h1>
            <div class="account-wall">
                <img class="profile-img" src="img/user_placeholder.jpg"/>
                <form class="form-signin" method="post" action="checkaccount.jsp">
                <select class="form-control" style="width:200px; margin-left:55px;" name="chucvu">
                	<option name="admin" value="admin">Admin</option>
                	<option name="cbdk" value="cbdk">Cán bộ đoàn khoa</option>
                	<option name="cbdt" value="cbdt">Cán bộ đoàn trường</option>
                	<option name="doanvien" value="dv">Đoàn viên</option>
                </select>
                
                <input name="user" class="form-control" placeholder="Username" required autofocus>
                <input name="password" class="form-control" type="password" placeholder="Password" required>
                <button class="btn btn-lg btn-primary btn-block" type="submit">
                    Sign in</button>
                <label class="checkbox pull-left">
                </label>
                <a href="#" class="pull-right need-help">Quên mật khẩu? </a><span class="clearfix"></span>
                </form>
            </div>
            <a href="#" class="text-center new-account">Create an account </a>
        </div>
    </div>
</div>
</body>
</html>