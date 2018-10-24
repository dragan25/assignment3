<?php 
session_start();
if(!isset($_SESSION['username'])||$_SESSION['username']!='admin'){
	//die("Invalid access!");
	header("Location: index.html");  //umjesto gubljenja vremena i ispisivanja poruke da smo neovlasteni kosrisnik, redirektiramo se na login stranu
}
require "../config.php";
$conn = mysqli_connect(DBHOST,DBUSER,DBPASS,DB);
$selected_id = -1;
$selected_name = "";
$selected_description = "";

if(isset($_GET['cid'])) {
	$q = mysqli_query($conn, "select * from categories where id_category = {$_GET['cid']}");
	$rw = mysqli_fetch_object($q);
	if($rw){
		$selected_id = $rw->id_category;
		$selected_name = $rw->name;
		$selected_description = $rw->description;
	}
}

if(isset($_POST['btn_insert'])) {
	$selected_name = $_POST['tb_name'];
	$selected_description = $_POST['tb_description'];
	mysqli_query($conn, "Insert into categories values (null, '{$selected_name}', '{$selected_description}')");
	$selected_id = mysqli_insert_id($conn);
}	
if(isset($_POST['btn_update'])) {
	$selected_name = $_POST['tb_name'];
	$selected_description = $_POST['tb_description'];
	$selected_id = $_POST['selCategory'];
	mysqli_query($conn, "Update categories set name='{$selected_name}', description='{$selected_description}' where id_category = {$selected_id}");
}
if(isset($_POST['btn_delete'])) {
	$selected_id = $_POST['tb_name'];
	mysqli_query($conn, "delete from categories where name = '{$selected_name}'");
}	
?>
<form method="post" action="">
<?php 
$q = mysqli_query($conn, "select * from categories");
?>
<select onchange="window.location='?cid='+this.value" name="selCategory">  <!-- malo js-a -->
<option value="-1">Select category</option>
<?php 
while($rw=mysqli_fetch_object($q)){
	echo "<option " . ($selected_id==$rw->id_category?"selected":"") . " value='{$rw->id_category}'>{$rw->name}</option>";
}
?>
</select>
<br>
Name:<br>
<input type="text" name="tb_name" value="<?php echo $selected_name; ?>">
<br>
Description:<br>
<input type="text" name="tb_description" value="<?php echo $selected_description; ?>">
<br><br>
<input type="submit" name="btn_insert" value="Add new">
<input type="submit" name="btn_update" value="Update">
<input type="submit" name="btn_delete" value="Delete">
</form>