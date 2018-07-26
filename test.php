<?php
$db_host = 'localhost'; // Server Name
$db_user = 'root'; // Username
$db_pass = ''; // Password
$db_name = 'db_exam'; // Database Name

$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
if (!$conn) {
    die ('Failed to connect to MySQL: ' . mysqli_connect_error());  
}

$sql = 'SELECT * 
        FROM t_question';
        
$query = mysqli_query($conn, $sql);

if (!$query) {
    die ('SQL Error: ' . mysqli_error($conn));
}

if( mysqli_num_rows( $query )==0){
        echo '<p>No Rows Returned</p>';
      }else{
        while($row = $query->fetch_assoc()) {
          echo $row["text"];
        }
      }
?>