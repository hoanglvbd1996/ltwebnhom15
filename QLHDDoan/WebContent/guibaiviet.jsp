<%@ include file ="connect.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file ="header.jsp" %>
<c:choose>
  <c:when test="${sessionScope.ID == null}" >
  		<h3 class="text-center">Bạn chưa đăng nhập!</h3>
   </c:when>
   <c:when test="${sessionScope.ID != null}" >
<head>

	<title>Gửi bài viết</title>

 <%

%>
</head>
<form class="form-inline">
	
<div class="container" >	
	<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<div class="row">
					<div class="row-md-5">
						<label> Tiêu đề </label>
				       	 <input type="text" size="89%" style="margin-left:12px;" class="form-control" placeholder="Tên bài viết" id="tendetai"><br>
					</div>
					<div class="row-md-5" >
					        <label > Nội dung</label>
				       	<textarea class="form-control" style="height:300px; width:700px;resize:none;"  id="noidung"></textarea>
					</div>
					<div class="row-md-2">
				        <div class="col-sm-8"> 
				        </div>
				        <div class="col-sm-4"> 
						   <a href="thaoluanview.jsp" class="btn btn-default">Hủy</a>   
						       <a class="btn btn-primary btn-outline" id="submit" >Gửi đề tài</a>
						    </div>
					</div>
			</div>
    </div>
    <div class="col-md-2"></div>
 </div>
 </div>
 </form>
</c:when>
</c:choose>
<script type="text/javascript">
 					$(document).ready(function() {                        
				                $('#submit').click(function() {  
								$.ajax({
									 type: "POST"	,
									url :'them',
									scriptCharset: "utf-8" ,
								    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
										data: {
											tendetai: $('#tendetai').val(),
											noidung: $('#noidung').val(),
											contentType: "application/x-www-form-urlencoded;charset=ISO-8859-15",
											value: "thaoluan",
											option :"add",
										},
										success: function(responseText) { 
											alert(responseText);
											window.location = "thaoluanview.jsp";
										}
							});
					});
				});
</script>
<%@ include file="footer.jsp" %>