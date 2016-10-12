<%@page import="java.io.ObjectInputStream.GetField"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.*" %>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file ="common.jsp" %>
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
    <style>
     .carousel-control.right, .carousel-control.left {
     background-image: none !important;
     color: #303f9f !important;
  }
	</style>
<title>Trang của đoàn trường ĐH SPKT</title>
</head>

<body>
	<%@ include file ="header.jsp" %>
	<div class="container">
            <div class="row">
                <div class="col-md-7">
          	         <div id="myCarousel" class="carousel slide text-center" data-ride="carousel" data-interval="2500" data-pause="hover">
                       <% 
				    try{
				    	String sSQL ="select top 3 *,mahd as ID from HoatDong where TrangChu =1  order by tgbatdau DESC;";		
					    rs = stat.executeQuery(sSQL);
					%>
                        <div class="carousel-inner" role="listbox">
                          <% if(rs.next()){ %>
	                             <div class="item active">
	                               <a  href="chitiethoatdong.jsp?ID=<%=rs.getInt("ID")%>"><img src="img/<%=rs.getString("urlhinhanh")%>"   class="img-responsive" alt=""></a>
	                                    <h1><%=rs.getString("tenhd") %></h1>
	                                    <p><%= rs.getString("tomtat") %></p>
	                            </div>
	                          <%}%>
	                        <% while(rs.next()){ %>
	                            <div class="item ">
	                                <a  href="chitiethoatdong.jsp?ID=<%=rs.getInt("ID")%>"><img src="img/<%=rs.getString("urlhinhanh")%>"   class="img-responsive" alt=""></a>
	                                    <h1><%=rs.getString("tenhd") %></h1>
	                                    <p><%= rs.getString("tomtat") %></p>
	                            </div>
	                        <%}sSQL ="";%>
                        </div>
                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>  <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>  <span class="sr-only">Next</span>
                        </a>
                        	<% }catch(Exception cnfex){out.print(cnfex);}%> 
      
                    </div>
                    
					    <br>
					    <br>
					    <br>
					    <div class="section" data-pg-collapsed>
                             <div class="container">
                            <div>
                                <div class="col-md-8" style="border-left: 5px solid blue;">
                                    <h1>Tin tức từ đoàn Trường</h1>
                                </div>
                            </div>
				      	  </div>
				            <div class="row">
				                <div class="col-md-10">
				                    <hr style="width: 100%; color: black; height: 3px; background-color:blue;" draggable="true">
				                </div>
				                <div class="col-md-2"><a href="cuadoantruong.jsp"><i>Xem toàn bộ</i></a></div>
				            </div>
				            <% 
							    try{
									String sSQL ="select mahd as ID , *  from HoatDong Where donvitochuc = N'Đoàn trường' and TrangChu =1  order by tgbatdau desc;";	
								    rs = stat.executeQuery(sSQL);
								%>
				       	 <div  data-pg-collapsed>
				            <div class="row">
				            <% while(rs.next()){ %>
				                <div class="col-md-7">
				                   <a  href="chitiethoatdong.jsp?ID=<%=rs.getInt("ID")%>" style="text-decoration:none;"> <img class="img-responsive" src="img/<%=rs.getString("urlhinhanh") %>">
				                     <h2><%=rs.getString("tenhd") %></h2>
				             		  <p><%=rs.getString("tomtat") %></p></a>
				             		  <br><br><br>
             					</div>
             					 <%}sSQL ="";%> 
             				 <div class="col-md-1"></div>
          			 		  <div class="col-md-4"> </div>	
                   			    
                   	     	 	<%  	
								}catch(Exception cnfex){
								}%> 
                    	   </div>
                  	  </div>
         		   	</div>
         		   	    <div class="section" data-pg-collapsed>
                             <div class="container">
                            <div>
                                <div class="col-md-8" style="border-left: 5px solid blue;">
                                    <h1>Tin tức từ đoàn Khoa</h1>
                                </div>
                            </div>
				      	  </div>
				            <div class="row">
				                <div class="col-md-10">
				                    <hr style="width: 100%; color: black; height: 3px; background-color:blue;" draggable="true">
				                </div>
				                <div class="col-md-2"><a href="cuadoankhoa.jsp"><i>Xem toàn bộ</i></a></div>
				            </div>
				            <% 
							    try{
									String sSQL ="select mahd as ID , *  from HoatDong Where donvitochuc = N'Đoàn khoa' and TrangChu =1  order by tgbatdau desc;";	
								    rs = stat.executeQuery(sSQL);
								%>
				       	 <div  data-pg-collapsed>
				            <div class="row">
				            <% while(rs.next()){ %>
				                <div class="col-md-7">
				                   <a  href="chitiethoatdong.jsp?ID=<%=rs.getInt("ID")%>" style="text-decoration:none;"> <img class="img-responsive" src="img/<%=rs.getString("urlhinhanh") %>">
				                     <h2><%=rs.getString("tenhd") %></h2>
				             		  <p><%=rs.getString("tomtat") %></p>
				             		  <br><br><br></a>
             					</div>
             					 <%}sSQL ="";%> 
             				 <div class="col-md-1"></div>
          			 		  <div class="col-md-4"> </div>	
                   			    
                   	     	 	<%  	
								}catch(Exception cnfex){
								}%> 
                    	   </div>
                  	  </div>
         		   	</div>
			 </div>
		 	  <div class="col-md-1">	</div>
			   <div class="col-md-4">
   
			        <aside class="widget widget_text">
			                <div style="border-bottom: 2px solid #2c54aa" class="block-title">
			                    <a style="background-color: #2c54aa; color: white; padding:5px;">THÔNG BÁO MỚI</a>
			                        <div style="border-bottom: 2px solid #2c54aa" ></div>
			                </div>
			   <div class="textwidget" style="overflow:auto; height:450px;">
				    <% 
				    try{
						String sSQL ="select matb as ID, * from ThongBao order by thoigian DESC;";		
					    rs = stat.executeQuery(sSQL);
					%>
					            <table style="width:100%;" class="hot-news">
				                <tbody>
				                    <tr>
				                        <td>
				                        <ul style="top:0px; margin: 0 0 0 25px; padding: 0; line-height:150%; font-size: 130%;">
				                                <% while(rs.next()){ %>
				                             	   <li style="margin-bottom:4px;">
				                             	   		<a  href="chitietthongbao.jsp?ID=<%=rs.getInt("ID")%>" style="padding: 0px;"><%= rs.getString("tentb") %></a>
				                                	</li>
				                                <%}sSQL ="";%>
				                          	<%  	
											}catch(Exception cnfex){out.print(cnfex);}%>     		
										                                
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
	<%@ include file="footer.jsp" %>

</body>
</html>
