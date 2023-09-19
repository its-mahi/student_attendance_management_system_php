<?php

ob_start();
session_start();

if($_SESSION['name']!='oasis')
{
  header('location: ../index.php');
}
?>

<!DOCTYPE html>
<html lang="en">

<!-- head started -->
<head>
<title>Attendance Management System</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../css/main.css">

</head>
<!-- head ended -->

<!-- body started -->
<body>

<!-- Menus started-->
<header>

  <h1>Attendance Management System</h1>
  <div class="navbar">
  <a href="index.php" style="text-decoration:none;">Home</a>
  <a href="students.php" style="text-decoration:none;">Students</a>
  <a href="report.php" style="text-decoration:none;">Report Section</a>
  <a href="account.php" style="text-decoration:none;">My Account</a>
  <a href="../logout.php" style="text-decoration:none;">Logout</a>

</div>

</header>
<!-- Menus ended -->

<center>

<!-- Content, Tables, Forms, Texts, Images started -->
<div class="row">
    <div class="content">
    
    <img src="../img/att.png" width="400px" />

  </div>

</div>
<!-- Contents, Tables, Forms, Images ended -->

</center>

</body>
<!-- Body ended  -->

</html>
