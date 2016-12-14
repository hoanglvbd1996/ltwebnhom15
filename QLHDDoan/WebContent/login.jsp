<%@page import="java.io.ObjectInputStream.GetField"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.*" %>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="header.jsp" %>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
      
    <div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Đăng nhập </h1>
            <div class="account-wall">
                <img class="profile-img" src="img/user_placeholder.jpg"/>
                <form class="form-signin" >
                <select class="form-control" style="width:200px; margin-left:55px;" name="chucvu" id="chucvu" >
                	<option value="3" selected="selected">Admin</option>
                	<option value="1" > Cán bộ đoàn khoa</option>
                	<option  value="2">Cán bộ đoàn trường</option>
                	<option value="4">Đoàn viên</option>
                </select>
                
                <input name="user" id="user" class="form-control" placeholder="Username"  required autofocus>
                <input name="password" id="password" class="form-control" type="password" placeholder="Password" required>
                <input type="button" class="btn btn-lg btn-primary btn-block" id="submit" value="Sign in">
                    
                <h3><div id="result" class="text-center text-warning"></div></h3>
                <label class="checkbox pull-left">
                </label>
       
                </form>
            </div>

        </div>
    </div>
</div>
</body>
<script type="text/javascript">
		 	 $(document).ready(function() {                        
			                $('#submit').click(function() {  
							$.ajax({
								 type: "POST"	,
								url :'checkaccount',
								scriptCharset: "utf-8" ,
							    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
									data: {
										  user: $('#user').val(),
										  password: $('#password').val(),
										  chucvu: $('#chucvu').val(),
									},
									success: function(responseText) { 
										//$('#result').text(responseText);
										$('#result').text(responseText); 
										if(responseText == '1')
											{
											window.location = "index.jsp";
											
											}
										
										
									}
						});
				});
			});
 	</script>

</html>