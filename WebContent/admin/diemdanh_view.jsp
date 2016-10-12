<!doctype html>
<html>
<head>
<meta charset="utf-8">
	<title>Điểm danh</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="../framwork/css/bootstrap.min.css">
   <link rel="stylesheet" href="../framwork/css/font-awesome.min.css">
   <link rel="stylesheet" href="../admins/admin.css">
   <link href="http://fonts.googleapis.com/css?family=Roboto:400,700,300" rel="stylesheet" type="text/css">
  <script src="../framwork/js/jquery.min.js"></script>
  <script src="../framwork/js/bootstrap.min.js"></script>
</head>

<body>
 <script>
 	function confirmxoa()
	{
		var x = confirm("Bạn có muốn xóa?");
		  if (x == true) {
				alert( "Xóa thành công!");
			} else {
				 alert("Xóa thất bại!");
			}

	}
</script>
<div class="wrapper"> 
    		<div class="sidebar" data-color="purple">
                             <div class="sidebar-wrapper">         
                             	  <div class="logo">
                             		   <a class="simple-text"> Trang Admin</a>
                                  </div>
                   	               <ul class="nav">
                                        <li class="">
                                            <a href="quanlydoanvien.html"><i class="fa fa-user" aria-hidden="true"></i>
<p>Quản lý đoàn viên</p> </a>
                                        </li>
                                        <li class="">
                                            <a href="quanlytaikhoan.html"><i class="fa fa-folder" aria-hidden="true"></i>
<p>Quản lý tài khoản</p> </a>
                                        </li>
                                         <li class="">
                                            <a href="quanlycachoatdong.html"><i class="fa fa-calendar" aria-hidden="true"></i>
<p>Quản lý các hoạt động</p> </a>
                                        </li>
                                         <li class="active">
                                            <a href="diemdanh.html"><i class="fa fa-calendar-check-o" aria-hidden="true"></i>
<p>Điểm danh</p></a>
                                        </li>
                                         <li class="">
                                            <a href="quanlythongbao.html"><i class="fa fa-globe" aria-hidden="true"></i>
<p>Quản lý thông báo</p> </a>
                                        </li>
                                         <li class="">
                                            <a href="quanlytinnhan.html"><i class="fa fa-inbox" aria-hidden="true"></i>
<p>Quản lý tin nhắn</p> </a>
                                        </li>
                                    </ul>
                              </div>
	  
    		</div>	<!-- Silde bar"-->
    
             <div class="main-panel">
                <nav class="nav navbar navbar-default" >
                       <div class="container-fluid center-block">
                             <div class="navbar-brand">
                                    <a href="#"><i class="fa fa-calendar-check-o" aria-hidden="true"></i>&nbsp;Điểm danh</a></div>
                             <ul class="nav navbar-nav navbar-right list-inline">
                                  <li>
                                      <a href="../index.html"><i class="fa fa-sign-out" aria-hidden="true"></i>&nbsp;Log out</a>
                                   </li>
                             </ul>
                      </div>
                </nav>		<!-- nav bar -->
                 <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                            	   <div class="content table-responsive table-full-width">
                                   	<form>
                                  
                                        	<div class="pull-right">
                                                <button class="btn btn-outline btn-primary" data-target="#chinhsuadanhsachdiemdanh_modal" data-toggle="modal">Chỉnh sửa danh sách</button>
                                             	  <button class="btn btn-danger btn-outline" onClick="confirmxoa()">Xóa danh sách</button>
                                 		     </div>
                                  	  </form>
                                    <table class="table table-hover table-striped">
                                    	<thead>
                                     	  <th></th>
                                            <th>Tên hoạt động</th>
                                            <th>Ngày diễn ra</th>
                                            <th>Danh sách đăng ký</th>
                                            <th>Danh sách đã tham gia</th>
                                            <th>Danh sách không tham gia</th>
                                        </thead>
                                        <tbody>
                                        	<tr>
                                            		<td><input type="checkbox"></td>
                                            		<td>Mùa hè xanh</td>
                                                    <td>6/6/2016</td>
                                                    <td><a href="" data-target="#danhsachdangky_modal" data-toggle="modal">Click</a></td>
                                                    <td><a  href="" data-target="#danhsachdathamgia_modal" data-toggle="modal">Click</a></td>
                                                    <td><a  href="" data-target="#danhsachkhongthamgia_modal" data-toggle="modal">Click</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                    	 </div>
                    </div>
           
          		  </div>   
                  <footer class="footer">
                        <div class="container-fluid">
                            <nav class="pull-left">
                                <ul>
                                    <li>
                                        <a href="#">
                                            Home
                                        </a>
                                    </li>
            
                                </ul>
                            </nav>
                            <p class="copyright pull-right"> &copy; 2016 <a >Nhóm 15</a> &nbsp;Website quản lý hoạt động đoàn
                            </p>
                        </div>
                    </footer>                   
             </div>
    </div>
    <div id="danhsachdangky_modal" class="modal modal-fullscreen fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
   	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title text-center">Danh sách đăng ký</h4>
          </div>
          <div class="modal-body">
            <div class="row">
            	<form method="post" action="sqlconnect.php">
                           <table class="table table-hover table-striped">
                                    	<thead>
                                            <th>MSSV</th>
                                            <th>Họ tên</th>
                                            <th>Khoa</th>
                                            <th>Lớp</th>
                                            <th>Email</th>
                                            <th>SDT</th>
                                            <th></th>
                                        </thead>
                                        <tbody>
                                        
                                        	<tr>
                                            		
                                                    <td>123456</td>
                                                    <td>nguyễn văn A</td>
                                                    <td>CNTT</td>
                                                    <td>141102</td>
                                                    <td>@gmail.com</td>
                                                    <td>0123456789</td>
                                                    <td><input type="checkbox" value="123456"></td>
                                            </tr>
                                        	<tr>
                                            		
                                                    <td>123456</td>
                                                    <td>nguyễn văn A</td>
                                                    <td>CNTT</td>
                                                    <td>141102</td>
                                                    <td>@gmail.com</td>
                                                    <td>0123456789</td>
                                                    <td><input type="checkbox" value="123456"></td>
                                            </tr>
                                        </tbody>
                                        
                                    </table>
               	   <div class="modal-footer">
                    <button type="button" data-dismiss="modal" class="btn btn-warning btn-outline">Close</button>
                    <input class="btn btn-primary btn-outline" type="submit" name="submit">
              	</div>
         	 </form>
             </div>
          </div>
      </div>
    </div>
</div>
	 <div id="danhsachdathamgia_modal" class="modal modal-fullscreen fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
   	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title text-center">Danh sách đã tham gia</h4>
          </div>
          <div class="modal-body">
            <div class="row">
            	<form method="post" action="sqlconnect.php">
                           <table class="table table-hover table-striped">
                                    	<thead>
                                            <th>MSSV</th>
                                            <th>Họ tên</th>
                                            <th>Khoa</th>
                                            <th>Lớp</th>
                                            <th>Email</th>
                                            <th>SDT</th>
                                        </thead>
                                        <tbody>
                                        
                                        	<tr>
                                            		
                                                    <td>123456</td>
                                                    <td>nguyễn văn A</td>
                                                    <td>CNTT</td>
                                                    <td>141102</td>
                                                    <td>@gmail.com</td>
                                                    <td>0123456789</td>
                                            </tr>
                                        	<tr>
                                            		
                                                    <td>123456</td>
                                                    <td>nguyễn văn A</td>
                                                    <td>CNTT</td>
                                                    <td>141102</td>
                                                    <td>@gmail.com</td>
                                                    <td>0123456789</td>
                                            </tr>
                                        </tbody>
                                        
                                    </table>
               	   <div class="modal-footer">
                    <button type="button" data-dismiss="modal" class="btn btn-warning btn-outline">Close</button>
                    <input class="btn btn-primary btn-outline" type="submit" name="submit">
              	</div>
         	 </form>
             </div>
          </div>
      </div>
    </div>
</div>
    <div id="danhsachkhongthamgia_modal" class="modal modal-fullscreen fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
   	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title text-center">Danh sách không tham gia</h4>
          </div>
          <div class="modal-body">
            <div class="row">
            	<form method="post" action="sqlconnect.php">
                           <table class="table table-hover table-striped">
                                    	<thead>
                                            <th>MSSV</th>
                                            <th>Họ tên</th>
                                            <th>Khoa</th>
                                            <th>Lớp</th>
                                            <th>Email</th>
                                            <th>SDT</th>
                                        </thead>
                                        <tbody>
                                        
                                        	<tr>
                                            		
                                                    <td>123456</td>
                                                    <td>nguyễn văn A</td>
                                                    <td>CNTT</td>
                                                    <td>141102</td>
                                                    <td>@gmail.com</td>
                                                    <td>0123456789</td>
                                            </tr>
                                        	<tr>
                                            		
                                                    <td>123456</td>
                                                    <td>nguyễn văn A</td>
                                                    <td>CNTT</td>
                                                    <td>141102</td>
                                                    <td>@gmail.com</td>
                                                    <td>0123456789</td>
                                            </tr>
                                        </tbody>
                                        
                                    </table>
               	   <div class="modal-footer">
                    <button type="button" data-dismiss="modal" class="btn btn-warning btn-outline">Close</button>
                    <input class="btn btn-primary btn-outline" type="submit" name="submit">
              	</div>
         	 </form>
             </div>
          </div>
      </div>
    </div>
</div>
<div id="chinhsuadanhsachdiemdanh_modal" class="modal modal-fullscreen fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
   	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title text-center">Chỉnh sửa danh sách điểm danh</h4>
          </div>
          <div class="modal-body">
            <div class="row">
            	<form method="post" action="">
                        <h4>Tên hoạt động</h4><p><input class="form-control" type="text" name="tenhoatdong" value="Mùa hè xanh"></p>
                         <h4>Ngày diễn ra</h4><p><input class="form-control" type="date" name="ngaydienra"></p>
               	   <div class="modal-footer">
                    <button type="button" data-dismiss="modal" class="btn btn-warning btn-outline">Close</button>
                    <input class="btn btn-primary btn-outline" type="submit" name="submit">
              	</div>
         	 </form>
             </div>
          </div>
      </div>
    </div>
</div>
</body>
	
</html>
