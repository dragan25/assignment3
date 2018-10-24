<?php 
require "../config.php";
if(!isset($_POST['tbUsername'])||!isset($_POST['tbPassword'])){
	die("Invalid parameters!");
}
// $username = $_POST['tbUsername'];
// $password = $_POST['tbPassword'];

// $username = str_replace("'","",$username);
// $username = str_replace("-","",$username);
// $password = str_replace("'","",$password);
// $password = str_replace("-","",$password);

// $conn = mysqli_connect(DBHOST,DBUSER,DBPASS,DB);
// $q = "select * from users where username = '{$username}' and password = '{$password}' limit 1";
// $res = mysqli_query($conn,$q);
// $user = mysqli_fetch_object($res);
// if($user){
	// session_start();
	// $_SESSION['username'] = $user->username;
	// header("Location: index.php");
// } else {
	// echo "Invalid user.";
// }


/*ILI: */


// if(isset($_POST['btnSubmit'])) {
	$username = $_POST['tbUsername'];
	$password = $_POST['tbPassword'];
	$username = str_replace("'","",$username);
	$username = str_replace("-","",$username);
	$password = str_replace("'","",$password);
	$password = str_replace("-","",$password);
	$conn = mysqli_connect(DBHOST,DBUSER,DBPASS,DB);
	$q = "SELECT * FROM users WHERE username='$username' and password='$password' limit 1";
	$res = mysqli_query($conn, $q);
	if(mysqli_num_rows($res) > 0) {
			if($row = $res->fetch_assoc()){
				session_start();
				$_SESSION['username'] = $row['username'];    
				header("Location: index.php");
			}
		} else {
		echo "Invalid user!";
	}
// }

