<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file ="header.jsp" %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<style>
table {
	border-collapse: collapse;
	width: 100%;
}
th, td {
	text-align: left;
	padding: 8px;
}
 tr:nth-child(even) {
background-color: #f2f2f2
}
th {
	background-color:#036;
	color: white;
}
</style>
</head>
<%
String ID = request.getParameter("ID");

String sql = "select * from thaoluan where thaoluan.ID="+ID+"";
boolean flag= false;;
try{
		rs= stat.executeQuery(sql);
		rs.last();
		int numrow = rs.getRow();
		rs.beforeFirst();
		if(numrow == 0)
		{
		%>
		
		<h3 class="text-center">Error 404!</h3>
		
		<%
		flag =true;}
	else{%>  
		<body >
			<div class="container" >
		  <div class="row-sm-4">
		    <div class="col-sm-12">
		    <% if(rs.next()){ %>
		      <h4>
		      <title><%=rs.getString("Tieude")%></title>
		        <label> Đề tài:</label>
		        <span style="color:#036"><strong><%=rs.getString("TieuDe")%></strong></span> <br>
		        <label> Nội dung:</label>
		        <textarea class="form-control" style="height:200px; resize:none;"  readonly><%=rs.getString("NoiDung") %></textarea>
		      </h4>
		    </div>
    
    <%}}}catch(Exception e){out.print(e);} 
   if(flag ==false)
   {
	try{
		String sql1 = "select * from binhluan join user on binhluan.IDNguoiTL = user.ID where binhluan.MaTL="+ID+"";
    	ResultSet rs1= stat.executeQuery(sql1);
    	rs1.last();
		int numrow = rs1.getRow();
		rs1.beforeFirst();
		if(numrow == 0)
		{
		%>
		
		<h3 class="text-center">Hiện chưa có bình luận nào!</h3>
		
		<% flag =true;}
	else{%>  
  </div>

   <div class="row-sm-4">
   
   <div class="col-sm-12">
        <div id="comments">
        <div class="panel-group">
        <%	while(rs1.next()){ %>
       		
       		<div class="panel panel-default">
      			<div class="panel-heading"><%=rs1.getString("hoten") %> [<%=rs1.getString("ThoiGianBL") %>] </div>
      			<div class="panel-body"><%=rs1.getString("noidungBL") %></div>
   			 </div>      
            <%} %>
                 </div>
     </div>
    </div>
       
  </div>
 	 <%}}catch(Exception e){out.print(e);} 
   }else{
	   
   }%>
   </div>
	<div class="row">
		<div class="container">
	
  		 <div class="col-md-12">
    	   <form >
    	  		 <input id="matl" type="hidden" value="<%=ID%>">
		        <textarea class="form-control" style="height:100px;resize:none;" id="NoiDungBL" placeholder="Để lại bình luận" ></textarea>
		      
      	 </form>
    	</div>
   		
  	 </div>  
  	 </div >
  	 <div class="row">
  	 <div class="col-md-9"> </div >
  	   <input id="submit" class="btn btn-primary" value="Trả lời">
  	   	<a href="thaoluanview.jsp" class="btn btn-default">Trở về</a>  
  	   
  	 </div >
  	    <script type="text/javascript">
   $(document).ready(function() {                        
				                $('#submit').click(function() {  
								$.ajax({
										 type: "POST"	,
										url :'them',
										scriptCharset: "utf-8" ,
									    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
										data: {
											matl : $('#matl').val(),
											NoiDungBL:  $('#NoiDungBL').val(),
											value: "binhluan",
										
											option :"add",
										},
										success: function(responseText) { 
											alert(responseText);
											location.reload();
										}
							});
					});
				});
</script>
<%@ include file ="footer.jsp" %>