<?php 
error_reporting(0);
$db = mysqli_connect("localhost","root","","cie");
   
   if (!$db) {
    die('Connect Error: ' . mysqli_connect_error());
}

 $usn=$_GET['usn'];
 if($usn=="roopar@bmsce.ac.in")
	$code="16IS5DCDBM";
else if($usn=="sindhuk@bmsce.ac.in")
	$code="16IS5DCJAV";
else if($usn=="nalinimk@bmsce.ac.in")
	$code="16IS5DCDCN";
else if($usn=="mamathabr@bmsce.ac.in")
	$code="16IS5DCDMG";
else if($usn=="gururajahs@bmsce.ac.in")
	$code="16IS5DCAIN";
else if($usn=="rajeshwarik@bmsce.ac.in")
	$code="16IS5DCWEP";
	?>
	<!DOCTYPE html>
	<head>
	<style>
	   
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
	font-size:25px;
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
	 </head>
	 <body>
	<table border="2">
<tr>
		<th>USN</th>
		<th>Course Code</th>
		<th>First Internals</th>
		<th>Second Internals</th>
		<th>Third Internals</th>
		<th>Quiz</th>
		<th>Lab</th>
		<th>Self Study</th>
		<th>Final Marks</th>
		<th>Best Of Two</th>
		</tr>
	
 
<?php
// run query
$sql="select * from marks where marks.C_CODE='".$code."';";
$res = mysqli_query($db,$sql);

while($row1 = mysqli_fetch_assoc($res)){


  // add each row returned into an array
  $array[] = $row1["USN"];
// echo $row1["USN"]."<br>";
}
//$keys=array_keys($array);

foreach($array as $value)
{
      $sql = "SELECT *FROM marks WHERE marks.USN='".$value."' AND  marks.C_CODE='".$code."' ";
      $result = mysqli_query($db,$sql);
	  $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
	  //echo $sql;
	  if (!$row) 
	  {
		printf( mysqli_error($db));
		exit();
	  }  
		$l[0]=$row["F_INT"];
		$l[1]=$row["S_INT"];
		$l[2]=$row["T_INT"];
		//foreach($row as $col=>$m)
		for($i=0;$i<3;$i++)
		{
			$int=(int)$l[$i];
			$dec=$l[$i]-$int;
			if($dec<"0.50")
				{//echo "less :" .$dec;
				$dec=0.00;
				$int=$int+$dec;
				$l[$i]=$int;//echo "less i :".$l[$i]."<br/>";
				}
			else { //echo "<br/>More :".$dec;
				$dec=1.00;
			$dec=$dec; 
			$int=$int+$dec;
			$l[$i]=$int;//echo "more i".$l[$i]."<br/>";
			}
			
		//	echo $int."\n\n\n\n\n".$dec."<br/>";
		}
	//	echo $l[0],$l[1],$l[2]."<br/>";
		sort($l);
		//	echo $l[0],$l[1],$l[2]."<br/>";
		$bot=$l[1]+$l[2];
		//echo $bot."<br/>";
		
	  //Updating Best OF 2 Internals into Database
	 $sql ="update marks set marks.BOT=".$bot." where marks.C_CODE='".$code."'  AND marks.USN='".$value."' ";	
	 if ($db->query($sql) === TRUE) {  echo " ";} 
	 else {  echo "Error1: " . $sql . "<br>" . $db->error;}
	 //echo $sql."<br/>";
	 $q[0]=$row["QUIZ"];
	 $q[1]=$row["LAB"];
	 $q[2]=$row["S_STUDY"];
	 for($i=0;$i<3;$i++)
		{
			$int=(int)$q[$i];
			$dec=$q[$i]-$int;
			if($dec<"0.50")
				{//echo "less :" .$dec;
				$dec=0.00;
				$int=$int+$dec;
				$q[$i]=$int;//echo "less i :".$l[$i]."<br/>";
				}
			else { //echo "<br/>More :".$dec;
				$dec=1.00;
			$dec=$dec; 
			$int=$int+$dec;
			$q[$i]=$int;//echo "more i".$l[$i]."<br/>";
			}}
	 //$fm=$bot+$row["QUIZ"]+$row["LAB"]+$row["S_STUDY"];
	// echo $q[0],$q[1],$q[2];
	 $fm=$bot+$q[0]+$q[1]+$q[2];
	 //echo $fm;
	 // Updating Final Marks into Database
	 $sql2="update marks set FINAL_MARKS=".$fm." where marks.C_CODE='".$code."' AND marks.USN='".$value."'   ";
	 if ($db->query($sql2) === TRUE) {  echo " ";} 
	 else {  echo "Error2: " . $sql2 . "<br>" . $db->error;}
	 
     //Selecting Marks to display
      $sql = "SELECT *FROM marks WHERE 	marks.USN='".$value."' AND marks.C_CODE='".$code."' ";
      $result =mysqli_query($db,$sql);
	  $row2 = mysqli_fetch_array($result,MYSQLI_ASSOC);
	  if (!$row2) 
	  {
		printf("Error3: %s\n", mysqli_error($db));
		exit();
	  }  ?>
	
		<tr>
		<td><?php echo $row2["USN"]; ?></td>
		<td><?php echo $row2["C_CODE"]; ?></td><td><?php echo $row2["F_INT"]; ?></td><td><?php echo $row2["S_INT"]; ?></td>
		<td><?php echo $row2["T_INT"]; ?></td><td><?php echo $row2["QUIZ"]; ?></td><td><?php echo $row2["LAB"]; ?></td>
		<td><?php echo $row2["S_STUDY"]; ?></td><td><?php echo $row2["FINAL_MARKS"]; ?></td><td><?php echo $row2["BOT"]; ?></td>
		</tr><?php } ?>
	</table>
</body>
</html>