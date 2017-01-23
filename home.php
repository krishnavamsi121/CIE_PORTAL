<?php
$db = mysqli_connect("localhost","root","","cie"); 
$course_code=$_GET["course_code"];
$USN=$_GET["USN"];
?>
<!DOCTYPE html>
<html>
 <head>
   <title>Student</title>
   <style>
   body{
   background:url("2.jpg");
   background-size: cover;
   background-repeat: no-repeat;
    background-attachment: fixed;

	
}
   table, th, tr, td {
    border: 1px solid black;
    border-collapse: collapse;
	text-align:center;
	border-spacing: 5px;
	padding:15px;
	align:center;
}
th {
  
   background-color:black;
    color:white;
	text-color:white;
	font-weight:bold;
	font-size:20px;
}
td {
	text-color:black;
	color:black;
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
    font-size: 16px;
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
function get()
{
alert("test");
 var c=document.getElementById("course").value;
location.replace("http://localhost/dbms/home.php?course_code="+course_code+"&USN="+USN+");
}
</script>
   </head>
  <body>
<span style="color:black;font-family:sans-serif;font-size:22px;"> Welcome&nbsp&nbsp</span> 

  <span style="color:black;font-family:sans-serif;font-weight:bold;font-size:32px;"> 	
  <?php 
		$sql = "SELECT sname FROM student WHERE USN='".$USN."' ";
		$result = mysqli_query($db,$sql);
		$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
		echo $row["sname"];
		
	  ?>  (
  <?php echo  $USN;?>
  )	</span>

  
  <span style="float:right;font-size:30px;font-weight:bold;font-family:sans-serif"> 
	<button type="button" class="button button1" value="logout" name="logout" onclick="logout()">LogOut</button>
  <script>
	function logout(){location.replace("http://localhost/dbms/index.php?f=1");}
  </script>
  </span>
	<br/><br/><br/><br/><br/>
	<table border="3"  style="width:75%"><tr>
	<th>Course Code</th><th>First Internals</th><th>Second Internals</th><th>Third Internals</th><th>Quiz</th>
	<th>Lab</th><th>Self Study</th><th>Final Marks</th>
	<th>Best Two</th></tr>
	
	
	
	<?php           //  JAVA DISPLAY
      $sql = "SELECT *FROM marks WHERE marks.USN='".$USN."' AND marks.C_CODE='16IS5DCJAV'";
      $result = mysqli_query($db,$sql);
	  $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
	  if (!$row) 
	  {
		//printf("Error1: %s\n", mysqli_error($db));
	 echo "<tr><td colspan=9>Java marks have not been uploaded yet</td></tr>";
	  }  
	  else{
		$l[0]=$row["F_INT"];
		$l[1]=$row["S_INT"];
		$l[2]=$row["T_INT"];
		sort($l);
		$bot=$l[1]+$l[2];
	  //Updating Best OF 2 Internals into Database
	 $sql ="update marks set BOT=".$bot." where marks.USN='".$USN."'  AND marks.C_CODE='16IS5DCJAV'";
	 if ($db->query($sql) === TRUE) {  echo " ";} 
	 else {  echo "Error2: " . $sql . "<br>" . $db->error;}
	 
	 $fm=$bot+$row["QUIZ"]+$row["LAB"]+$row["S_STUDY"];
	 
	 
	 // Updating Final Marks into Database
	 $sql2="update marks set FINAL_MARKS=".$fm." where marks.USN='".$USN."'  AND marks.C_CODE='16IS5DCJAV'";
	 if ($db->query($sql2) === TRUE) {  echo " ";} 
	 else {  echo "Error3: " . $sql2 . "<br>" . $db->error;}
	 
     //Selecting Java Marks to display
      $sql = "SELECT *FROM marks WHERE marks.USN='".$USN."' AND marks.C_CODE='16IS5DCJAV'";
      $result = mysqli_query($db,$sql);
	  $row2 = mysqli_fetch_array($result,MYSQLI_ASSOC);
	  if (!$row2) 
	  {
		printf("Error4: %s\n", mysqli_error($db));
		
	  }  ?>
	<tr>
		<td><?php echo $row2["C_CODE"]; ?></td><td><?php echo $row2["F_INT"]; ?></td><td><?php echo $row2["S_INT"]; ?></td>
		<td><?php echo $row2["T_INT"]; ?></td><td><?php echo $row2["QUIZ"]; ?></td><td><?php echo $row2["LAB"]; ?></td>
		<td><?php echo $row2["S_STUDY"]; ?></td><td><?php echo $row2["FINAL_MARKS"]; ?></td><td><?php echo $bot; ?></td>
	</tr>
	  <?php } ?> 
	<?php            // DBMS DISPLAY
      $sql = "SELECT *FROM marks WHERE marks.USN='".$USN."' AND marks.C_CODE='16IS5DCDBM'";
      $result = mysqli_query($db,$sql);
	  $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
	  if (!$row) 
	  {
		echo "<tr><td colspan=9>DBMS marks have not been uploaded yet</td></tr>";
		
	  }  
	  else{
	     $l[0]=$row["F_INT"];
		 $l[1]=$row["S_INT"];
		 $l[2]=$row["T_INT"];
		 sort($l);
		 $bot=$l[1]+$l[2];
	  //Updating Best OF 2 Internals into Database
	 $sql ="update marks set BOT=".$bot." where marks.USN='".$USN."'  AND marks.C_CODE='16IS5DCDBM'";
	 if ($db->query($sql) === TRUE) {  echo " ";} 
	 else {  echo "Error: " . $sql . "<br>" . $db->error;}
	 
	 $fm=$bot+$row["QUIZ"]+$row["LAB"]+$row["S_STUDY"];
	 
	 // Updating Final Marks into Database
	 $sql2="update marks set FINAL_MARKS=".$fm." where marks.USN='".$USN."'  AND marks.C_CODE='16IS5DCDBM'";
	 if ($db->query($sql2) === TRUE) {  echo " ";} 
	 else {  echo "Error: " . $sql2 . "<br>" . $db->error;}
	
	//Selecting DBMS Marks to display
      $sql = "SELECT *FROM marks WHERE marks.USN='".$USN."' AND marks.C_CODE='16IS5DCDBM'";
      $result = mysqli_query($db,$sql);
	  $row2 = mysqli_fetch_array($result,MYSQLI_ASSOC);
	  if (!$row2) 
	  {
		printf("Error: %s\n", mysqli_error($db));
		exit();
	  }  ?>
	<tr>
		<td><?php echo $row2["C_CODE"]; ?></td><td><?php echo $row2["F_INT"]; ?></td><td><?php echo $row2["S_INT"]; ?></td>
		<td><?php echo $row2["T_INT"]; ?></td><td><?php echo $row2["QUIZ"]; ?></td><td><?php echo $row2["LAB"]; ?></td>
		<td><?php echo $row2["S_STUDY"]; ?></td><td><?php echo $row2["FINAL_MARKS"]; ?></td><td><?php echo $bot; ?></td>
 	</tr>
	  <?php } ?>	
	<?php          // DCN DISPLAY
      $sql = "SELECT *FROM marks WHERE marks.USN='".$USN."' AND marks.C_CODE='16IS5DCDCN'";
      $result = mysqli_query($db,$sql);
	  $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
	  if (!$row) 
	  {
		echo "<tr><td colspan=9>DCN marks have not been uploaded yet</td></tr>";
	  }  
	  else{
	     $l[0]=$row["F_INT"];
		 $l[1]=$row["S_INT"];
		 $l[2]=$row["T_INT"];
		 sort($l);
		 $bot=$l[1]+$l[2];
	  //Updating Best OF 2 Internals into Database
	 $sql ="update marks set BOT=".$bot." where marks.USN='".$USN."'  AND marks.C_CODE='16IS5DCDCN'";
	 if ($db->query($sql) === TRUE) {  echo " ";} 
	 else {  echo "Error: " . $sql . "<br>" . $db->error;}
	 
	 $fm=$bot+$row["QUIZ"]+$row["LAB"]+$row["S_STUDY"];
	 
	 // Updating Final Marks into Database
	 $sql2="update marks set FINAL_MARKS=".$fm." where marks.USN='".$USN."'  AND marks.C_CODE='16IS5DCDCN'";
	 if ($db->query($sql2) === TRUE) {  echo " ";} 
	 else {  echo "Error: " . $sql2 . "<br>" . $db->error;}
	 
	//Selecting DCN Marks to display
      $sql = "SELECT *FROM marks WHERE marks.USN='".$USN."' AND marks.C_CODE='16IS5DCDCN'";
      $result = mysqli_query($db,$sql);
	  $row2 = mysqli_fetch_array($result,MYSQLI_ASSOC);
	  if (!$row2) 
	  {
		printf("Error: %s\n", mysqli_error($db));
		exit();
	  }  ?>
	<tr>
		<td><?php echo $row2["C_CODE"]; ?></td><td><?php echo $row2["F_INT"]; ?></td><td><?php echo $row2["S_INT"]; ?></td>
		<td><?php echo $row2["T_INT"]; ?></td><td><?php echo $row2["QUIZ"]; ?></td><td><?php echo $row2["LAB"]; ?></td>
		<td><?php echo $row2["S_STUDY"]; ?></td><td><?php echo $row2["FINAL_MARKS"]; ?></td><td><?php echo $bot; ?></td>
	</tr>
	 <?php } ?>
	<?php           //  WEB DISPLAY
      $sql = "SELECT *FROM marks WHERE marks.USN='".$USN."' AND marks.C_CODE='16IS5DCWEP'";
      $result = mysqli_query($db,$sql);
	  $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
	  if (!$row) 
	  {
		echo "<tr><td colspan=9>WEB marks have not been uploaded yet</td></tr>";
	  }  
	  else{
		$l[0]=$row["F_INT"];
		$l[1]=$row["S_INT"];
		$l[2]=$row["T_INT"];
		sort($l);
		$bot=$l[1]+$l[2];
	  //Updating Best OF 2 Internals into Database
	 $sql ="update marks set BOT=".$bot." where marks.USN='".$USN."'  AND marks.C_CODE='16IS5DCWEP'";
	 if ($db->query($sql) === TRUE) {  echo " ";} 
	 else {  echo "Error: " . $sql . "<br>" . $db->error;}
	 
	 $fm=$bot+$row["QUIZ"]+$row["LAB"]+$row["S_STUDY"];
	 
	 // Updating Final Marks into Database
	 $sql2="update marks set FINAL_MARKS=".$fm." where marks.USN='".$USN."'  AND marks.C_CODE='16IS5DCWEP'";
	 if ($db->query($sql2) === TRUE) {  echo " ";} 
	 else {  echo "Error: " . $sql2 . "<br>" . $db->error;}
	 
     //Selecting WEP Marks to display
      $sql = "SELECT *FROM marks WHERE marks.USN='".$USN."' AND marks.C_CODE='16IS5DCWEP'";
      $result = mysqli_query($db,$sql);
	  $row2 = mysqli_fetch_array($result,MYSQLI_ASSOC);
	  if (!$row2) 
	  {
		printf("Error: %s\n", mysqli_error($db));
		exit();
	  }  ?>
	<tr>
		<td><?php echo $row2["C_CODE"]; ?></td><td><?php echo $row2["F_INT"]; ?></td><td><?php echo $row2["S_INT"]; ?></td>
		<td><?php echo $row2["T_INT"]; ?></td><td><?php echo $row2["QUIZ"]; ?></td><td><?php echo $row2["LAB"]; ?></td>
		<td><?php echo $row2["S_STUDY"]; ?></td><td><?php echo $row2["FINAL_MARKS"]; ?></td><td><?php echo $bot; ?></td>
	</tr>
	  <?php } ?>
	
	
	<?php           //  DM and AI DISPLAY
      $sql = "SELECT *FROM marks WHERE marks.USN='".$USN."' AND (marks.C_CODE='16IS5DCDMG' OR marks.C_CODE='16IS5DCAIN')";
      $result = mysqli_query($db,$sql);
	  $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
	  if (!$row) 
	  {
		echo "<tr><td colspan=9>DM/AI marks have not been uploaded yet</td></tr>";
	  } 
     else{  
	  //echo $row["C_CODE"];
	  if($row["C_CODE"]=="16IS5DCDMG")
	  {
			$l[0]=$row["F_INT"];
			$l[1]=$row["S_INT"];
			$l[2]=$row["T_INT"];
			$bot=$row["BOT"];
			$fm=$row["FINAL_MARKS"];
			
			//Updating Best OF 2 Internals into Database
			$sql ="update marks set BOT=".$bot." where marks.USN='".$USN."'  AND marks.C_CODE='16IS5DCDMG'";
			if ($db->query($sql) === TRUE) { // echo "a ";
			} 
			else {  echo "Error2: " . $sql . "<br>" . $db->error;}
	 
			//$fm=$bot+$row["QUIZ"]+$row["LAB"]+$row["S_STUDY"];
	 $q[0]=$row["QUIZ"];
	 $q[1]=$row["LAB"];
	 $q[2]=$row["S_STUDY"];
	
			// Updating Final Marks into Database
			$sql2="update marks set FINAL_MARKS=".$fm." where marks.USN='".$USN."'  AND marks.C_CODE='16IS5DCDMG'";
			if ($db->query($sql2) === TRUE) {  //echo " b";
			} 
			else {  echo "Error3: " . $sql2 . "<br>" . $db->error;}
	 
			//Selecting DM Marks to display
			$sql = "SELECT *FROM marks WHERE marks.USN='".$USN."' AND marks.C_CODE='16IS5DCDMG'";
			$result = mysqli_query($db,$sql);
			$row2 = mysqli_fetch_array($result,MYSQLI_ASSOC);
			if (!$row2) 
			{
					printf("Error4: %s\n", mysqli_error($db));
					exit();
			}  ?>
			<tr>
				<td><?php echo $row2["C_CODE"]; ?></td><td><?php echo $row2["F_INT"]; ?></td><td><?php echo $row2["S_INT"]; ?></td>
				<td><?php echo $row2["T_INT"]; ?></td><td><?php echo $row2["QUIZ"]; ?></td><td><?php echo $row2["LAB"]; ?></td>
				<td><?php echo $row2["S_STUDY"]; ?></td><td><?php echo $row2["FINAL_MARKS"]; ?></td><td><?php echo $row2["BOT"]; ?></td>
			</tr>
	  
			<?php }
			else if($row["C_CODE"]=="16IS5DCAIN")
			{
			$l[0]=$row["F_INT"];
			$l[1]=$row["S_INT"];
			$l[2]=$row["T_INT"];
			sort($l);
			$bot=$l[1]+$l[2];
			//Updating Best OF 2 Internals into Database
			$sql ="update marks set BOT=".$bot." where marks.USN='".$USN."'  AND marks.C_CODE='16IS5DCAIN'";
			if ($db->query($sql) === TRUE) {  echo "c ";} 
			else {  echo "Error5: " . $sql . "<br>" . $db->error;}
	 
			$fm=$bot+$row["QUIZ"]+$row["LAB"]+$row["S_STUDY"];
	 
			// Updating Final Marks into Database
			$sql2="update marks set FINAL_MARKS=".$fm." where marks.USN='".$USN."'  AND marks.C_CODE='16IS5DCAIN'";
			if ($db->query($sql2) === TRUE) {  echo "d ";} 
			else {  echo "Error6: " . $sql2 . "<br>" . $db->error;}
	 
			//Selecting AI Marks to display
			$sql = "SELECT *FROM marks WHERE marks.USN='".$USN."' AND marks.C_CODE='16IS5DCAIN'";
			$result = mysqli_query($db,$sql);
			$row2 = mysqli_fetch_array($result,MYSQLI_ASSOC);
			if (!$row2) 
			{
					echo "Error7:" .$sql. "<br>" .mysqli_error($db);;
					exit();
			}  ?>
			<tr>
				<td><?php echo $row2["C_CODE"]; ?></td><td><?php echo $row2["F_INT"]; ?></td><td><?php echo $row2["S_INT"]; ?></td>
				<td><?php echo $row2["T_INT"]; ?></td><td><?php echo $row2["QUIZ"]; ?></td><td><?php echo $row2["LAB"]; ?></td>
				<td><?php echo $row2["S_STUDY"]; ?></td><td><?php echo $row2["FINAL_MARKS"]; ?></td><td><?php echo $bot; ?></td>
			</tr>
			<?php }
	 }?>		
	</table>
  </body>
 </html>	