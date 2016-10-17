<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title>Hoạt động của đoàn khoa</title>
    <link rel="stylesheet" href="../framwork/css/bootstrap.min.css">
    <link rel="stylesheet" href="../framwork/css/font-awesome.min.css">
    <link rel="stylesheet" href="../mycss.css">
    <script src="../framwork/js/jquery.min.js"></script>
    <script src="../framwork/js/bootstrap.min.js"></script>
</head>
<script>
   $(document).ready(function(){
                     $("#newstoriesbtn").click(function(){
        				 	$("#newstoriesbtn").addClass("active");
        					$("#oldstoriesbtn").removeClass("active");
        					$(".newold #newstories").removeClass("stories");
        					$(".newold #oldstories").addClass("stories");
        			    });
                });
        		 $(document).ready(function(){
                     $("#oldstoriesbtn").click(function(){
        				 	$("#oldstoriesbtn").addClass("active");
        					$("#newstoriesbtn").removeClass("active");  
        					$(".newold #oldstories").removeClass("stories");
        					$(".newold #newstories").addClass("stories");
        			  });
                });
				  $(function(){
    $(".dropdown").hover(            
            function() {
                $('.dropdown-menu', this).stop( true, true ).fadeIn("fast");
                $(this).toggleClass('open');
                $('b', this).toggleClass("caret caret-up");                
            },
            function() {
                $('.dropdown-menu', this).stop( true, true ).fadeOut("fast");
                $(this).toggleClass('open');
                $('b', this).toggleClass("caret caret-up");                
            });
    });
		$(document).ready(function(e) {
            $("#check").click(function(e) {
               if( $("input[value='admin']").is(':checked'))
				{
					window.location.assign("../admins/quanlydoanvien.html")
				}
				if( $("input[value='cbdk']").is(':checked'))
				{
					window.location.assign("../cbdk/cbdk.html")
				}
				if( $("input[value='cbdt']").is(':checked'))
				{
					window.location.assign("../cbdt/cbdt.html")
				}
				if( $("input[value='doanvien']").is(':checked'))
				{
					window.location.assign("../login/login.html")
				}
            });
        });
</script>
<body>
    <!-- Logo -->
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 p-y-1">
                    <div class="row">
                        <div class="col-md-2">
                            <h1><img src="../logo_spkt.jpg" alt=""></h1>
                        </div>
                        <div class="col-md-10">
                            <h1 class="text-center">Đoàn hội trường SPKT</h1> 
                            <h2 class="text-center">Chào mừng</h2> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Nav bar -->
    <nav class="navbar navbar-link" style="margin-left:50px; cursor:pointer">
        <div class="navbar-header">
            <a class="navbar-brand-active text-primary" href="../index.html"><i class="fa fa-home pull-left" style="font-size:50px;" aria-hidden="true"></i></a> 
        </div>
        <ul class="nav lead navbar-nav pull-left">
            <li class="dropdown active">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Các hoạt động <b class="caret"></b></a> 
                <ul class="dropdown-menu">
                    <li>
                        <a href="cuadoankhoa.html">Của đoàn khoa</a>
                    </li>
                    <li>
                        <a href="cuadoantruong.html">Của đoàn trường</a>
                    </li>	
                </ul>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../thaoluan/thaoluan.html">Thảo luận</a> 
            </li>
        </ul>
        <ul class="nav navbar-nav pull-right">
            <li class="nav-item">
                <a class="nav-link" href="#" data-toggle="modal" data-target="#login-modal">Đăng nhập</a> 
            </li>
        </ul>
    </nav>
    <br>
    <br>
    <div class="container">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2500" data-pause="hover">
                            <ol class="carousel-indicators">
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img src="muahexanh.jpg" style="height:420px;width:945px;" alt="">
                                    <div class="container">
                                        <h1>Mùa hè xanh</h1> 
                                        <p>Sed rhoncus sed nulla ac maximus. Nulla enim sem, fermentum sed porta vitae, venenatis sed tellus. Etiam posuere dui nec odio pulvinar tincidunt. Curabitur vel elementum arcu, non porta era.</p>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="../caroul3.jpg" style="height:420px;width:945px;" alt="">
                                    <div class="container">
                                        <h1>Lorem Ipsuma</h1> 
                                        <p>Sed rhoncus sed nulla ac maximus. Nulla enim sem, fermentum sed porta vitae, venenatis sed tellus. Etiam posuere dui nec odio pulvinar tincidunt. Curabitur vel elementum arcu, non porta erae.</p>
                                    </div>
                                </div>
                            </div>
                            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>  <span class="sr-only">Previous</span> 
                            </a>
                            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>  <span class="sr-only">Next</span> 
                            </a>
                        </div>
                    </div>
                    <!-- Carousel -->
                    <div class="col-md-3">
                        <br>
                        <br>
                        <h4>Xem nhiều nhất</h4> 
                        <hr style="width: 100%; color: black; height: 3px; background-color:red;" draggable="true">
                        <div class="panel-group text-center">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <img src="muahexanh.jpg" class="img-responsive">
                                </div>
                                <i>6/6/2016</i>
                                <br>
                                <h4>Mùa hè xanh</h4> 
                            </div>
                        </div>
                        <div class="panel-group text-center">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <embed src="video.mkv" class="img-responsive" />
                                </div>
                                <i>6/6/2016</i>
                                <br>
                                <h4>Mùa hè xanh</h4> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Login UI -->
    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;" data-pg-collapsed>
        <div class="modal-dialog">
            <div class="loginmodal-container">
                <h1>Đăng nhập</h1>
                <br>
                <form>
                	<div class="row">
                         <div class="col-sm-12">
                               <div class="form-check">
                                  <label class="form-check-label">
                                    <input class="form-check-input " type="radio" name="gridRadios" value="admin" checked>Admin
                                    <input class="form-check-input" type="radio" name="gridRadios"  value="cbdk" checked>Cán bộ đoàn khoa
                                    <input class="form-check-input" type="radio" name="gridRadios"  value="cbdt" checked>Cán bộ đoàn trường
                                    <input class="form-check-input" type="radio" name="gridRadios" value="doanvien" checked>Đoàn viên
                                  </label>
                              </div>
    				  </div>   
                    </div><br>
                
                    <input type="text" name="user" placeholder="Username">
                    <input type="password" name="pass" placeholder="Password">
                    <input type="button" name="login" class=" btn form-control login loginmodal-submit" id="check" value="Login">
                </form>
                <div class="login-help">
                    <a href="#">Forgot Password</a> 
                </div>
            </div>
        </div>
    </div>
  <!-- 3cai hinh -->				  <section class="content-block team-1 team-1-1" data-pg-collapsed>
                                <div class="container">
                                    <div class="underlined-title">
                                        <h1 class="text-primary">News</h1>
                                        <hr>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4 team-member-wrap">
                                        <a href="../tintuc/detail.html" style="text-decoration:none;">
                                            <div class="team-member">
                                                <img src="http://placehold.it/600x500/44D65E/000000" class="img-responsive" alt="Member Image">
                                                <div class="team-details">
                                                	
                                                    <h3 class="member-name">Tiêu đề hoạt động 1</h3>
                                                    <p class="position"></p>
                                                    <p>Donec in velit vel ipsum auctor pulvinar. Vesti bulum iaculis lacinia est. Proin dictum elementum velit. Fusce euismod auctor pulvinar.</p>
                                                </div>
                                            </div>
                                            </a>
                                        </div>
                                        <div class="col-sm-4 team-member-wrap">
                                        <a href="../tintuc/detail.html" style="text-decoration:none;">
                                            <div class="team-member">
                                                <img src="http://placehold.it/600x500/44D65E/000000" class="img-responsive" alt="Member Image">
                                                <div class="team-details">
                                                    <h3 class="member-name">Tiêu đề hoạt động 3</h3>
                                                    <p class="position"></p>
                                                    <p>Donec in velit vel ipsum auctor pulvinar. Vesti bulum iaculis lacinia est. Proin dictum elementum velit. Fusce euismod auctor pulvinar.</p>
                                                </div>
                                            </div>
                                            </a>
                                        </div>
                                        <div class="col-sm-4 team-member-wrap">
                                        <a href="../tintuc/detail.html" style="text-decoration:none;">
                                            <div class="team-member">
                                                <img src="http://placehold.it/600x500/44D65E/000000" class="img-responsive" alt="Member Image">
                                                <div class="team-details">
                                                    <h3 class="member-name">Tiêu đề hoạt động 3</h3>
                                                    <p class="position"></p>
                                                    <p>Donec in velit vel ipsum auctor pulvinar. Vesti bulum iaculis lacinia est. Proin dictum elementum velit. Fusce euismod auctor pulvinar.</p>
                                                    <!-- /.social -->
                                                </div>
                                            </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </section>
        <br>
          <hr>
    <!-- 1cai hinh -->	        		  <div class="container">
                <div class="row">
                  <div class="col-sm-3  pull-left">
             	    <img src="http://placehold.it/600x500/4F6FD6/000000" class="img-responsive">
          		  </div>
                    <div class="col-sm-9">
                 	   <i class="pull-right">6/6/2016</i>
                        <h3>Phasellus et felis non tellus facilisis efficitur id id elit.</h3> 
                        <p>Suspendisse lobortis neque vel pretium dapibus. Donec volutpat risus non sapien faucibus faucibus. Pellentesque efficitur at neque et hendrerit. Vestibulum tempor massa et enim rhoncus efficitur. Nullam vel orci massa. Vestibulum lacinia eu sapien ut luctus. Integer fringilla odio ut venenatis tincidunt. Vivamus venenatis mauris eros, a blandit mauris egestas at. Ut euismod nibh dolor, id mattis nibh porta ut. Proin faucibus elit at urna viverra euismod. Integer quis scelerisque sapien, quis accumsan purus. Maecenas fermentum leo ut dolor euismod consequat. Quisque sed lacus lacus. Donec tempor pulvinar dapibus. Nulla sagittis dolor et metus egestas rhoncus.</p>
                        
                        <a href="../tintuc/detail.html" class="btn btn-outline outline-dark btn-link">Xem chi tiết</a>
                    </div>
                </div>
                </div><br> <hr>
     			 <div class="container">
                <div class="row">
                  <div class="col-sm-3  pull-left">
             	    <img src="http://placehold.it/600x500/4F6FD6/000000" class="img-responsive">
          		  </div>
                    <div class="col-sm-9">
                    <i class="pull-right">6/6/2016</i>
                        <h3>Vestibulum faucibus enim in libero maximus, nec hendrerit ante semper.</h3>
                        <p>Pellentesque dictum mi id mollis fermentum. Suspendisse imperdiet sapien quis ipsum vestibulum, nec interdum orci suscipit. Ut eu consectetur elit. Cras feugiat velit et varius laoreet. Nam pellentesque mauris a quam tincidunt, a dapibus sem ornare. Nam nibh tortor, tempus at turpis in, vehicula convallis nunc. Duis suscipit metus sed ante tristique venenatis.</p>
                        <a href="../tintuc/detail.html" class="btn btn-outline outline-dark btn-link">Xem chi tiết</a>
                    </div>
                </div>
                </div><br> <hr>
                 <div class="container">
                <div class="row">
                  <div class="col-sm-3  pull-left">
             	    <img src="http://placehold.it/600x500/4F6FD6/000000" class="img-responsive">
          		  </div>
                    <div class="col-sm-9">
                    <i class="pull-right">6/6/2016</i>
                        <h3>Integer fringilla leo ut mi tincidunt auctor.</h3>
                        <p>Aliquam nibh tellus, molestie scelerisque nunc eget, convallis porttitor nunc. Sed convallis nunc ac condimentum congue. Quisque cursus lorem sit amet turpis molestie, vel venenatis enim imperdiet. Nunc gravida nulla vitae eros iaculis, ac sagittis tortor pellentesque. Vestibulum mattis, arcu eget ultrices pellentesque, enim leo consequat nibh, quis egestas turpis diam sit amet diam. Donec a mi quis magna posuere vestibulum. Morbi mattis purus eu ligula eleifend, eget maximus velit aliquet. Vestibulum ultrices a tellus a sagittis. Ut nec posuere ipsum, id porta dui. Vestibulum bibendum, ligula eu suscipit faucibus, enim sem lacinia odio, lobortis facilisis lorem enim ac sapien. Pellentesque condimentum dolor porta, dignissim massa vel, egestas ex. Phasellus dictum, purus quis venenatis posuere, velit purus vehicula lorem, rutrum egestas mauris magna in nisi. Sed convallis ligula eu dapibus mollis.</p>
                        <a href="../tintuc/detail.html" class="btn btn-outline outline-dark btn-link">Xem chi tiết</a>
                    </div>
                </div>
                </div><br> <hr> 
                
                
                
                <br><br><hr>
    <div class="bg-faded p-y-3 section" draggable="true">
        <div class="container-fluid well">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-4">
                    <h1 class="pi-draggable pi-item" draggable="true">Đoàn Trường Đại Học Sư Phạm Kỹ Thuật</h1> 
                    <p> <strong>Company name, Inc.</strong> 
                        <br>795 Folsom Ave, Suite 600
                        <br>San Francisco, CA 94107
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
                                <a href="#">
                                    <li>One</li>
                                </a>
                                <a href="#">
                                    <li>Two</li>
                                </a>
                                <a href="#">
                                    <li>Three</li>
                                </a>
                                <a href="#">
                                    <li>four</li>
                                </a>
                                <a href="#">
                                    <li>five</li>
                                </a>
                                <a href="#">
                                    <li>six</li>
                                </a>
                                <a href="#">
                                    <li>seven</li>
                                </a>
                                <a href="#">
                                    <li>eight</li>
                                </a>
                                <a href="#">
                                    <li>nine</li>
                                </a>
                            </ul>
                        </div>
                        <div class="col-md-4">
                            <ul class="lead" draggable="true">
                                <a href="#">
                                    <li>One</li>
                                </a>
                                <a href="#">
                                    <li>Two</li>
                                </a>
                                <a href="#">
                                    <li>Three</li>
                                </a>
                                <a href="#">
                                    <li>four</li>
                                </a>
                                <a href="#">
                                    <li>five</li>
                                </a>
                                <a href="#">
                                    <li>six</li>
                                </a>
                                <a href="#">
                                    <li>seven</li>
                                </a>
                                <a href="#">
                                    <li>eight</li>
                                </a>
                                <a href="#">
                                    <li>nine</li>
                                </a>
                            </ul>
                        </div>
                        <div class="col-md-4">
                            <ul class="lead" draggable="true">
                                <a href="#">
                                    <li>One</li>
                                </a>
                                <a href="#">
                                    <li>Two</li>
                                </a>
                                <a href="#">
                                    <li>Three</li>
                                </a>
                                <a href="#">
                                    <li>four</li>
                                </a>
                                <a href="#">
                                    <li>five</li>
                                </a>
                                <a href="#">
                                    <li>six</li>
                                </a>
                                <a href="#">
                                    <li>seven</li>
                                </a>
                                <a href="#">
                                    <li>eight</li>
                                </a>
                                <a href="#">
                                    <li>nine</li>
                                </a>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>