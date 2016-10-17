<%@page import="java.io.ObjectInputStream.GetField"%>
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
	<title>Chi tiết hoạt động</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
    <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
</head>
<%
String mahd =request.getParameter("mahd");
String sql1 = "Select * from HoatDong where mahd='"+mahd+"'";
rs = stat.executeQuery(sql1);
%>
<body>
<%@include file="header.jsp" %>
    <div class="container">
                <div class="row">
                    <%if(rs.next()){ %>
                         <h1 class="page-header"><%=rs.getString("tenhd") %></h1>
                        <div class="col-md-3"><p><i>1/1/2016</i></p></div><div class="col-md-5"></div>
                        <div class="col-md-4"><p class="pull-right"><i></i></p></div><br><br>
                        <div class="row">
                            <div class="col-md-9">
                            <img class="img-thumbnail well " src="img\<%=rs.getString("urlhinhanh") %>" alt="Card image" style="width:500px;">
                            </div>
                            <div class="col-md-3">
                                               <form>
                                                    <button class="btn btn-outline btn-success form-control" >Đăng ký hoạt động này</button><br><br>
                                                    <label class="label label-primary">Chia sẻ</label>
                                                   <button class="btn btn-primary "><i class="fa fa-facebook-official fa-3x"></i></button>
                                                   <button class="btn btn-primary"><i class="fa fa-twitter fa-3x"></i></button>
                                                   <button class="btn btn-primary"><i class="fa fa-instagram fa-3x"></i></button>
                                               </form>
                              </div>
                              </div>
                              </div>
                 <div class="text-left">
            <p class="indent">
		<%=rs.getString("noidung") %>
</p>
	</div>
  </div>
<div class="bg-faded p-y-3 section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="display-3 m-y-2 text-xs-center text-primary">Chi tiết</h1>
                    </div>
                </div>
                <div class="row">
                	 <div class="col-md-3 text-center">
                          <div class="card">
                                  		   <h2 style="background:#789CD6;padding:10px;" >Đơn vị tổ chức</h2>
                                          <div class="card-block">
                                            <h5 class="card-title"><%=rs.getString("donvitochuc") %></h5>
                                          </div>
                            </div>
                    </div>
                    <div class="col-md-3 text-center">
                          <div class="card">
                                  		   <h2 style="background:#789CD6;padding:10px;" >Điểm rèn luyện</h2>
                                          <div class="card-block">
                                            <h4 class="card-title"><%=rs.getString("diemrl") %></h4>
                                          </div>
                            </div>
                    </div>
                    <div class="col-md-4 text-center">
                          <div class="card">
                                  		   <h2 style="background:#789CD6;padding:10px;" >Điểm Công tác xã hội</h2>
                                          <div class="card-block">
                                            <h4 class="card-title"><%=rs.getString("diemctxh") %></h4>
                                          </div>
                            </div>
                    </div>
                    <div class="col-md-2 text-center">
                          <div class="card">
                                  		   <h2 style="background:#789CD6;padding:10px;" >Ngày diễn ra</h2>
                                          <div class="card-block">
                                            <h4 class="card-title"><%=rs.getString("tgbatdau") %></h4>
                                          </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    <%} %>
    <%@include file="footer.jsp" %>
</body>

</html>