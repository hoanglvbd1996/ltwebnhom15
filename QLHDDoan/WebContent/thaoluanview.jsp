<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="java.util.*" %>
<%@ include file ="header.jsp" %>
<head><title>Thảo luận</title>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color:#084B8A;
    color: white;
}
</style>
</head>

<body>
	<div class="container">
<div class="row-md-4"> 
	   	<div class="col-sm-4"> 
	    <a href="guibaiviet.jsp" class="btn btn-primary">Gửi đề tài mới</a>
	    </div>
	  	<div class="col-sm-8">
	    <form class="form-inline" action="timkiem?value=thaoluan" method="post">
	        <input type="text"size="80%" class="form-control" name="ten" placeholder="Tên bài viết">
	      <input type="submit" class="btn btn-dafault" name="submit" value="Tìm kiếm ">
	    	</form>
	    </div>
  </div>
  
  <div class="row-md-8">
<table class="table table-hover table-striped" >
			 <thead>
			    <th width="70%">Tiêu đề</th>
			    <th width="16%">Người gửi</th>
			    <th width="8%">Lượt xem</th>
			    <th width="6%">Trả lời</th>
			  </thead>
			 <tbody>
			   <%
		String sql = "Select *, thaoluan.id as idtl  from thaoluan join user on thaoluan.IDNguoiDang = user.ID order by thoigiangui desc ;";
		rs = stat.executeQuery(sql);
		ResultSet rsdem ;
		rs.last();
		int numrow = rs.getRow();
		rs.beforeFirst();
		if(numrow == 0)		
		{
		%>
		
		<h1>Hiện chưa có thảo luận nào!</h1>
		
		<% }
	else{ %>
		<%	while(rs.next()){ %>
		 	  <tr>
			    <td><a href="traloi.jsp?ID=<%=rs.getString("idtl")%>"><strong class="text-success" style="color:#036"><%=rs.getString("TieuDe")%></strong></a><br></td>
			    <td><%=rs.getString("Hoten")%></td>
			    <td></td>
			    <td></td>
			  </tr>  
 <%}}%>
			</tbody>
</table>
  </div>
</div>


<%@ include file ="footer.jsp" %>