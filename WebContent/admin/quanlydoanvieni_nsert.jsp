<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Quản lý các đoàn viên</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="../framwork/css/bootstrap.min.css">
   <link rel="stylesheet" href="../admins/admin.css">
   <link rel="stylesheet" href="../framwork/css/font-awesome.min.css">
   <link href="http://fonts.googleapis.com/css?family=Roboto:400,700,300" rel="stylesheet" type="text/css">
  <script src="../framwork/js/jquery.min.js"></script>
  <script src="../framwork/js/bootstrap.min.js"></script>
</head>

<body>
 <script>
		$(".modal-fullscreen").on('show.bs.modal', function () {
		  setTimeout( function() {
			$(".modal-backdrop").addClass("modal-backdrop-fullscreen");
		  }, 0);
		});
		$(".modal-fullscreen").on('hidden.bs.modal', function () {
		  $(".modal-backdrop").addClass("modal-backdrop-fullscreen");
		});
		
		function Confirmxoa()
			{
			var x = confirm("Bạn có muốn xóa?");
		  if (x == true) {
				alert( "Xóa thành công!");
			} else {
				 alert("Xóa thất bại!");
			}

			}
$(document).ready(function(){
	$(".toggle-icon").click(function(e) {
         $(".sub-menu").toggle();
    });
	});
			
</script>
<!-- <div class="wrapper"> 
                <div class="sidebar" data-color="purple">
                                 <div class="sidebar-wrapper">         
                                      <div class="logo">
                                           <a href="#" class="simple-text"> Trang Admin</a>
                                     </div>
                                       <ul class="nav">
                                            <li class="active">
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
                                             <li class="">
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
          
                </div>
        
                 <div class="main-panel">
                    <nav class="nav navbar navbar-default" >
                           <div class="container-fluid center-block">
                                 <div class="navbar-brand">
                                        <a href="#"><i class="fa fa-user" aria-hidden="true"></i>&nbsp;Quản lý đoàn viên</a></div>
                                 <ul class="nav navbar-nav navbar-right list-inline">
                                         <li>
                                         <a> <p>&nbsp;Chào Admin: </p></a>
                                       </li>
                                      <li>
                                          <a href="../index.html"><i class="fa fa-sign-out" aria-hidden="true"></i>&nbsp;Log out</a>
                                       </li>
                                 </ul>
                          </div>
                    </nav>
                     <div class="content">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                       <div class="content table-responsive table-full-width">
                                        <form>
                                                <button class="btn btn-default btn-outline" data-target="#themsv_modal" data-toggle="modal">Thêm SV</button>
                                                <div class="pull-right">
                                                    <button class="btn btn-outline btn-primary"  data-target="#modal-fullscreen" data-toggle="modal">Chỉnh sửa SV</button>
                                                      <button class="btn btn-danger btn-outline" onClick="Confirmxoa();">Xóa SV</button>
                                                 </div>
                                          </form>
                                          
                                        <table class="table table-hover table-striped">
                                            <thead>
                                                 <th></th>
                                                <th>MSSV</th>
                                                <th>Họ tên</th>
                                                <th>Khoa</th>
                                                <th>Lớp</th>
                                                <th>Giới tính </th>
                                                <th>Năm sinh</th>
                                                <th>Email</th>
                                                <th>SDT</th>
                                                <th>Ngày vào đoàn</th>
                                                <th>CMND</th>
                                                <th>Địa chỉ</th>
                                            </thead>
                                            <tbody>
                                            
                                                <tr>
                                                        <td><input type="checkbox" value="123456"></td>
                                                        <td>123456</td>
                                                        <td>nguyễn văn A</td>
                                                        <td>CNTT</td>
                                                        <td>141102</td>
                                                        <td>Nam</td>
                                                        <td>1/1/1996</td>
                                                        <td>@gmail.com</td>
                                                        <td>0123456789</td>
                                                        <td>1/1/2011</td>
                                                        <td>123456789</td>
                                                        <td>1asdasdsadasdad</td>
                                                </tr>
                                                    <tr style="display:none;">
                                                        <td><input type="checkbox" value="123456"></td>
                                                        <td><input type="text" value="" class="form-control"></td>
                                                        <td><input type="text" value="" class="form-control"></td>
                                                        <td><input type="text" value="" class="form-control"></td>
                                                        <td><input type="text" value="" class="form-control"></td>
                                                        <td><select  class="form-control">
                                                                    <option selected="selected">Nam</option>
                                                                    <option>Nữ</option>
                                                                </select>
                                                        </td>
                                                        <td><input type="date" value="" class="form-control"></td>
                                                        <td><input type="text" value="" class="form-control"></td>
                                                        <td><input type="text" value="" class="form-control"></td>
                                                        <td><input type="date" value="" class="form-control"></td>
                                                        <td><input type="text" value="" class="form-control"></td>
                                                        <td><input type="text" value="" class="form-control"></td>
                                                 </tr>
                                                <tr>
                                                        <td><input type="checkbox" value="123456"></td>
                                                        <td>123456</td>
                                                        <td>nguyễn văn A</td>
                                                        <td>CNTT</td>
                                                        <td>141102</td>
                                                        <td>Nam</td>
                                                        <td>1/1/1996</td>
                                                        <td>@gmail.com</td>
                                                        <td>0123456789</td>
                                                        <td>1/1/2011</td>
                                                        <td>123456789</td>
                                                        <td>1asdasdsadasdad</td>
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
               <div class="modal fade modal-fullscreen force-fullscreen" id="modal-fullscreen" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Chỉnh sửa đoàn viên</h4>
                  </div>
                  <div class="modal-body">
                   		        
                                    <table class="table table-hover table-striped">
                                    	<thead>
                                     		 <th></th>
                                            <th>MSSV</th>
                                            <th>Họ tên</th>
                                            <th>Khoa</th>
                                            <th>Lớp</th>
                                            <th>Giới tính </th>
                                            <th>Năm sinh</th>
                                            <th>Email</th>
                                            <th>SDT</th>
                                            <th>Ngày vào đoàn</th>
                                            <th>CMND</th>
                                            <th>Địa chỉ</th>
                                        </thead>
                                        <tbody>
                                        
                                        	<tr>
                                            		<td><input type="checkbox" value="123456"></td>
                                                    <td>123456</td>
                                                    <td>nguyễn văn A</td>
                                                    <td>CNTT</td>
                                                    <td>141102</td>
                                                    <td>Nam</td>
                                                    <td>1/1/1996</td>
                                                    <td>@gmail.com</td>
                                                    <td>0123456789</td>
                                                    <td>1/1/2011</td>
                                                    <td>123456789</td>
                                                    <td>1asdasdsadasdad</td>
                                            </tr>
                                            	<tr>
                                            		<td>&nbsp;</td>
                                                    <td><input type="text" value="" class="form-control"></td>
                                                    <td><input type="text" value="" class="form-control"></td>
                                                    <td><input type="text" value="" class="form-control"></td>
                                                    <td><input type="text" value="" class="form-control"></td>
                                                    <td><select  class="form-control" style="width:100px;"	>
                                                    			<option selected="selected" >Nam</option>
                                                                <option>Nữ</option>
                                                		    </select>
                                                    </td>
                                                    <td><input type="date" value="" class="form-control"></td>
                                                    <td><input type="text" value="" class="form-control"></td>
                                                    <td><input type="text" value="" class="form-control"></td>
                                                    <td><input type="date" value="" class="form-control"></td>
                                                    <td><input type="text" value="" class="form-control"></td>
                                                    <td><input type="text" value="" class="form-control"></td>
                                            </tr>
                                        	<tr>
                                            		<td><input type="checkbox" value="123456"></td>
                                                    <td>123456</td>
                                                    <td>nguyễn văn A</td>
                                                    <td>CNTT</td>
                                                    <td>141102</td>
                                                    <td>Nam</td>
                                                    <td>1/1/1996</td>
                                                    <td>@gmail.com</td>
                                                    <td>0123456789</td>
                                                    <td>1/1/2011</td>
                                                    <td>123456789</td>
                                                    <td>1asdasdsadasdad</td>
                                            </tr>
                                            	<tr>
                                            		<td>&nbsp;</td>
                                                    <td><input type="text" value="" class="form-control"></td>
                                                    <td><input type="text" value="" class="form-control"></td>
                                                    <td><input type="text" value="" class="form-control"></td>
                                                    <td><input type="text" value="" class="form-control"></td>
                                                    <td><select  class="form-control" >
                                                    			<option selected="selected">Nam</option>
                                                                <option>Nữ</option>
                                                		    </select>
                                                    </td>
                                                    <td><input type="date" value="" class="form-control"></td>
                                                    <td><input type="text" value="" class="form-control"></td>
                                                    <td><input type="text" value="" class="form-control"></td>
                                                    <td><input type="date" value="" class="form-control"></td>
                                                    <td><input type="text" value="" class="form-control"></td>
                                                    <td><input type="text" value="" class="form-control"></td>
                                            </tr>
                                        </tbody>   
                                    </table>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
                </div>
              </div>
</div>
      <div id="themsv_modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
   	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title text-center">Thêm sinh viên</h4>
          </div>
          <div class="modal-body">
            <div class="row">
            	<form method="post" action="sqlconnect.php">
                      <div class="col-lg-4">
                        <h4>MSSV</h4><p><input class="form-control" type="text" name="mssv1"></p>
                         <h4>Khoa</h4><p><input class="form-control" type="text" name="khoa1"></p>
                         <h4>Lớp</h4><p><input class="form-control" type="text" name="lop1"></p>
                         <h4>Giới tính</h4><p>  
                            <select class="form-control" name="gioitinh1">  
                              <option value="" selected="selected"></option>                   
                                <option>Nam</option>
                                 <option>Nữ</option>
                             </select>
                             </p>
                          <h4>Ngày vào đoàn</h4> <p><input class="form-control" type="date" name="ngayvaodoan1"></p>
                         <h4>Năm sinh</h4><p><input class="form-control" type="date" name="namsinh1"></p>
                      </div>
                      <div class="col-lg-8">
                        <h4>Họ tên</h4> <p><input class="form-control" type="text" name="hoten1"></p>
                        <h4>Số điện thoại</h4> <p><input class="form-control" type="text" name="sdt1"></p>
                        <h4>Email</h4> <p><input class="form-control" type="text" name="email1"></p>
                        <h4>Số CMND</h4> <p><input class="form-control" type="text" name="cmnd1"></p>
                         <h4>Địa chỉ</h4> <p><input class="form-control" type="text" name="diachi1"></p>
                      </div>   
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
</div> -->
    	<nav class="navbar navbar-default">
        <div class="container-fluid"><a type="button" class="pull-left toggle-sidebar-collapse" data-target="#left-side" aria-expanded="false" data-toggle="collapse"> <em class="fa fa-bars" ></em></a></div>
        </nav>
   	<div class="container-fluid" >
         <div class="row">
                <div class="col-md-3" id="left-side">
                      <ul class="nav">
                           <li class=""><a href="#" class="toggle-icon"><em class="fa fa-2x fa-user" aria-hidden="true"></em> Quản lý đoàn viên<em class="fa fa-angle-left pull-right fa-1x fadrop" aria-hidden="true"></em></a>
                             <ul class="sub-menu" style="display:none;">
                              	 <a><li>Danh sách đoàn viên</li></a>
                                <a><li>Thêm tài khoản</li></a>
                              </ul>

                           </li>
                            <li class="">
                                 <a href="quanlytaikhoan.html" class=" toggle-icon"><i class="fa fa-2x fa-folder" aria-hidden="true"></i>&nbsp;Quản lý tài khoản<i class="fa fa-angle-left pull-right fa-1x fadrop" aria-hidden="true"></i> </a>
                                </li>
                            <li class="">
                              <a href="quanlycachoatdong.html" class=" toggle-icon"><i class="fa fa-2x fa-calendar" aria-hidden="true"></i>&nbsp;Quản lý các hoạt động<i class="fa fa-angle-left pull-right fa-1x fadrop" aria-hidden="true"></i></a>                                 </li>
                                <li class="active">
                                <a href="diemdanh.html" class=" toggle-icon"><i class="fa fa-2x fa-calendar-check-o" aria-hidden="true"></i>&nbsp;Điểm danh<i class="fa fa-angle-left pull-right fa-1x fadrop" aria-hidden="true"></i></a>
                              </li>
                              <li class="">
                                <a href="quanlythongbao.html" class=" toggle-icon"><i class="fa fa-2x fa-globe" aria-hidden="true"></i>&nbsp;Quản lý thông báo <i class="fa fa-angle-left pull-right fa-1x fadrop" aria-hidden="true"></i></a>
                              </li>
                           <li class="">
                                  <a href="quanlytinnhan.html" class=" toggle-icon"><i class="fa fa-2x fa-inbox" aria-hidden="true"></i>&nbsp;Quản lý tin nhắn <i class="fa fa-angle-left pull-right fa-1x fadrop" aria-hidden="true"></i></a>
                               </li>
                         </ul>
                </div>
                <div class="col-md-9">
                	<h1>asdasd</h1>
                </div>
        </div>
     </div>
</body>
	
</html>
