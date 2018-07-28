<?php
    include_once 'db_connect.inc.php';

    if(isset($_POST["id"])&&isset($_POST["respstring"])&&isset($_POST["time"])){
        $id=$_POST["id"];
        $respstring=$_POST["respstring"];
        $time=$_POST["time"];
    $sql="INSERT INTO session_details values('{$id}','{$respstring}',{$time});";

    $result= mysqli_query($conn,$sql);
    }
    else{
        header("Location:../exam.php?commit=error");
    }
    ?>