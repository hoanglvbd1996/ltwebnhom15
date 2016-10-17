<%@page import="java.io.ObjectInputStream.GetField"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.*" %>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file ="connect.jsp" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Hoạt động của đoàn Trường</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
    <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>
</head>
<body>
	<%@ include file="header.jsp" %>
    <br>
    <br>
   <div class="container">
   <div class="row">
                <div class="col-md-8">
                  <% 
				    try{
						String sSQL ="select  top 3  * , mahd as ID  from HoatDong  where donvitochuc =N'Đoàn trường' order by tgbatdau DESC;";		
					    rs = stat.executeQuery(sSQL);
					%>
			         <div id="myCarousel" class="carousel slide text-center" data-ride="carousel" data-interval="2500" data-pause="hover">
                        <div class="carousel-inner" role="listbox">
                          <% if(rs.next()){ %>
	                             <div class="item active">
	                               <a  href="chitiethoatdong.jsp?ID=<%=rs.getInt("ID")%>"><img src="img/<%=rs.getString("urlhinhanh") %>"  class="img-responsive" alt=""></a>
	                                    <h1><%=rs.getString("tenhd") %></h1>
	                                    <p><%= rs.getString("tomtat") %></p>
	                            </div>
	                          <%}%>
	                        <% while(rs.next()){ %>
	                            <div class="item ">
	                                <a  href="chitiethoatdong.jsp?ID=<%=rs.getInt("ID")%>"><img src="img/<%=rs.getString("urlhinhanh") %>"  class="img-responsive" alt=""></a>
	                                    <h1><%=rs.getString("tenhd") %></h1>
	                                    <p><%= rs.getString("tomtat") %></p>
	                            </div>
	                        <%}sSQL ="";%>
                        </div>
                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>  <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>  <span class="sr-only">Next</span>
                        </a>
                    </div>
                    	<%  	
							}catch(Exception cnfex){
						}%> 
      
					    <br>
					    <br>
					    <br>
				<div class="container-fluid">
  				 <% 
				    try{
						String sSQL ="select * , mahd as ID  from HoatDong  where donvitochuc =N'Đoàn trường' order by tgbatdau DESC;";		
					    rs = stat.executeQuery(sSQL);
					%>
					 <% while(rs.next()){ %>
					<div class="row">
						<div class="col-md-4">
						<br>
							<img  class="img-responsive" src="img/<%=rs.getString("urlhinhanh") %>">
						</div>
						<div class="col-md-1">	</div>
						<div class="col-md-7">
							<h4  style="font-size: 22px;line-height: 29px;"><%=rs.getString("tenhd") %></h4>
							<time style="font-style: italic;white-space: nowrap;color: #cbcbcb;font-size: 12px;"><%=rs.getString("tgbatdau") %></time>
							<p style="margin-top:10px;"><%=rs.getString("tomtat") %></p>
							<button class="btn btn-primary">Xem tiếp</button>
						</div>    
					</div>
					<br><br>
			   <%}sSQL ="";%>
			   <%  	
							}catch(Exception cnfex){
						}%> 
				</div>
				</div>
		 	  <div class="col-md-1">	</div>
			    <div class="col-md-3">
   
			        <aside class="widget widget_text">
			                <div style="border-bottom: 2px solid #2c54aa" class="block-title">
			                    <a style="background-color: #2c54aa; color: white; padding:5px;">THÔNG BÁO MỚI</a>
			                        <div style="border-bottom: 2px solid #2c54aa" ></div>
			                </div>
				     <div class="textwidget" style="overflow:auto; height:450px;">
				    <% 
				    try{
						String sSQL ="select matb as ID, *  from ThongBao";		
					    rs = stat.executeQuery(sSQL);
					%>
					            <table style="width:100%;" class="hot-news">
				                <tbody>
				                    <tr>
				                        <td>
				                        <ul style="top:0px; margin: 0 0 0 25px; padding: 0; line-height:150%; font-size: 130%;">
				                                <% while(rs.next()){ %>
				                             	   <li style="margin-bottom:4px;">
				                             	   		<a  href="chitietthongbao.jsp?ID=<%=rs.getInt("ID")%>" style="padding: 0px;"> <%= rs.getString("tentb") %></a>
				                                	</li>
				                                <%}sSQL ="";%>
				                          	<%  	
											}catch(Exception cnfex){
													
											}%>     		
										                                
				                        </ul>
				               		     </td>
				
				         		       </tr>
				        	    </tbody>
				    		   </table>
			  			  </div>
					</aside>
			<div >
					 <% 
				    try{
						String sSQL ="select  top 3 * ,mahd as ID  from HoatDong";		
					    rs = stat.executeQuery(sSQL);
					%>
						<div style="border-bottom: 2px solid #2c54aa" class="block-title">
			                    <a style="background-color: #2c54aa; color: white; padding:5px;" >TIN HOT</a>
			                        <div style="border-bottom: 2px solid #2c54aa" ></div>
			              </div><BR>
			              <div class="panel text-center">
			              <% while(rs.next()){ %>
			              	<img class="img-responsive" src="img/<%=rs.getString("urlhinhanh")%>">
			              	<a href="chitiethoatdong.jsp?ID=<%=rs.getInt("ID")%>">
			              				<h6><%=rs.getString("tenhd") %></h6>
	                                    <p><%= rs.getString("tomtat") %></p></a>
			              	<br><br><br>
				             <%}sSQL ="";%>
	 						<% }catch(Exception cnfex){	}%>     					        
			            
			             </div>
					</div>
 					 </div>
	</div>	
			 <%conn.close(); %>
 </div>
 <br><br>
  <%@include file="footer.jsp" %>
</body>

</html>