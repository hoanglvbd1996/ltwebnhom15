<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Quản lý tin nhắn</title>
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
function Gui()

{
	var x = confirm("Bạn có chắc muốn gửi?");
		  if (x == true) {
				alert( "Gửi thành công!");
			} else {
				 alert("Gửi thất bại!");
			}
}
function xoatinnhan()

{
	var x = confirm("Bạn có chắc muốn xóa?");
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
                                         <li class="">
                                            <a href="diemdanh.html"><i class="fa fa-calendar-check-o" aria-hidden="true"></i>
<p>Điểm danh</p></a>
                                        </li>
                                         <li class="">
                                            <a href="quanlythongbao.html"><i class="fa fa-globe" aria-hidden="true"></i>
<p>Quản lý thông báo</p> </a>
                                        </li>
                                         <li class="active">
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
                                    <a href="#"><i class="fa fa-inbox" aria-hidden="true"></i>&nbsp;Quản lý Tin nhắn</a></div>
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
                                    		<button class="btn btn-default btn-outline" data-target="#soantinnhan_modal" data-toggle="modal">Soạn tin nhắn</button>
                                        	<div class="pull-right">
                                             	  <button class="btn btn-danger btn-outline" onClick="xoatinnhan()">Xóa tin nhắn</button>
                                 		     </div>
                                  	  </form>
                                    <table class="table table-hover table-striped">
                                    	<thead>
                                     	  <th></th>
                                            <th>Tiêu đề</th>
                                            <th>Người gửi</th>
                                            <th>Ngày gửi</th>
                                            <th>Chi tiết</th>
                                        </thead>
                                        <tbody>	
                                            <tr>
                                            	<td><input type="checkbox"></td>
                                                <td>Header</td>
                                                <td>ABC</td>
                                                <td>1/1/2016</td>
                                                <td><a  href="" data-target="#chitiettinnhan_modal" data-toggle="modal">Click</a></td>
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
    
      <div id="soantinnhan_modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
   	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title text-center">Soạn tin nhắn</h4>
          </div>
          <div class="modal-body">
            <div class="row">
                        <h4 style="margin-left:20px;">Tiêu đề</h4><p><input class="form-control" type="text" name=""></p>
                         <h4 style="margin-left:20px;">Gửi tới</h4><p><input class="form-control" type="text" name=""></p>
                         <h4 style="margin-left:20px;">Nội dung</h4><p> <textarea class="form-control" rows="10" id="comment"></textarea></p>
                      </div>   
               	   <div class="modal-footer">
                    <button type="button" data-dismiss="modal" class="btn btn-warning btn-outline">Close</button>
                   <button type="button" data-dismiss="modal" class="btn btn-default btn-outline" onClick="Gui()">Gửi</button>
              	</div>
             </div>
          </div>
      </div>
    </div>
    <div id="chitiettinnhan_modal" class="modal modal-fullscreen fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
   	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title text-center">Chi tiết tin nhắn</h4>
          </div>
          <div class="modal-body">
            <div class="row" style="margin-left:50px;">
                        <h4>Người gửi</h4><label>ABC</label>
                           <h4>Ngày gừi</h4><label>19:00:00 21/9/2016</label>
                         <h4>Nội dung</h4><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in vehicula mi, euismod vestibulum massa. Sed auctor aliquet felis, id euismod mauris tincidunt quis. Pellentesque non nisi ac justo tempus laoreet sit amet in ipsum. Nam laoreet dignissim accumsan. Suspendisse ac eros nibh. Etiam dignissim ut libero vel ultrices. Donec ipsum quam, lobortis sed quam sit amet, tincidunt mollis risus. Suspendisse a facilisis lacus, consectetur fringilla mauris. Praesent lobortis dictum vestibulum.</p>
               	   <div class="modal-footer">
                    <button type="button" data-dismiss="modal" class="btn btn-warning btn-outline">Close</button>
              	</div>
             </div>
          </div>
      </div>
    </div>
</div>
</body>
	
</html>
