<?php
$db = mysqli_connect("localhost","root","","cie");
   
   if (!$db) {
    die('Connect Error: ' . mysqli_connect_error());
}
	$username = $_POST['uname'];
	$password = $_POST['psw'];
	 
	$result = mysqli_query($db,"SELECT * FROM userdata WHERE username = '$username' and password = '$password' ")
				or die("Failed to query : " .mysql_error());
	$row=mysqli_fetch_array($result);
	if($row['username']==$username && $row['password']==$password && $row['usertype']=='student')
	{
			$_SESSION["login"]=$username;
			if (isset($_SESSION["login"]))
			header('Location:http:\\dbms\home.php?course_code="."&USN='.$username.'');
	}
	else if($row['username']==$username && $row['password']==$password && $row['usertype']=='faculty')
	{
			$_SESSION["login"]=$username;
			if (isset($_SESSION["login"]))
			header('Location:http:fhome.php?&email='.$username.'');
	}
	else
	{
	header('Location:http:\\dbms\index.php?f=2');
	}
			?>