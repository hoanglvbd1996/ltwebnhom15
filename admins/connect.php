 <?php
$host="localhost";
  $uname="root";
  $pass="root";
  
  $connection= mysqli_connect ($host, $uname, $pass);
  if (! $connection) {
    die ("A connection to the Server could not be established!");
  } else {
    echo "User root logged into to MySQL server ",$host," successfully.";
  }
?>