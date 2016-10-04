<?php
	$host="localhost";
  	$uname="root";
 	 $pass="root";
  $connection= mysqli_connect($host, $uname, $pass);
  if (!$connection) 
	{
    die ("A connection to the Server could not be established!");
  } else 

	mysqli_select_db($connection,"admin" );
	$sqlquery = "SELECT * FROM quanlydoanvien";
	$result = mysqli_query( $connection,$sqlquery);
	$td="";
	
	while($row= mysqli_fetch_assoc($result))
	{
		 $td .= "<tr>
		 			<td>"."<input type='checkbox'  value='".$row["mssv"]."' class='form-control' >"."</td>
				 <td>".$row["mssv"]."</td>
				 <td>".$row["hoten"]."</td>
				 <td>".$row["khoa"]."</td>
				 <td>".$row["lop"]."</td>
				 <td>".$row["gioitinh"]."</td>
				 <td>".$row["namsinh"]."</td>
				 <td>".$row["email"]."</td>
				 <td>".$row["sdt"]."</td>
				 <td>".$row["ngayvaodoan"]."</td>
				 <td>".$row["cmnd"]."</td>
				 <td>".$row["diachi"]."</td>
			 </tr>";
	}
	echo $td;
		mysqli_close($connection);
?>