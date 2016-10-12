<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.String" %>

<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
 	 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
    <script src="framwork/js/jquery.min.js"></script>
    <script src="framwork/js/bootstrap.min.js"></script>

</head>
<body>
	<footer >

 <div class="bg-faded p-y-3 section" draggable="true" data-pg-collapsed>
        <div class="container-fluid well">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-4">
                    <h1 class="pi-draggable pi-item" draggable="true">Đoàn Trường Đại Học Sư Phạm Kỹ Thuật</h1>
                    <p> <strong>Địa chỉ</strong>
                        <br>Số 1, Võ Văn Ngân
                        <br>Thủ Đức, Thành Phố Hồ Chí Minh
                        <br> <abbr title="Phone">P:</abbr>(123) 456-7890</p>
                    <div class="m-y-2 m-y-lg row text-center">
                        <div class="col-xs-4 text-left">
                            <a><i class="fa fa-3x fa-facebook text-primary"></i></a>
                        </div>
                        <div class="col-xs-4 text-left">
                            <a><i class="fa fa-3x fa-twitter text-primary"></i></a>
                        </div>
                        <div class="col-xs-4 text-left">
                            <a><i class="fa fa-3x fa-instagram text-primary"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="row">
                        <div class="col-md-4">
                            <ul class="lead" draggable="true">
                                <a href="index.jsp">
                                    <li>Trang chủ</li></a>
                            </ul>
                        </div>     
                        <div class="col-md-4">
                            <ul class="lead" draggable="true">
                                <a href="cachoatdong/cuadoankhoa.jsp">
                                    <li>Các hoạt động của đoàn khoa</li></a>
                            </ul>
                        </div>  
                         <div class="col-md-4">
                            <ul class="lead" draggable="true">
                                <a href="cachoatdong/cuadoantruong.jsp">
                                    <li>Các hoạt động của đoàn trường</li></a>
                            </ul>
                        </div>  
                    </div>
                </div>
            </div>
        </div>

  </div>
    </footer>
</body>
</html>