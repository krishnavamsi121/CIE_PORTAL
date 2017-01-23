<?php
session_start();
$k=$_GET["f"];	
?>
<html>
<head>
<title>DBMS</title>
<link href="login.css" rel="stylesheet" type="text/css">
<style>
body{
   background:url("2.jpg");
   background-size: cover;
   background-repeat: no-repeat;
    background-attachment: fixed;
	
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
<?php 
if($k==2){
?>
alert("Username Or Password is wrong");
<?php } ?>
</script>
</head>
<body background="C:\Users\Achutha K\Downloads\kohli\bmsbg.jpg">

<form action="action_page.php" method="POST" >
  <div class="imgcontainer">
    <h3>BMSCE CIE PORTAL</h3>
  </div>

  <div class="container">
    
    <input type="text" placeholder="Enter Username" id="uname" name="uname"  required><br/>

    
    <input type="password" placeholder="Enter Password" id="psw" name="psw" required><br/>

    <button type="submit" class="button button1">Login</button>
    <input type="checkbox" checked="checked"> Remember me
  </div>

</form>
</body></html>
