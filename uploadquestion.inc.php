<?php
    $dbuser = "root";
    $dbpass = "";
    $dbname="android";
    $dbhost = "localhost";

    $conn = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
    if(mysqli_connect_errno()){
        die("Database connection failed");
    }
    require 'vendor/autoload.php';
    use PhpOffice\PhpSpreadsheet\Spreadsheet;
    use PhpOffice\PhpSpreadsheet\Reader\Xlsx;
    if(isset($_FILES["filetoupload"])){
        $file_loc = 'uploads/';
        $filename = $_FILES["filetoupload"]["tmp_name"];
        move_uploaded_file($filename,$file_loc.$_FILES['filetoupload']['name']);

        $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
        $spreadsheet = $reader -> load($file_loc.$_FILES['filetoupload']['name']);
        $sheetData = $spreadsheet -> getActiveSheet() -> toArray();

        $i=0;
        for($i=0;$i<20;$i++){
            $ques = $sheetData[$i][0];
            $opt1 = $sheetData[$i][1];
            $opt2 = $sheetData[$i][2];
            $opt3 = $sheetData[$i][3];
            $opt4 = $sheetData[$i][4];
            $ans = $sheetData[$i][5];
        $sql = "INSERT INTO questions(q_text,opt1,opt2,opt3,opt4,ans) values('{$ques}','{$opt1}','{$opt2}','{$opt3}','{$opt4}','{$ans}');";
            echo $ques . ' ' . $opt1 . " ";
        $result = mysqli_query($conn,$sql);
        }
        unlink($file_loc.$_FILES['filetoupload']['name']);
        header("Location: uploadquestion.php");

        }
        else{
            echo "tumse na hopaiga";
        }
    ?>