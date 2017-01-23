<?php
$db = mysqli_connect("localhost","root","","cie");
$usn=$_GET["email"];

error_reporting(0);
?>
<html>
<head><title> faculty </title>
<link href="update.css" rel="stylesheet" type="text/css">
<style>
   body{
   background:url("2.jpg");
   background-size: cover;
   background-repeat: no-repeat;
    background-attachment: fixed;
	
}
   table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
	text-align:center;
	border-spacing: 5px;
	padding:15px;

	align:center;
}
th {
    background-color:#000010;
    color:white;
	text-color:white;
	font-weight:bold;
	font-size:25px;
}
td {
	text-color:white;
	color:black;
	//background-color:#47d147;
	}
table {
    border: 2px solid black;
}
.button {
   
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
	border-radius:12px;
}
.button1 {
    background-color: white;
    color: black;
    border: 2px solid #555555;
}

.button1:hover {
    background-color: #555555;
    color: white;
}
</style>

<script>
function filename()
{
var c = document.getElementById("upload").value; 
location.replace("http://localhost/dbms/fhome.php?uploadfile="+c);
}
</script>
</head>
<body>	
<div id="top">
<div id="up" >
<span style="color:black;font-family:sans-serif;font-weight:bold;font-size:25px;"> Welcome 	
<?php if($usn=='roopar@bmsce.ac.in'){
		echo "Roopa R";
		$code="16IS5DCDBM";
		}
		if($usn=='sindhuk@bmsce.ac.in'){
		echo "Sindhu K";
		$code="16IS5DCJAV";
		}
		if($usn=='mknalini@bmsce.ac.in'){
		echo "Nalini M K";
		$code="16IS5DCDCN";
		}
		if($usn=='rajeshwarik@bmsce.ac.in'){
		echo "Rajeshwari K";
		$code="16IS5DCWEP";
		}
		if($usn=='mamathabr@bmsce.ac.in'){
		echo "Mamatha B R";
		$code="16IS5DCDMG";
		}
		if($usn=='gururajah@bmsce.ac.in'){
		echo "Gururaja Hebbur Satyanarayana";
		$code="16IS5DCAIN";
		}
		
		?> (
  <?php  ?><span style="color:black;font-family:sans-serif;font-weight:bold;font-size:25px;"> <?php echo  $usn ?> </span>
  	)</span>
<span style="float:right"> 
	<button type="button" class="button button1" value="logout" name="logout" onclick="logout()">Logout</button>
	  <script>
	function logout(){location.replace("http://localhost/dbms/index.php?f=1");}
  </script>
  </span><br><br><br><br>
  <div class="a">
<form enctype="multipart/form-data" method="post" role="form">
    <div class="form-group">
        <label for="exampleInputFile" style="font-size:20px">File Upload</label><br>
        <input type="file" class="button button1" name="file" id="file" size="150">
        <p class="help-block" style="font-size:20px">Only Excel/CSV File Import.</p>
    </div>
    <button type="submit" class="button button1" name="Import" value="Import">Upload</button>
	<input type="reset" class="button button1" name="reset"/>
<br>	<p >.    </p>
<a class="button button1" href="http://localhost/dbms/fac_view.php?usn=<?php echo $usn; ?>  ">View Marks</a>
<a class="button button1" href="http://localhost/dbms/all.php?code=<?php echo $code; ?>  ">Delete All Marks</a>

<?php 
if(isset($_POST["Import"]))
{    
    $filename=$_FILES["file"]["tmp_name"];
    if($_FILES["file"]["size"] > 0)
    {
        $file = fopen($filename, "r");
        while (($emapData = fgetcsv($file, 20000, ",")) !== FALSE)
        {
            $sql = "INSERT into marks(USN,C_CODE,F_INT,S_INT,T_INT,QUIZ,LAB,S_STUDY) values ('$emapData[0]','$emapData[1]','$emapData[2]','$emapData[3]','$emapData[4]','$emapData[5]','$emapData[6]','$emapData[7]')";
            mysqli_query($db,$sql);
		}
        fclose($file);
        echo ' <p style="color:gray;font-family:sans-serif;font-weight:bold;font-size:25px;">Your Marks is Successfully updated into the database</p> ';
       
    }
    else
        echo 'Invalid File:Please Upload CSV File';
}?>
</div></div>

 






<table>
<tr>
<div id="update">


</form>
<form  action="Update.php" method="POST">
  <div class="container">
  <input type="text" class="button button1" name="usn" placeholder="Enter USN" size="20" style="width:250px;height:35px;"/><br/>
  <input type="text" class="button button1" name="coursecode" placeholder="Course code" size="20" style="width:250px;height:35px"/><br/>
  <input type="text" class="button button1" name="first" placeholder="First Internal Marks" size="20" style="width:250px;height:35px"/><br/>
  <input type="text" class="button button1" name="second" placeholder="Second Internal Marks" size="20" style="width:250px;height:35px"/><br/>
  <input type="text" class="button button1"  name="third" placeholder="Third Internal Marks" size="20" style="width:250px;height:35px"/><br/>
  <input type="text" class="button button1" name="quiz" placeholder="Quiz" size="20"style="width:250px;height:35px"/><br/>
  <input type="text" class="button button1" name="lab" placeholder="Lab" size="20" style="width:250px;height:35px"/><br/>
  <input type="text" class="button button1" name="selfstudy" placeholder="Self-study" size="20" style="width:250px;height:35px"/><br/>  
  <input type="submit" class="button button1" value="UPDATE" onclick="Update.php"/>
  </div>
</form>
</div>
<div id="insert">
<form  action="Insert.php" method="POST">
  <div class="container">
  <input type="text" class="button button1" name="usn" placeholder="Enter USN" size="20" style="width:250px;height:35px"/><br/>
  <input type="text" class="button button1" name="coursecode" placeholder="Course code" size="20" style="width:250px;height:35px"/><br/>
  <input type="text" class="button button1" name="first" placeholder="First Internal Marks" size="20" style="width:250px;height:35px"/><br/>
  <input type="text" class="button button1" name="second" placeholder="Second Internal Marks" size="20" style="width:250px;height:35px"/><br/>
  <input type="text" class="button button1"  name="third" placeholder="Third Internal Marks" size="20" style="width:250px;height:35px"/><br/>
  <input type="text" class="button button1" name="quiz" placeholder="Quiz" size="20"style="width:250px;height:35px"/><br/>
  <input type="text" class="button button1" name="lab" placeholder="Lab" size="20" style="width:250px;height:35px"/><br/>
  <input type="text" class="button button1" name="selfstudy" placeholder="Self-study" size="20" style="width:250px;height:35px"/><br/>
  <input type="submit" class="button button1" value="INSERT" onclick="Insert.php"/>
  </div>
</form>
</div>
<div id="delete">
<form  action="Delete.php" method="POST">
  <div class="container">
  <input type="text" class="button button1" name="usn" placeholder="Enter USN" size="20" style="width:250px;height:35px"/><br/>
<input type="submit" class="button button1" value="Delete" onclick="Delete.php"/>
</form>
</div>

</tr>

</table>



</div>
	</body>
	</html>
	