<?php
    $dbuser = "root";
    $dbpass = "";
    $dbname="db_exam";
    $dbhost = "localhost";
    $conn = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
    if(mysqli_connect_errno()){
        die("Database connection failed");
    }
    $query = "SELECT * FROM tbl_questions;";
    $result = mysqli_query($conn,$query);
    $output = Array();
    while($row = mysqli_fetch_assoc($result)){
        
        array_push($output,$row);
    }
    echo json_encode($output);
?> 