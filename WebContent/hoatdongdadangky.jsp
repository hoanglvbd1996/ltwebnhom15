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
		<title>Hoạt động đã đăng ký</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
       <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file ="header.jsp" %>
<div class="container-fluid">
<% String id=request.getParameter("username");%>
<% 
			String sSQL ="select distinct  * from DangKy join HoatDong on DangKy.mahd = HoatDong.mahd  where  DangKy.id  ='"+id+"'";		
		    rs = stat.executeQuery(sSQL);
		    int stt= 1;
  %>
<table class="table table-hover">
    <thead>
        <tr>
            <th>#</th>
            <th>Tên họat động</th>
            <th>Ngày đăng ký</th>
            <th>Trạng thái</th>
             <th></th>
             <th></th>
        </tr>
    </thead>
    <tbody>
    	<% while(rs.next()){ 
    		if(rs.getInt("TinhTrang") ==  1)
        	{
        		%>
                <tr>
                    <td><%=stt%></td>
                    <td><%=rs.getString("tenhd")%></td>
                    <td><%=rs.getString("ngaydangky")%></td>
                    <td class="text-success">Đã hoàn thành </td>
                    <td></td>
                      <td><a href="chitiethoatdong.jsp?mahd=<%=rs.getInt("mahd")%>">Xem Chi tiết</a></td>
                </tr>  	
        	<%	stt++;}
        	else if(rs.getInt("TinhTrang") == 0)
        	{
        		%>
                <tr>
                    <td><%=stt%></td>
                    <td><%=rs.getString("tenhd")%></td>
                    <td><%=rs.getString("ngaydangky")%></td>
                    <td class="text-danger">Chưa hoàn thành </td>
                    <td><a href="chinhsuaxoasubmit.jsp?username=<%=rs.getString("id")%>&option=delete&value=hoatdonguser">Hủy</a></td>
                      <td><a href="chitiethoatdong.jsp?mahd=<%=rs.getInt("mahd")%>">Xem Chi tiết</a></td>
                </tr>  	
        		<%}	stt++;%>
        	<%} %>
    </tbody>
</table>
	 <div class="text-center">
                        <ul class="pagination">
                            <li><a href="">«</a></li>
                            <li class="active"><a>1</a></li>
                            <li><a href="">2</a></li>
                            <li><a href="">»</a></li>
                          </ul>
          </div>
  
</div>
   <%@ include file="footer.jsp" %>
</body>
</html>