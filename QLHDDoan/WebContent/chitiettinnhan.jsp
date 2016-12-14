<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file ="connect.jsp" %>
<%@ include file ="header.jsp" %>
<%
	
	if(request.getParameter("ID") ==null)
	{%>
	<h1>Error 404!</h1>
	<%} 
	else{
		String sql = "select * from tinnhan where matn = "+request.getParameter("ID")+"";
		rs = stat.executeQuery(sql);
	
	%>
<div class="container" >	

	<div class="row">
	<div class="col-sm-2"></div>
	<%while(rs.next()){ %>
	<div class="col-sm-6">	
        <label>Thời gian gửi</label><input type="text" style="width:700px"  disabled class="form-control" value="<%=rs.getString("thoigiangui")%>"><br>      
		<label>Tiêu đề</label><input type="text" style="width:700px" disabled class="form-control"   value ="<%=rs.getString("tieude")%>"><br>  
	
       	<label>Nội dung</label><textarea disabled  class="form-control" style="height:300px; width:700px; resize:none" name="noidung"><%=rs.getString("Noidung")%></textarea>
       	</div>
     <div class="col-sm-3"></div>	  	
	</div>
	<%}} %>
    <div class="row">
        <div class="col-sm-8"> 
        </div>
        <div class="col-sm-4"> 
          <a href="tinnhan.jsp" class="btn btn-default">Trở về</a>  
        	   
        </div>
	</div>
	</div>

<%@ include file ="footer.jsp" %>