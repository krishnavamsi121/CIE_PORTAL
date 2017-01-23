
<?php


$db = mysqli_connect("localhost","root","","cie");
   
   if (!$db) {
    die('Connect Error: ' . mysqli_connect_error());
}

$code =$_GET['code'];
$result = mysqli_query($db,"DELETE FROM marks WHERE C_CODE='$code'");
				  
            if(! $result ) {
               die('Could not delete data: ' . mysql_error());
            }
				echo "All Marks have been Deleted Successfuly for Course Code : ".$code;
			
            mysqli_close($db);
            
			?>