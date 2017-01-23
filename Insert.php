<?php
error_reporting(0);
$db = mysqli_connect("localhost","root","","cie");
   
   if (!$db) {
    die('Connect Error: ' . mysqli_connect_error());
}

$USN = $_POST['usn'];
$COURSE = $_POST['coursecode'];
$first = $_POST['first'];
$second = $_POST['second'];
$third = $_POST['third'];
$quiz = $_POST['quiz'];
$lab = $_POST['lab'];
$selfstudy = $_POST['selfstudy'];


$result = mysqli_query($db,"INSERT INTO marks(USN,C_CODE,F_INT,S_INT,T_INT,QUIZ,LAB,S_STUDY) VALUES('$USN','$COURSE',$first,$second,$third,$quiz,$lab,$selfstudy)");
 if(! $result ) {
               die('Could not Insert data : no values entered  ' . mysqli_error());
            }
           echo "Inserted data successfully\n";
            
            mysqli_close($db);
 
 ?>
