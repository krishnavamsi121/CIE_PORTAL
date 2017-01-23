
<?php


$db = mysqli_connect("localhost","root","","cie");
   
   if (!$db) {
    die('Connect Error: ' . mysqli_connect_error());
}

$USN =$_POST['usn'];
$result = mysqli_query($db,"DELETE FROM marks WHERE USN='$USN'");
				  
            if(! $result ) {
               die('Could not delete data: ' . mysql_error());
            }
				echo "Marks have been Deleted Successfuly for USN: ".$USN;
			
            mysqli_close($db);
            
			?>