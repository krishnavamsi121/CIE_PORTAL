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

$result = mysqli_query($db,"UPDATE marks SET USN='$USN',C_CODE='$COURSE',F_INT=$first,S_INT=$second,T_INT=$third,QUIZ=$quiz,LAB=$lab,S_STUDY=$selfstudy where usn='$USN'");
				
				
				if(! $result ) {
               die('Could not update data: No Values Entered ' . mysql_error());
            }
            echo "Updated data successfully\n";
            
            mysqli_close($db);
			?>