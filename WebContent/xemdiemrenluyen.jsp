<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.String" %>
<%@	page import ="javax.servlet.jsp.PageContext" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file ="connect.jsp" %>
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
</head>
<body>
<%@ include file ="header.jsp" %>
<div class="container">
<% String id=request.getParameter("username");%>
<% 
			String sSQL ="select distinct  * from DangKy join HoatDong on DangKy.mahd = HoatDong.mahd  where  DangKy.id ='"+id+"' and DangKy.TinhTrang = 1";		
		    rs = stat.executeQuery(sSQL);
		    int stt= 1;
		    int rl =0;
		    int ctxh =0;
  %>
<table class="table table-hover">
    <thead>
        <tr>
            <th>#</th>
            <th>Tên họat động</th>
            <th>Ngày tham gia</th>
            <th>Điểm rèn luyện</th>
            <th>Điểm CTXH</th>
        </tr>
    </thead>
    <tbody>
      <% while(rs.next()){ %>
        <tr>
            <td><%=stt %></td>
			<td><%=rs.getString("tenhd") %></td>
            <td><%=rs.getString("tgbatdau") %></td>
            <td class="text-success"><%=rs.getInt("diemrl") %></td>
            <td class="text-success"><%=rs.getInt("diemctxh") %></td>
    	  </tr>
      <%stt++; rl +=rs.getInt("diemrl");ctxh +=rs.getInt("diemctxh"); }%>
        <tr>
        	<td></td>
            <td></td>
            <td>Tổng số điểm:</td>
            <td class="text-success"><%=rl %></td>
            <td class="text-success"><%=ctxh %></td>
        </tr>
    </tbody>
</table>
   				 <div class="text-center">
                        <ul class="pagination">
                            <li><a href="">«</a></li>
                            <li class="active"><a >1</a></li>
                            <li><a href="">2</a></li>
                            <li><a href="">»</a></li>
                          </ul>
                      </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>