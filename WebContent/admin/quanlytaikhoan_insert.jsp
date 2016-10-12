<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Quản lý tài khoản</title>
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
	$(document).ready(function(e) {
       $("#clickphanquyen").click(function(){
   			 $("#phanquyen").toggle();
			 $("#savephanquyen").toggle();
			});
		
    });
	$(document).ready(function(e) {
       $("#savephanquyen").click(function(){
   			 $("#phanquyen").toggle();
			 $("#savephanquyen").toggle();
			});
		
    });
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
                             		   <a class="simple-text">Trang Admin</a>
                                     </div>
                   	               <ul class="nav">
                                        <li class="">
                                            <a href="quanlydoanvien.html"><i class="fa fa-user" aria-hidden="true"></i>
<p>Quản lý đoàn viên</p> </a>
                                        </li>
                                        <li class="active">
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
	  
    		</div>	<!-- Silde bar"-->
    
             <div class="main-panel">
                <nav class="nav navbar navbar-default" >
                       <div class="container-fluid center-block">
                             <div class="navbar-brand">
                                    <a href="#"><i class="fa fa-folder" aria-hidden="true"></i>&nbsp;Quản lý tài khoàn</a></div>
                             <ul class="nav navbar-nav navbar-right list-inline">
                            		 <li>
                                     <a> <p>&nbsp;Chào Admin: </p></a>
                                   </li>
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
                                    		<button class="btn btn-default btn-outline" data-target="#themtaikhoan_modal" data-toggle="modal">Thêm tài khoản</button>
                                        	<div class="pull-right">
                                                <button class="btn btn-outline btn-primary" id="clickphanquyen">Phân quyền tài khoản</button> <button class="btn btn-outline btn-primary" id="savephanquyen" style="display:none;">Save</button>
                                             	  <button class="btn btn-danger btn-outline" onclick="confirmxoa()">Xóa tài khoản</button>
                                 		     </div>
                                  	  </form>
                                    <table class="table table-hover table-striped">
                                    	<thead>
                                        	 <th></th>
                                            <th>Tên tài khoản</th>
                                            <th>Mật khầu</th>
                                            <th>Lần cuối truy cập</th>
                                            <th>Quyền hạn </th>
                                            <th></th>
                                        </thead>
                                        <tbody>
												<tr>
                                                	<td><input type="checkbox"></td>
                                                    <td>username</td>
                                                    <td>password</td>
                                                    <td>19:00:00 22/9/2016</td>
                                                    <td>Cán bộ đoàn</td>
                                                    <td><select class="form-control" id="phanquyen" style="display:none;" >
                                                            <option>Cán bộ đoàn trường</option>
                                                            <option>Cán bộ đoàn khoa</option>
                                                           <option>Admin</option>
                                                           <option>Đoàn viên</option>
                                                        </select>
                                                     </td>
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
    
      <div id="themtaikhoan_modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
   	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title text-center">Thêm tài khoản</h4>
          </div>
          <div class="modal-body">
            <div class="row">
            	<form method="post" action="">
                      <div class="col-lg-12">
                         <h4>Tên tài khoản</h4><p><input class="form-control" type="text" name="tentaikhoan"></p>
                         <h4>Mật khầu</h4><p><input class="form-control" type="text" name="matkhau"></p>
                         <h4>Quyền hạn</h4><p>  
                            <select class="form-control" name="quyenhan">  
                              <option value="" selected="selected"></option>                   
                                <option>Cán bộ đoàn trường</option>
                                <option>Cán bộ đoàn khoa</option>
                                 <option>Admin</option>
                                <option>Đoàn viên</option>
                             </select>
                             </p>
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
</body>
	
</html>
