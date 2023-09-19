<?php

if(isset($_POST['login']))
{
	//start of try block

	try{

		//checking empty fields
		if(empty($_POST['username'])){
			throw new Exception("Username is required!");
			
		}
		if(empty($_POST['password'])){
			throw new Exception("Password is required!");
			
		}
		//establishing connection with db and things
		include ('connect.php');
		
		//checking login info into database
		$row=0;
		$result=mysqli_query($link, "SELECT * FROM admininfo WHERE username='$_POST[username]' AND password='$_POST[password]' AND type='$_POST[type]'");

		$row=mysqli_num_rows($result);

		if($row>0 && $_POST["type"] == 'teacher'){
			session_start();
			$_SESSION['name']="oasis";
			header('location: teacher/index.php');
		}

		else if($row>0 &&  $_POST["type"] == 'student'){
			session_start();
			$_SESSION['name']="oasis";
			header('location: student/index.php');
		}

		else if($row>0 && $_POST["type"] == 'admin'){
			session_start();
			$_SESSION['name']="oasis";
			header('location: admin/index.php');
		}

		else{
			throw new Exception("Username,Password or Role is wrong, try again!");
			
			header('location: login.php');
		}
	}

	//end of try block
	catch(Exception $e){
		$error_msg=$e->getMessage();
	}
	//end of try-catch
}

?>

<!DOCTYPE html>
<html>
<head>

	<title>Attendance Calculator</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >

</head>

<body>
	<center>

<header>

  <h1 style="font-family:verdana; color:blue">Attendance Calculator</h1>

</header>
<br><br>
<h3>Login Panel</h3>

<?php
//printing error message
if(isset($error_msg))
{
	echo $error_msg;
}
?>

<!-- Old Version -->
<!-- 
<form action="" method="post">
	
	<table>
		<tr>
			<td>Username </td>
			<td><input type="text" name="username"></input></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="password"></input></td>
		</tr>
		<tr>
			<td>Role</td>
			<td>
			<select name="type">
				<option name="teacher" value="teacher">Teacher</option>
				<option name="student" value="student">Student</option>
				<option name="admin" value="admin">Admin</option>
			</select>
			</td>
		</tr>
		<tr><td><br></td></tr>
		<tr>
			<td><button><input type="submit" name="login" value="Login"></input></button></td>
			<td><button><input type="reset" name="reset" value="Reset"></button></td>
		</tr>
	</table>
</form>
-->
<div class="content">
	<div class="row">

		<form method="post" class="form-horizontal col-md-6 col-md-offset-3">
			<div class="form-group">
			    <label for="input1" class="col-sm-3 control-label">Username :</label>
			    <div class="col-sm-7">
			      <input type="text" name="username"  class="form-control" id="input1" placeholder="Your Username" />
			    </div>
			</div>

			<div class="form-group">
			    <label for="input1" class="col-sm-3 control-label">Password :</label>
			    <div class="col-sm-7">
			      <input type="password" name="password"  class="form-control" id="input1" placeholder="Your Password" />
			    </div>
			</div>


			<div class="form-group" class="radio">
			<label for="input1" class="col-sm-3 control-label">Login As:</label>
			<div class="col-sm-6"><br>
			  <label>
			    <input type="radio" name="type" id="optionsRadios1" value="admin" checked> Admin &nbsp
			  </label>
			  	  <label>
			    <input type="radio" name="type" id="optionsRadios1" value="teacher"> Teacher  &nbsp
			  </label>
			  <label>
			    <input type="radio" name="type" id="optionsRadios1" value="student"> Student 
			  </label>
			</div>
			</div><br>
			<input type="submit" class="btn btn-success col-md-2 col-md-offset-5" style="border-radius:0%" value="Login" name="login" />
		</form>
	</div>
</div>

<p><strong><a href="reset.php" style="text-decoration:none;">Reset Password</a></strong></p>
<p><strong><a href="signup.php" style="text-decoration:none;">Create New Account</a></strong></p>

</center>
</body>
</html>	