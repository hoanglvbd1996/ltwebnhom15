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
	<title>Chi tiết thông báo</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
    <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
</head>
<%
String matb =request.getParameter("matb");
String sql1 = "Select * from ThongBao where matb='"+matb+"'";
rs = stat.executeQuery(sql1);
%>
<body>
<%@include file="header.jsp" %>
    <div class="container">
                <div class="row">
                    <%if(rs.next()){ %>
                
                         <h1 class="page-header"><%=rs.getString("tentb") %></h1>
                        <div class="col-md-3"><p><i>1/1/2016</i></p></div><div class="col-md-5"></div>
                             <div class="col-md-4"><p class="pull-right"><i><%=rs.getString("idnguoidang") %></i></p></div><br><br>
                        <div class="row">
                            <div class="col-md-9">
                            </div>
                            <div class="col-md-3">
                              </div>
                              </div>
                              </div>
                 <div class="text-left">
            <p class="indent">
		<%=rs.getString("noidung") %>
</p>
	</div>
  </div>
    <%} %>
    <%@include file="footer.jsp" %>
</body>

</html>