<?php
$host="localhost";
  $uname="root";
  $pass="root";
  
  $connection= mysqli_connect ($host, $uname, $pass);
  if (!$connection) {
    die ("A connection to the Server could not be established!");
  } else {
    
  }
if(isset($_POST['submit']))
{


$mssv = $_POST['mssv1'];
$khoa = $_POST['khoa1'];
$lop = $_POST['lop1'];
$gioitinh = $_POST['gioitinh1'];
	$varnamsinh = $_POST['namsinh1'];

$hoten= $_POST['hoten1'];
$sdt = $_POST['sdt1'];
$email = $_POST['email1'];
$diachi = $_POST['diachi1'];
	$varngayvaodoan = $_POST['ngayvaodoan1'];
$cmnd =$_POST['cmnd1'];
$db_selected = mysqli_select_db($connection,'admin');
$sqlquery = ("INSERT INTO quanlydoanvien (mssv,hoten,khoa,lop,gioitinh,namsinh,email,sdt,ngayvaodoan,cmnd,diachi) VALUES ('$mssv','$hoten','$khoa','$lop',null,null,'$email','$sdt',null,'$cmnd','$diachi')");


if($connection->query($sqlquery) === TRUE){
	echo "<script type='text/javascript'>alert('Đã thêm thành công');</script>";
	header("Refresh:0; url=quanlydoanvien.php");
}else{
	echo "<script type='text/javascript'>alert('Thêm thất bại: ');</script>";
	header("Refresh:0; url=quanlydoanvien.php");
}

}
  ?>